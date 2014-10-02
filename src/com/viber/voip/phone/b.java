package com.viber.voip.phone;

import android.content.res.Resources;
import android.graphics.Paint;
import android.widget.TextView;
import java.util.Arrays;

class b
  implements Runnable
{
  private int b = 0;
  private TextView c;
  
  public b(CallCard paramCallCard, TextView paramTextView)
  {
    this.c = paramTextView;
    Paint localPaint = new Paint();
    localPaint.setTextSize(this.c.getTextSize());
    localPaint.setTextScaleX(this.c.getTextScaleX());
    float f = localPaint.measureText(paramCallCard.getResources().getString(2131494226).concat("..."));
    this.c.setMinWidth((int)f);
  }
  
  public void run()
  {
    char[] arrayOfChar = new char[this.b];
    Arrays.fill(arrayOfChar, '.');
    this.c.setText(this.a.getResources().getString(2131494226) + new String(arrayOfChar));
    this.c.postDelayed(this, 300L);
    int i = 1 + this.b;
    this.b = i;
    if (i > 3) {
      this.b = 0;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.phone.b
 * JD-Core Version:    0.7.0.1
 */