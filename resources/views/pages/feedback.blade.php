@include('pages.header')

<div class="row">
      <div class="col-xs-8 col-xs-offset-2 col-md-2">
    <div class="contact">
      <div class="contact-title">
        Contact
      </div>
          <h5>Contact Us</h5>
          <p>Suit 30 AUA Plaza Alexandria Crescent, Wuse 2, Abuja</p>
          <p> <b>Tell:</b> </p>
          <span>+234(0)8105221639</span>
          <span>+234(0)9051334961</span>
          <p> <b>WhatsApp:</b> </p>
          <span>+234(0)8177662517</span>
          <p><b>Email</b> </p>
          <span>enquiry@aderelefirm.com</span>
      </div>
    </div>
    <div class="practice col-xs-12 col-md-8">
    <div class="practice-body">
      <div class="row">

          <div class="feedback form">
            <!-- <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3939.7882448962746!2d7.464495113990142!3d9.083045993483395!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x104e0aef1fd202e9%3A0x8fb6ddea1d52f4ad!2sAUA%20Plaza!5e0!3m2!1sen!2sng!4v1610298884049!5m2!1sen!2sng" width="600" height="450" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe> -->
            <div class="">
              @include('flash::message')
              <form action="{{ url('/clientMsg') }}" method="POST">

                  <div class="form-row">
                    {{ csrf_field() }}
                    <div class="form-group col-md-6">
                      <label for="client_name">Name</label>
                      <input name="client_name" type="text" class="form-control" placeholder="Your name">
                    </div>
                    <div class="form-group col-md-6">
                      <label for="client_phone">Phone No:</label>
                      <input name="client_phone" type="number" class="form-control" placeholder="Your phone number">
                    </div>
                    <div class="form-group col-md-6">
                      <label for="msg_subject">Subject</label>
                      <input name="msg_subject" type="text" class="form-control" placeholder="Message Title">
                    </div>
                    <div class="form-group col-md-6">
                      <label for="client_email">Email</label>
                      <input name="client_email" type="email" class="form-control" placeholder="Your email">
                    </div>
                    
                  </div>
                  <div class="form-group ">
                    <label for="message">Message</label>
                    <textarea class="form-control" placeholder="Type in your message here" name="client_message" rows="8" cols="80"></textarea>
                  </div>

                <button type="submit" class="btn btn-primary">Submit</button>
              </form>
            </div>

          </div>

        </div>
      </div>
    </div>
      </div>
  </div>

@include('pages.footer')