package com.viber.voip.messages.ui.media;

import com.viber.voip.a.ao;
import com.viber.voip.a.aq;
import com.viber.voip.a.ax;
import com.viber.voip.a.bc;
import com.viber.voip.messages.conversation.an;
import com.viber.voip.messages.extras.twitter.l;
import com.viber.voip.messages.extras.twitter.t;

class au
  extends t
{
  au(ViewMediaActivity paramViewMediaActivity, l paraml) {}
  
  public void onAuthComplete()
  {
    av localav = new av(this);
    this.a.a(this.b, ViewMediaActivity.f(this.b).a(), ViewMediaActivity.f(this.b).e(), ViewMediaActivity.f(this.b).v(), ViewMediaActivity.f(this.b).q(), localav);
    if (ViewMediaActivity.f(this.b).e().equals("image")) {
      bc.a().a(ViewMediaActivity.g(this.b).a.a(aq.b));
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.ui.media.au
 * JD-Core Version:    0.7.0.1
 */