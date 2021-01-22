<!-- Email Field -->
<div class="form-group col-sm-6">
    {!! Form::label('email', 'Email:') !!}
    {!! Form::email('email', null, ['class' => 'form-control','maxlength' => 255,'maxlength' => 255]) !!}
</div>

<!-- Phone Field -->
<div class="form-group col-sm-6">
    {!! Form::label('phone', 'Phone:') !!}
    {!! Form::text('phone', null, ['class' => 'form-control','maxlength' => 255,'maxlength' => 255]) !!}
</div>

<!-- Message Field -->
<div class="form-group col-sm-12 col-lg-12">
    {!! Form::label('message', 'Message:') !!}
    {!! Form::textarea('message', null, ['class' => 'form-control']) !!}
</div>

<!-- Subscribed Field -->
<div class="form-group col-sm-6">
    <div class="form-check">
        {!! Form::hidden('subscribed', 0, ['class' => 'form-check-input']) !!}
        {!! Form::checkbox('subscribed', '1', null, ['class' => 'form-check-input']) !!}
        {!! Form::label('subscribed', 'Subscribed', ['class' => 'form-check-label']) !!}
    </div>
</div>


<!-- Enquiry Field -->
<div class="form-group col-sm-6">
    <div class="form-check">
        {!! Form::hidden('enquiry', 0, ['class' => 'form-check-input']) !!}
        {!! Form::checkbox('enquiry', '1', null, ['class' => 'form-check-input']) !!}
        {!! Form::label('enquiry', 'Enquiry', ['class' => 'form-check-label']) !!}
    </div>
</div>


<!-- Info Field -->
<div class="form-group col-sm-6">
    <div class="form-check">
        {!! Form::hidden('info', 0, ['class' => 'form-check-input']) !!}
        {!! Form::checkbox('info', '1', null, ['class' => 'form-check-input']) !!}
        {!! Form::label('info', 'Info', ['class' => 'form-check-label']) !!}
    </div>
</div>
