package com.viber.voip.messages.ui.media;

import android.os.Handler;
import com.viber.voip.messages.extras.map.BalloonView;
import com.viber.voip.messages.extras.map.k;
import com.viber.voip.messages.extras.map.n;

class v
  implements n
{
  v(LocationMessageActivityV2 paramLocationMessageActivityV2) {}
  
  public void a()
  {
    LocationMessageActivityV2.f(this.a).setVisibility(4);
    LocationMessageActivityV2.c(this.a).removeCallbacks(LocationMessageActivityV2.b(this.a));
    LocationMessageActivityV2.a(this.a, false);
  }
  
  public void b()
  {
    if (!LocationMessageActivityV2.d(this.a))
    {
      LocationMessageActivityV2.e(this.a).e("");
      LocationMessageActivityV2.c(this.a).removeCallbacks(LocationMessageActivityV2.b(this.a));
      LocationMessageActivityV2.f(this.a).setVisibility(0);
      LocationMessageActivityV2.f(this.a).a(LocationMessageActivityV2.e(this.a));
      LocationMessageActivityV2.c(this.a).postDelayed(LocationMessageActivityV2.b(this.a), 700L);
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.ui.media.v
 * JD-Core Version:    0.7.0.1
 */