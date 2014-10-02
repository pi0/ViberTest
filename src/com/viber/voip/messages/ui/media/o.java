package com.viber.voip.messages.ui.media;

import android.os.Handler;
import android.view.View;
import android.view.View.OnClickListener;
import com.viber.voip.messages.extras.map.a;
import com.viber.voip.messages.ui.view.ViberMapView;

class o
  implements View.OnClickListener
{
  o(LocationMessageActivity paramLocationMessageActivity) {}
  
  public void onClick(View paramView)
  {
    LocationMessageActivity.f(this.a).removeCallbacks(LocationMessageActivity.e(this.a));
    if (!LocationMessageActivity.a(this.a, LocationMessageActivity.g(this.a)))
    {
      LocationMessageActivity.c(this.a).b();
      LocationMessageActivity.b(this.a, LocationMessageActivity.g(this.a));
      LocationMessageActivity.b(this.a).setMapMoving(true);
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.ui.media.o
 * JD-Core Version:    0.7.0.1
 */