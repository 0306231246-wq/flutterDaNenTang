<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\Product;
use Illuminate\Support\Str;
class ProductSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $faker = \Faker\Factory::create();

        for ($i = 1; $i <= 100; $i++) {
            $sku = 'SKU-' . strtoupper(Str::random(8));
            $name = ucfirst($faker->words(3, true));
            $price = $faker->randomFloat(2, 10, 2000);
            // Use picsum.photos for sample images; specify seed by id to get stable image
            $imageId = 100 + $i; // ensure variety
            $imageUrl = "https://picsum.photos/id/{$imageId}/600/400";

            Product::create([
                'sku' => $sku,
                'name' => $name,
                'price' => $price,
                'short_description' => $faker->sentence(10),
                'image' => $imageUrl,
            ]);
        }
    }
}
