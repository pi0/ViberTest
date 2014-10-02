package com.viber.voip.phone.b.a;

import android.content.res.Resources;
import android.graphics.Paint;
import android.widget.TextView;
import java.util.Arrays;

public class b
  implements Runnable
{
  private TextView a;
  private int b;
  private int c = 0;
  private int d = 0;
  private int e = 0;
  private boolean f = false;
  private int g = 0;
  
  public b(TextView paramTextView)
  {
    this.a = paramTextView;
    Paint localPaint = new Paint();
    localPaint.setTextSize(this.a.getTextSize());
    localPaint.setTextScaleX(this.a.getTextScaleX());
    this.b = ((int)localPaint.measureText(this.a.getResources().getString(2131494226).concat("...")));
  }
  
  public void a()
  {
    this.a.post(this);
    if (!this.f)
    {
      this.f = true;
      this.e = this.a.getGravity();
      this.d = this.a.getWidth();
    }
    try
    {
      this.c = this.a.getMinWidth();
      label54:
      this.a.setGravity(19);
      this.a.setMinWidth(this.b);
      this.a.setWidth(this.b);
      return;
    }
    catch (NoSuchMethodError localNoSuchMethodError)
    {
      break label54;
    }
  }
  
  public void b()
  {
    this.a.removeCallbacks(this);
    if (this.f) {
      this.a.setGravity(this.e);
    }
    try
    {
      this.a.setMinWidth(this.c);
      label38:
      this.a.setWidth(this.d);
      this.f = false;
      return;
    }
    catch (NoSuchMethodError localNoSuchMethodError)
    {
      break label38;
    }
  }
  
  public void run()
  {
    char[] arrayOfChar = new char[this.g];
    Arrays.fill(arrayOfChar, '.');
    this.a.setText(this.a.getResources().getString(2131494226) + new String(arrayOfChar));
    this.a.postDelayed(this, 300L);
    int i = 1 + this.g;
    this.g = i;
    if (i > 3) {
      this.g = 0;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.phone.b.a.b
 * JD-Core Version:    0.7.0.1
 */