package com.viber.voip.messages.extras.fb;

import com.facebook.Request.GraphUserCallback;
import com.facebook.Response;
import com.facebook.model.GraphUser;

class u
  implements Request.GraphUserCallback
{
  u(s params) {}
  
  public void onCompleted(GraphUser paramGraphUser, Response paramResponse)
  {
    s.a(this.a, paramGraphUser, paramResponse);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.extras.fb.u
 * JD-Core Version:    0.7.0.1
 */