<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests\StoreOrderRequest;
use App\Models\Product;
use App\Models\Order;
class ProductController extends Controller
{
    /**
     * @OA\Get(
     *     path="/api/products",
     *     tags={"Product"},
     *     summary="Lấy danh sách sản phẩm",
     *     security={{"bearerAuth":{}}},
     *     @OA\Response(response=200, description="OK")
     * )
     */
    public function index(Request $request)
    {
        $products = Product::all();
        return response()->json([
            'success' => true,
            'data' => $products
        ], 200);
    }

    /**
     * @OA\Get(
     *     path="/api/product/{id}",
     *     tags={"Product"},
     *     summary="Lấy chi tiết sản phẩm theo id",
     *     security={{"bearerAuth":{}}},
     *     @OA\Parameter(
     *         name="id",
     *         in="path",
     *         required=true,
     *         @OA\Schema(type="integer")
     *     ),
     *     @OA\Response(response=200, description="OK"),
     *     @OA\Response(response=404, description="Not found")
     * )
     */
    public function show($id)
    {
        $product = Product::find($id);
        if (empty($product)) {
            return response()->json([
                'success' => false,
                'error' => "San pham khong ton tai!"
            ], 404);
        }

        return response()->json([
            'success' => true,
            'data' => $product
        ], 200);
    }

    /**
     * @OA\Post(
     *     path="/api/orders",
     *     tags={"Order"},
     *     summary="Đặt hàng",
     *     security={{"bearerAuth":{}}},
     *     @OA\RequestBody(
     *         required=true,
     *         @OA\MediaType(
     *             mediaType="application/json",
     *             @OA\Schema(
     *                 @OA\Property(property="user_id", type="integer"),
     *                 @OA\Property(
     *                     property="items",
     *                     type="array",
     *                     @OA\Items(
     *                         @OA\Property(property="product_id", type="integer"),
     *                         @OA\Property(property="qty", type="integer")
     *                     )
     *                 )
     *             )
     *         )
     *     ),
     *     @OA\Response(response=201, description="Created"),
     *     @OA\Response(response=422, description="Validation error")
     * )
     */
    public function storeOrder(StoreOrderRequest $request)
    {
        $data = $request->validated();

        $items = [];
        $total = 0;

        foreach ($data['items'] as $it) {
            $product = Product::findOrFail($it['product_id']);
            $linePrice = $product->price * $it['qty'];
            $items[] = [
                'product_id' => $product->id,
                'sku' => $product->sku,
                'name' => $product->name,
                'qty' => $it['qty'],
                'price' => (int)$product->price,
                'line_total' => (int)$linePrice,
            ];
            $total += $linePrice;
        }

        $order = Order::create([
            'user_id'   => auth()->user()->id,
            'items'     => $items,
            'total'     => $total,
        ]);

        return response()->json([
            'success'   => true,
            'message'   => 'Order created', 
            'order_id'  => $order->id
        ], 201);
    }
}
