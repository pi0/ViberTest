package com.viber.voip.registration;

import android.os.CountDownTimer;
import android.widget.TextView;
import com.viber.voip.a.a;
import com.viber.voip.a.bc;
import com.viber.voip.a.d;
import java.text.SimpleDateFormat;
import java.util.Date;

class v
  extends CountDownTimer
{
  v(t paramt, long paramLong1, long paramLong2, SimpleDateFormat paramSimpleDateFormat)
  {
    super(paramLong1, paramLong2);
  }
  
  public void onFinish()
  {
    bc.a().a(a.d.c());
    t.a(this.b, 1);
  }
  
  public void onTick(long paramLong)
  {
    t.a(this.b, paramLong);
    t.e(this.b).setText(this.a.format(new Date(t.d(this.b))));
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.registration.v
 * JD-Core Version:    0.7.0.1
 */