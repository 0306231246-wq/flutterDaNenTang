<?php

namespace App\Models;

namespace App\Models;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Tymon\JWTAuth\Contracts\JWTSubject;

class User extends Authenticatable implements JWTSubject {
    protected $fillable = ['fullname','username','password','gender','dob'];
    protected $hidden = ['password'];

    // JWTSubject methods
    public function getJWTIdentifier() { return $this->getKey(); }
    public function getJWTCustomClaims() { return []; }
}