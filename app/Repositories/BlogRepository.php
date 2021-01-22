<?php

namespace App\Repositories;

use App\Models\Blog;
use App\Repositories\BaseRepository;

/**
 * Class BlogRepository
 * @package App\Repositories
 * @version January 15, 2021, 2:43 pm UTC
*/

class BlogRepository extends BaseRepository
{
    /**
     * @var array
     */
    protected $fieldSearchable = [
        'category_id',
        'author',
        'publisher',
        'title',
        'tags',
        'body',
        'photo',
        'status'
    ];

    /**
     * Return searchable fields
     *
     * @return array
     */
    public function getFieldsSearchable()
    {
        return $this->fieldSearchable;
    }

    /**
     * Configure the Model
     **/
    public function model()
    {
        return Blog::class;
    }
}
