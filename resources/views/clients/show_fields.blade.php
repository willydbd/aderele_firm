<!-- Email Field -->
<div class="col-sm-12">
    {!! Form::label('email', 'Email:') !!}
    <p>{{ $client->email }}</p>
</div>

<!-- Phone Field -->
<div class="col-sm-12">
    {!! Form::label('phone', 'Phone:') !!}
    <p>{{ $client->phone }}</p>
</div>

<!-- Message Field -->
<div class="col-sm-12">
    {!! Form::label('message', 'Message:') !!}
    <p>{{ $client->message }}</p>
</div>

<!-- Subscribed Field -->
<div class="col-sm-12">
    {!! Form::label('subscribed', 'Subscribed:') !!}
    <p>{{ $client->subscribed }}</p>
</div>

<!-- Enquiry Field -->
<div class="col-sm-12">
    {!! Form::label('enquiry', 'Enquiry:') !!}
    <p>{{ $client->enquiry }}</p>
</div>

<!-- Info Field -->
<div class="col-sm-12">
    {!! Form::label('info', 'Info:') !!}
    <p>{{ $client->info }}</p>
</div>

