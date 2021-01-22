<!-- Category Id Field -->
<div class="col-sm-12 col-md-6">
    {!! Form::label('category_id', 'Category:') !!}
    <p>{{ $blog->category['name'] }}</p>
</div>
<!-- Status Field -->
<div class="col-sm-12 col-md-6">
    {!! Form::label('status', 'Status:') !!}
    <p>
    @if(  $blog->status  == 1)
                Live
            @elseif($blog->status  == 0)
                Offline
            @endif
    </p>
</div>

<!-- Author Field -->
<!-- <div class="col-sm-12">
    {!! Form::label('author', 'Author:') !!}
    <p>{{ $blog->author }}</p>
</div> -->

<!-- Publisher Field -->
<!-- <div class="col-sm-12">
    {!! Form::label('publisher', 'Publisher:') !!}
    <p>{{ $blog->publisher }}</p>
</div> -->

<!-- Title Field -->
<div class="col-sm-12" style="text-transform: capitalize; font-size: 18px; font-weight:bold;">
    {!! Form::label('title', 'Title:') !!}
    <p>{{ $blog->title }}</p>
</div>

<!-- Tags Field -->
<!-- <div class="col-sm-12">
    {!! Form::label('tags', 'Tags:') !!}
    <p>{{ $blog->tags }}</p>
</div> -->

<!-- Body Field -->
<div class="col-sm-12">
    {!! Form::label('body', 'Body:') !!}
    <p>{!! $blog->body !!}</p>
</div>

<!-- Photo Field -->
<!-- <div class="col-sm-12">
    {!! Form::label('photo', 'Photo:') !!}
    <p>{{ $blog->photo }}</p>
</div> -->

