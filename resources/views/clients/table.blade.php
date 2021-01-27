<div class="table-responsive">
    <table class="table" id="clients-table">
        <thead>
            <tr>
              <th>Name</th>
              <th>Email</th>
              <th>Phone</th>
              <th>Message Title</th>
              <th>Message</th>
              {{-- <th>Subscribed</th> --}}
              <th>Enquiry</th>
              <th>Info</th>
                <th colspan="3">Action</th>
            </tr>
        </thead>
        <tbody>
        @foreach($clients as $client)
            <tr>
                <td>{{ $client->name }}</td>
                <td>{{ $client->email }}</td>
                <td>{{ $client->phone }}</td>
                <td>{{ $client->msg_subject }}</td>
                <td>{{ $client->message }}</td>
                {{-- <td>{{ $client->subscribed }}</td> --}}
                <td>
                    @if($client->enquiry == 1)
                        Yes
                    @else
                        No
                    @endif                    
                </td>
                <td>
                @if($client->info == 1)
                    Yes
                @else
                    No
                @endif   
                </td>
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
