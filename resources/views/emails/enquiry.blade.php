<h4>Someone just sent you a message from your website, below are the info provided</h4>

<div><strong>Name:</strong> {{ $client_name }}</div> 

<div><strong>Phone Number:</strong> <span>{{ $client_phone }}</span></div>
<div><strong>Email:</strong> <span>{{ $client_email }}</span></div>
<br>

<div><b>Message Body</b></div>
<div><p>{{ $client_message }}</p></div> <br>
<small>This message was sent by {{ date('Y-m-d H:i:s') }}</small>
