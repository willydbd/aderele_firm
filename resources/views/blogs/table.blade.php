<div class="table-responsive">
    <table class="table" id="blogs-table">
        <thead>
            <tr>
        <th>Category</th>
        <!-- <th>Author</th> -->
        <!-- <th>Published By</th> -->
        <th>Title</th>
        <!-- <th>Tags</th> -->
        <th>Body</th>
        <!-- <th>Photo</th> -->
        <th>Status</th>
                <th colspan="3">Action</th>
            </tr>
        </thead>
        <tbody>
        @foreach($blogs as $blog)
            <tr>
            
            <td>{{ $blog->category['name'] }}</td>
            <td style="text-transform: capitalize">
            <a href="{{ route('blogs.show', [$blog->id]) }}">
                {{ $blog->title }}
            </a>
            </td>
            <!-- <td>{{ $blog->author }}</td>
            <td>{{ $blog->publisher }}</td> -->
            
            <!-- <td>{{ $blog->tags }}</td> -->
            <td>
                <!-- {!! $blog->body !!} -->
            {!! \Illuminate\Support\Str::limit($blog->body, 350, $end='...') !!}
                <a href="{{ route('blogs.show', [$blog->id]) }}">Read full post »</a>
            <!-- <td>{{ $blog->photo }}</td> -->
            <td>
            @if(  $blog->status  == 1)
                Live
            @elseif($blog->status  == 0)
                Offline
            @endif            
            </td>
                <td width="120">
                    {!! Form::open(['route' => ['blogs.destroy', $blog->id], 'method' => 'delete']) !!}
                    <div class='btn-group'>
                        
                        <a href="{{ route('blogs.edit', [$blog->id]) }}" class='btn btn-default btn-xs'>
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
