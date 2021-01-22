<div class="table-responsive">
    <table class="table" id="practices-table">
        <thead>
            <tr>
                <th>Name</th>
        <th>Description</th>
                <th colspan="3">Action</th>
            </tr>
        </thead>
        <tbody>
        @foreach($practices as $practice)
            <tr>
                <td> <a href="{{ route('practices.show', [$practice->id]) }}">{{ $practice->name }}</a></td>
            <td>
            {!! \Illuminate\Support\Str::limit($practice->description, 650, $end='...') !!}
            <a href="{{ route('practices.show', [$practice->id]) }}">Read full post »</a>
            </td>
                <td width="120">
                    {!! Form::open(['route' => ['practices.destroy', $practice->id], 'method' => 'delete']) !!}
                    <div class='btn-group'>
                        <!-- <a href="{{ route('practices.show', [$practice->id]) }}" class='btn btn-default btn-xs'>
                            <i class="far fa-eye"></i>
                        </a> -->
                        <a href="{{ route('practices.edit', [$practice->id]) }}" class='btn btn-default btn-xs'>
                            <i class="far fa-edit"></i>
                        </a>
                        {!! Form::button('<i class="far fa-trash-alt"></i>', ['type' => 'submit', 'class' => 'btn btn-danger btn-xs', 'onclick' => "return confirm('Are you sure?')"]) !!}
                    </div>
                    {!! Form::close() !!}
                </td>
            </tr>
        @endforeach
        </tbody>
    </table>
</div>
