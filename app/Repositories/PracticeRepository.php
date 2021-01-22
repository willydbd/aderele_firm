<?php

namespace App\Repositories;

use App\Models\Practice;
use App\Repositories\BaseRepository;

/**
 * Class PracticeRepository
 * @package App\Repositories
 * @version January 21, 2021, 8:49 pm UTC
*/

class PracticeRepository extends BaseRepository
{
    /**
     * @var array
     */
    protected $fieldSearchable = [
        'name',
        'description'
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
        return Practice::class;
    }
}
