
<!-- Status Field -->
<!-- <div class="form-group col-sm-12 col-md-6">
    {!! Form::label('status', 'Status:') !!}
    <select class="form-control" name="status" id="status">
        <option value="on">ON</option>
        <option value="off">OFF</option>
    </select>
</div> -->


<!-- Author Field -->
<!-- <div class="form-group col-sm-6">
    {!! Form::label('author', 'Author:') !!}
    {!! Form::text('author', null, ['class' => 'form-control','maxlength' => 255,'maxlength' => 255]) !!}
</div> -->

<!-- Publisher Field -->
<!-- <div class="form-group col-sm-6">
    {!! Form::label('publisher', 'Publisher:') !!}
    {!! Form::number('publisher', null, ['class' => 'form-control']) !!}
</div> -->
<div class="form-group col-sm-12 pull-right">
    <div class="form-check">
        {!! Form::hidden('status', 0, ['class' => 'form-check-input']) !!}
        {!! Form::checkbox('status', '1', null, ['class' => 'form-check-input']) !!}
        {!! Form::label('status', 'Go Live', ['class' => 'form-check-label']) !!}
    </div>
</div>

<!-- Title Field -->
<div class="form-group col-12">
    {!! Form::label('title', 'Title:') !!}
    {!! Form::text('title', null, ['class' => 'form-control','maxlength' => 255,'maxlength' => 255]) !!}
</div>

<!-- Tags Field -->
<!-- <div class="form-group col-sm-6">
    {!! Form::label('tags', 'Tags:') !!}
    {!! Form::text('tags', null, ['class' => 'form-control','maxlength' => 255,'maxlength' => 255]) !!}
</div> -->

<!-- Body Field -->
<div class="form-group col-sm-12 col-lg-12" >
    {!! Form::label('body', 'Body:') !!}
    {!! Form::textarea('body', null, ['id'=>'editor', 'class' => 'form-control']) !!}
</div>

<!-- <div class="form-group col-sm-12 col-lg-12" >
    <label for="">Body</label>
    <textarea name="body" id="editor" cols="30" rows="10"></textarea>
</div> -->

<!-- <div class="form-group col-sm-12 col-md-6">
    {!! Form::label('category_id', 'Category:') !!}
    <select class="form-control " name="category_id">
    @foreach ( $cats as $cat )
    <option value="{{ $cat->id }}" >{{ $cat->name }}</option>
    @endforeach
    </select>
</div> -->

<div class="form-group col-sm-12 col-md-6">
    {!! Form::label('category_id', 'Category:') !!}
    {!! Form::select('category_id', $categories, null, ['class' => 'form-control']) !!}
</div>


<div class="form-group col-sm-12 col-md-6">
    {!! Form::label('tag_id', 'Tag:') !!}
    <select class="form-control js-example-basic-multiple" name="tags[]" multiple="multiple">
    @foreach ( $tags as $tag )
    <option value="{{ $tag->id }}" >{{ $tag->name }}</option>
    @endforeach
    </select>
</div>


<!-- Photo Field -->
<!-- <div class="form-group col-sm-6">
    {!! Form::label('photo', 'Photo:') !!}
    {!! Form::text('photo', null, ['class' => 'form-control','maxlength' => 255,'maxlength' => 255]) !!}
</div> -->


