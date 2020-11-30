<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class category extends Model
{
    protected $table = "categorie";
    protected $fillable = ["cat_title","cat_description"];
}
