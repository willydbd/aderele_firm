<!-- Name Field -->
<div class="form-group col-sm-6">
    {!! Form::label('name', 'Name:') !!}
    {!! Form::text('name', null, ['class' => 'form-control','maxlength' => 255,'maxlength' => 255]) !!}
</div>

<!-- Descriptions Field -->
<div class="form-group col-sm-6">
    {!! Form::label('descriptions', 'Descriptions:') !!}
    {!! Form::text('descriptions', null, ['class' => 'form-control','maxlength' => 255,'maxlength' => 255]) !!}
</div>