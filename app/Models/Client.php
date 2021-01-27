<?php

namespace App\Models;

use Eloquent as Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Database\Eloquent\Factories\HasFactory;

/**
 * Class Client
 * @package App\Models
 * @version January 15, 2021, 2:45 pm UTC
 *
 * @property string $name
 * @property string $email
 * @property string $phone
 * @property string $msg_subject
 * @property string $message
 * @property boolean $subscribed
 * @property boolean $enquiry
 * @property boolean $info
 */
class Client extends Model
{
    use SoftDeletes;

    use HasFactory;

    public $table = 'clients';

    const CREATED_AT = 'created_at';
    const UPDATED_AT = 'updated_at';


    protected $dates = ['deleted_at'];



    public $fillable = [
        'email',
        'phone',
        'message',
        'subscribed',
        'enquiry',
        'info'
    ];

    /**
     * The attributes that should be casted to native types.
     *
     * @var array
     */
    protected $casts = [
        'id' => 'integer',
        'name' => 'string',
        'email' => 'string',
        'phone' => 'string',
        'msg_subject' => 'string',
        'message' => 'string',
        'subscribed' => 'boolean',
        'enquiry' => 'boolean',
        'info' => 'boolean'
    ];

    /**
     * Validation rules
     *
     * @var array
     */
    public static $rules = [
        'name' => 'nullable|string|max:255',
        'email' => 'nullable|string|max:255',
        'phone' => 'nullable|string|max:255',
        'msg_subject' => 'nullable|string|max:255',
        'message' => 'nullable|string',
        'subscribed' => 'required|boolean',
        'enquiry' => 'required|boolean',
        'info' => 'required|boolean',
        'deleted_at' => 'nullable',
        'created_at' => 'nullable',
        'updated_at' => 'nullable'
    ];


}
