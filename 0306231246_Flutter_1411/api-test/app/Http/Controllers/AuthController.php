<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use Illuminate\Support\Facades\Hash;
use Tymon\JWTAuth\Facades\JWTAuth;
use Tymon\JWTAuth\Exceptions\JWTException;
use Validator;


class AuthController extends Controller
{
    /**
     * @OA\Post(
     *     path="/api/user/register",
     *     tags={"Auth"},
     *     summary="Register new user",
     *     @OA\RequestBody(
     *         required=true,
     *         @OA\JsonContent(
     *             required={"name","username","password"},
     *             @OA\Property(property="fullname", type="string", example="Nguyen Van A"),
     *             @OA\Property(property="username", type="string", example="nguyena"),
     *             @OA\Property(property="password", type="string", example="secret123"),
     *             @OA\Property(property="gender", type="string", example="male"),
     *             @OA\Property(property="dob", type="string", format="date", example="1990-01-01")
     *         )
     *     ),
     *     @OA\Response(
     *         response=201,
     *         description="Registered — returns success status and message",
     *         @OA\JsonContent(
     *             @OA\Property(property="success", type="boolean"),
     *             @OA\Property(property="message", type="string")
     *         )
     *     ),
     *     @OA\Response(response=422, description="Validation error",
     *         description="Registered — returns success status and message",
     *         @OA\JsonContent(
     *             @OA\Property(property="success", type="boolean"),
     *             @OA\Property(property="errors", type="string")
     *         )
     *     )
     * )
     */
    public function register(Request $req) {
        $validator = Validator::make($req->all(), [
            'fullname'=>'required|string|max:255',
            'username'=>'required|string|max:50|unique:users,username',
            'password'=>'required|string|min:6',
            'gender'=>'nullable|in:male,female,other',
            'dob'=>'nullable|date_format:Y-m-d',
        ]);
        if ($validator->fails()) {
            return response()->json([
                'success'   =>  false,
                'errors'    => $validator->errors()
            ], 422);
        }

        $user = User::create([
            'fullname'  =>  $req->fullname,
            'username'  =>  $req->username,
            'password'  =>  Hash::make($req->password),
            'gender'    =>  $req->gender,
            'dob'       =>  $req->dob
        ]);

        return response()->json([
            'success'   =>  true,
            'message'   =>  'Register new user successfully!'
        ], 201);
    }

    /**
     * @OA\Post(
     *     path="/api/user/login",
     *     tags={"Auth"},
     *     summary="Login user",
     *     @OA\RequestBody(
     *         required=true,
     *         @OA\JsonContent(
     *             required={"username","password"},
     *             @OA\Property(property="username", type="string", example="nguyena"),
     *             @OA\Property(property="password", type="string", example="secret123")
     *         )
     *     ),
     *     @OA\Response(
     *         response=200,
     *         description="Login success",
     *         @OA\JsonContent(
     *             @OA\Property(property="success", type="boolean"),
     *             @OA\Property(property="token", type="string")
     *         )
     *     ),
     *     @OA\Response(response=401, description="Invalid credentials")
     * )
     */
    public function login(Request $req) {
        $credentials = $req->only('username','password');
        try {
            if (! $token = JWTAuth::attempt($credentials)) {
                return response()->json([
                    'success'   =>  false,
                    'error'     =>  'invalid_credentials'
                ], 401);
            }
        } catch (JWTException $e) {
            return response()->json([
                'success'   =>  false,
                'error'=>'could_not_create_token'
            ], 500);
        }
        $user = auth()->user();
        return response()->json([
            'success'   =>  true,
            'access_token'=>$token
        ], 200);
    }

    /**
     * @OA\Post(
     *     path="/api/user/logout",
     *     tags={"Auth"},
     *     summary="Logout (invalidate token)",
     *     security={{"bearerAuth":{}}},
     *     @OA\Response(response=200, description="Logged out successfully"),
     *     @OA\Response(response=400, description="Failed to logout")
     * )
     *
     * @OA\SecurityScheme(
     *   type="http",
     *   scheme="bearer",
     *   bearerFormat="JWT",
     *   securityScheme="bearerAuth"
     * )
     */
    public function logout(Request $req) {
        try {
            JWTAuth::parseToken()->invalidate();
            return response()->json([
                'success'   =>  true,
                'message'=>'Logged out successfully'
            ]);
        } catch (JWTException $e) {
            return response()->json([
                'success'   =>  false,
                'error'=>'Failed to logout, token invalid'
            ], 400);
        }
    }

    /**
     * @OA\Get(
     *     path="/api/user/profile",
     *     tags={"Auth"},
     *     summary="Get profile (protected)",
     *     security={{"bearerAuth":{}}},
     *     @OA\Response(response=200, description="User profile"),
     *     @OA\Response(response=401, description="Unauthorized")
     * )
     */
    public function profile() {
        return response()->json([
            'success'   =>  true,
            'user' => auth()->user()
        ]);
    }
}
