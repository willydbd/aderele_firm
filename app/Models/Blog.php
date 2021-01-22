<?php

namespace App\Models;

use Eloquent as Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Database\Eloquent\Factories\HasFactory;

/**
 * Class Blog
 * @package App\Models
 * @version January 15, 2021, 2:43 pm UTC
 *
 * @property integer $category_id
 * @property string $author
 * @property integer $publisher
 * @property string $title
 * @property string $slug
 * @property string $body
 * @property string $photo
 * @property boolean $status
 */
class Blog extends Model
{
    use SoftDeletes;

    use HasFactory;

    public $table = 'blogs';
    
    const CREATED_AT = 'created_at';
    const UPDATED_AT = 'updated_at';


    protected $dates = ['deleted_at'];



    public $fillable = [
        'category_id',
        'author',
        'publisher',
        'title',
        'slug',
        'body',
        'photo',
        'status'
    ];

    /**
     * The attributes that should be casted to native types.
     *
     * @var array
     */
    protected $casts = [
        'id' => 'integer',
        'category_id' => 'integer',
        'author' => 'string',
        'publisher' => 'integer',
        'title' => 'string',
        'slug' => 'string',
        'body' => 'string',
        'photo' => 'string',
        'status' => 'boolean'
    ];

    /**
     * Validation rules
     *
     * @var array
     */
    public static $rules = [
        'category_id' => 'nullable|integer',
        'author' => 'nullable|string|max:255',
        'publisher' => 'nullable|integer',
        'title' => 'required|string|max:255',
        'slug' => 'nullable|string|max:255',
        'body' => 'required|string',
        'photo' => 'nullable|string|max:255',
        'status' => 'required|boolean',
        'deleted_at' => 'nullable',
        'created_at' => 'nullable',
        'updated_at' => 'nullable'
    ];
    /**
     * Get the categories that this blog belongs
     */
    public function category()
    {
        return $this->belongsTo('App\Models\Category');
    }
    /**
     * Define the manyToMany relationship for blog. and tags
     */
    public function tags()
    {
        return $this->belongsToMany('App\Models\Tag');
    }

    
}
