<?php

namespace App\Http\Controllers;

use App\Http\Requests\CreatePracticeRequest;
use App\Http\Requests\UpdatePracticeRequest;
use App\Repositories\PracticeRepository;
use App\Http\Controllers\AppBaseController;
use Illuminate\Http\Request;
use Flash;
use Response;

class PracticeController extends AppBaseController
{
    /** @var  PracticeRepository */
    private $practiceRepository;

    public function __construct(PracticeRepository $practiceRepo)
    {
        $this->practiceRepository = $practiceRepo;
    }

    /**
     * Display a listing of the Practice.
     *
     * @param Request $request
     *
     * @return Response
     */
    public function index(Request $request)
    {
        $practices = $this->practiceRepository->all();

        return view('practices.index')
            ->with('practices', $practices);
    }

    /**
     * Show the form for creating a new Practice.
     *
     * @return Response
     */
    public function create()
    {
        return view('practices.create');
    }

    /**
     * Store a newly created Practice in storage.
     *
     * @param CreatePracticeRequest $request
     *
     * @return Response
     */
    public function store(CreatePracticeRequest $request)
    {
        $input = $request->all();

        $practice = $this->practiceRepository->create($input);

        Flash::success('Practice saved successfully.');

        return redirect(route('practices.index'));
    }

    /**
     * Display the specified Practice.
     *
     * @param int $id
     *
     * @return Response
     */
    public function show($id)
    {
        $practice = $this->practiceRepository->find($id);

        if (empty($practice)) {
            Flash::error('Practice not found');

            return redirect(route('practices.index'));
        }

        return view('practices.show')->with('practice', $practice);
    }

    /**
     * Show the form for editing the specified Practice.
     *
     * @param int $id
     *
     * @return Response
     */
    public function edit($id)
    {
        $practice = $this->practiceRepository->find($id);

        if (empty($practice)) {
            Flash::error('Practice not found');

            return redirect(route('practices.index'));
        }

        return view('practices.edit')->with('practice', $practice);
    }

    /**
     * Update the specified Practice in storage.
     *
     * @param int $id
     * @param UpdatePracticeRequest $request
     *
     * @return Response
     */
    public function update($id, UpdatePracticeRequest $request)
    {
        $practice = $this->practiceRepository->find($id);

        if (empty($practice)) {
            Flash::error('Practice not found');

            return redirect(route('practices.index'));
        }

        $practice = $this->practiceRepository->update($request->all(), $id);

        Flash::success('Practice updated successfully.');

        return redirect(route('practices.index'));
    }

    /**
     * Remove the specified Practice from storage.
     *
     * @param int $id
     *
     * @throws \Exception
     *
     * @return Response
     */
    public function destroy($id)
    {
        $practice = $this->practiceRepository->find($id);

        if (empty($practice)) {
            Flash::error('Practice not found');

            return redirect(route('practices.index'));
        }

        $this->practiceRepository->delete($id);

        Flash::success('Practice deleted successfully.');

        return redirect(route('practices.index'));
    }
}
