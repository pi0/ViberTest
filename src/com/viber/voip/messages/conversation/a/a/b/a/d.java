package com.viber.voip.messages.conversation.a.a.b.a;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Paint;
import android.text.format.DateFormat;
import com.viber.voip.messages.conversation.a.a.b.a;

public class d
  extends b
  implements a
{
  public d(Context paramContext)
  {
    super(paramContext);
    this.h = this.C.getResources().getColor(2131296427);
    this.i = this.C.getResources().getColorStateList(2131296484);
    this.e = 0;
    this.f = 0;
    this.j = null;
    this.g = 0;
    this.k = this.C.getResources().getColor(2131296393);
    this.l = 0;
    this.m = this.C.getResources().getColor(2131296395);
    this.n = this.C.getResources().getColor(2131296424);
    this.o = paramContext.getResources().getDimensionPixelSize(2131362049);
    this.p = paramContext.getResources().getDimensionPixelSize(2131362051);
    this.a = paramContext.getResources().getDimensionPixelSize(2131362037);
    this.q = this.C.getResources().getColor(2131296428);
    this.r = this.C.getResources().getDrawable(2130838331);
    this.s = this.C.getResources().getDimensionPixelSize(2131362133);
    Paint localPaint = new Paint();
    localPaint.setTextSize(this.C.getResources().getDimensionPixelSize(2131362139));
    if (DateFormat.is24HourFormat(this.C)) {}
    for (String str = "00:00";; str = "00:00 AM")
    {
      int i = (int)Math.floor(localPaint.measureText(str));
      this.t = (i + this.C.getResources().getDimensionPixelSize(2131362134));
      this.u = (i + this.C.getResources().getDimensionPixelSize(2131362137));
      this.y = 2130837510;
      this.z = this.C.getResources().getColor(2131296442);
      g();
      return;
    }
  }
  
  public int a()
  {
    return this.g;
  }
  
  public int b()
  {
    return this.h;
  }
  
  public int c()
  {
    return 0;
  }
  
  public int d()
  {
    return 0;
  }
  
  public int e()
  {
    return this.n;
  }
  
  public int f()
  {
    return this.y;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.conversation.a.a.b.a.d
 * JD-Core Version:    0.7.0.1
 */