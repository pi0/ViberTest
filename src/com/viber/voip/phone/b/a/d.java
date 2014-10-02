package com.viber.voip.phone.b.a;

import android.widget.TextView;
import com.viber.voip.phone.call.k;
import com.viber.voip.phone.call.n;
import com.viber.voip.util.ak;

public class d
  implements Runnable
{
  private TextView a;
  private k b;
  
  public d(TextView paramTextView, k paramk)
  {
    this.a = paramTextView;
    this.b = paramk;
  }
  
  public void run()
  {
    if (!this.b.h()) {
      return;
    }
    this.a.setText(ak.a(this.b.d().x() / 1000L));
    this.a.postDelayed(this, 1000L);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.phone.b.a.d
 * JD-Core Version:    0.7.0.1
 */