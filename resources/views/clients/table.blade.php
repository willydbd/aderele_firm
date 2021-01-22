<div class="table-responsive">
    <table class="table" id="clients-table">
        <thead>
            <tr>
                <th>Email</th>
        <th>Phone</th>
        <th>Message</th>
        <th>Subscribed</th>
        <th>Enquiry</th>
        <th>Info</th>
                <th colspan="3">Action</th>
            </tr>
        </thead>
        <tbody>
        @foreach($clients as $client)
            <tr>
                <td>{{ $client->email }}</td>
            <td>{{ $client->phone }}</td>
            <td>{{ $client->message }}</td>
            <td>{{ $client->subscribed }}</td>
            <td>{{ $client->enquiry }}</td>
            <td>{{ $client->info }}</td>
                <td width="120">
                    {!! Form::open(['route' => ['clients.destroy', $client->id], 'method' => 'delete']) !!}
                    <div class='btn-group'>
                        <a href="{{ route('clients.show', [$client->id]) }}" class='btn btn-default btn-xs'>
                            <i class="far fa-eye"></i>
                        </a>
                        <a href="{{ route('clients.edit', [$client->id]) }}" class='btn btn-default btn-xs'>
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
