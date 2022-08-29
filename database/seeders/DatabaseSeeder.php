<?php

namespace Database\Seeders;

use App\Models\Jk;
use App\Models\Post;
use App\Models\User;
use App\Models\Jenistb;
use App\Models\Category;
use App\Models\Kecamatan;
use App\Models\Pasien;
use Illuminate\Support\Str;
use Illuminate\Database\Seeder;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {

        User::create([
            'name' => 'Rijalul Arif',
            'username' => 'rijalularif',
            'email' => 'rijalul.arif@gmail.com',
            'email_verified_at' => now(),
            'password' => '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', // password
            'remember_token' => Str::random(10),
        ]);

        Category::create([
            'name' => 'Web Programming',
            'slug' => 'web-programming'
        ]);

        Category::create([
            'name' => 'Web Design',
            'slug' => 'web-design'
        ]);

        Category::create([
            'name' => 'Personal',
            'slug' => 'personal'
        ]);

        Post::factory(20)->create();

        Kecamatan::factory(27)->create();

        Pasien::factory(100)->create();

        Jenistb::create([
            'nama_jenistb' => 'TB Paru'
        ]);

        Jenistb::create([
            'nama_jenistb' => 'TB Ekstra Paru'
        ]);

        Jk::create([
            'nama_jk' => 'Laki laki'
        ]);

        Jk::create([
            'nama_jk' => 'Perempuan'
        ]);
    }
}
