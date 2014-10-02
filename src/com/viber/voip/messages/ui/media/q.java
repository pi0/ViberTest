package com.viber.voip.messages.ui.media;

import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import com.viber.voip.a.bc;
import com.viber.voip.a.m;
import com.viber.voip.messages.extras.map.b;
import com.viber.voip.messages.extras.map.k;

class q
  implements View.OnClickListener
{
  q(LocationMessageActivity paramLocationMessageActivity) {}
  
  public void onClick(View paramView)
  {
    synchronized (LocationMessageActivity.a(this.a))
    {
      bc.a().a(LocationMessageActivity.h(this.a).e());
      if (!LocationMessageActivity.a(this.a, LocationMessageActivity.a(this.a).b()))
      {
        Intent localIntent = new Intent();
        localIntent.putExtra("extra_location_lat", LocationMessageActivity.a(this.a).b().a());
        localIntent.putExtra("extra_location_lon", LocationMessageActivity.a(this.a).b().b());
        localIntent.putExtra("extra_location_text", LocationMessageActivity.a(this.a).d());
        this.a.setResult(-1, localIntent);
        this.a.finish();
      }
      return;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.ui.media.q
 * JD-Core Version:    0.7.0.1
 */