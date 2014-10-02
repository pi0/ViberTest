package com.viber.voip.messages.extras.fb;

import com.facebook.FacebookRequestError;
import com.facebook.Request.Callback;
import com.facebook.Response;

class w
  implements Request.Callback
{
  w(s params) {}
  
  public void onCompleted(Response paramResponse)
  {
    if (paramResponse.getGraphObject() == null) {}
    do
    {
      FacebookRequestError localFacebookRequestError;
      do
      {
        return;
        localFacebookRequestError = paramResponse.getError();
        if (localFacebookRequestError == null) {
          break;
        }
        s.b("Error postInviteOnWall " + localFacebookRequestError.getErrorMessage());
      } while (s.d(this.a) == null);
      s.d(this.a).a(s.a(this.a, localFacebookRequestError.getErrorMessage()));
      return;
    } while (s.d(this.a) == null);
    s.d(this.a).a();
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.extras.fb.w
 * JD-Core Version:    0.7.0.1
 */