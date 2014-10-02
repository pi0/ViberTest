package com.viber.voip.ui.style;

import android.os.Parcel;
import android.text.TextPaint;
import android.text.style.URLSpan;

public class ColoredURLSpan
  extends URLSpan
{
  private final int a;
  
  public ColoredURLSpan(String paramString, int paramInt)
  {
    super(paramString);
    this.a = paramInt;
  }
  
  public void updateDrawState(TextPaint paramTextPaint)
  {
    paramTextPaint.setColor(this.a);
    paramTextPaint.setUnderlineText(true);
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    super.writeToParcel(paramParcel, paramInt);
    paramParcel.writeInt(this.a);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.ui.style.ColoredURLSpan
 * JD-Core Version:    0.7.0.1
 */