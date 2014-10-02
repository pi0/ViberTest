package com.viber.voip.ui.call;

import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import com.viber.voip.ui.call.a.c;
import com.viber.voip.ui.call.a.f;

public class d
  implements com.viber.voip.ui.call.a.d, f
{
  private Drawable a;
  private Rect b;
  private c[] c;
  private boolean d = true;
  private float e = 0.0F;
  private float f = 0.0F;
  private float g = 0.0F;
  private boolean h = true;
  
  public d(Drawable paramDrawable, float paramFloat1, float paramFloat2, int paramInt, float paramFloat3, boolean paramBoolean)
  {
    this.a = paramDrawable;
    this.b = new Rect(0, 0, paramDrawable.getIntrinsicWidth(), paramDrawable.getIntrinsicHeight());
    a(paramFloat1, paramFloat2, paramFloat3);
    this.h = paramBoolean;
    this.c = new c[paramInt];
    for (int i = 0; i < paramInt; i++)
    {
      float f1 = 1.0F - 0.1F * (paramInt - i);
      c[] arrayOfc = this.c;
      float[] arrayOfFloat = new float[4];
      arrayOfFloat[0] = 0.0F;
      arrayOfFloat[1] = f1;
      arrayOfFloat[2] = (f1 + 0.05F);
      arrayOfFloat[3] = 1.0F;
      arrayOfc[i] = new c(0.0F, 1.0F, arrayOfFloat, new float[] { 255.0F, 100.0F, 255.0F, 255.0F });
    }
  }
  
  public void a(float paramFloat)
  {
    for (int i = 0; i < this.c.length; i++) {
      this.c[i].a(paramFloat);
    }
  }
  
  public void a(float paramFloat1, float paramFloat2, float paramFloat3)
  {
    this.e = paramFloat1;
    this.f = paramFloat2;
    this.g = paramFloat3;
  }
  
  public void a(Canvas paramCanvas)
  {
    int i;
    int j;
    label18:
    Drawable localDrawable;
    c[] arrayOfc;
    if (this.h)
    {
      i = 0;
      if (!this.h) {
        break label154;
      }
      j = 1;
      if (((!this.h) || (i >= this.c.length)) && ((this.h) || (i < 0))) {
        return;
      }
      this.b.offsetTo((int)(this.e + this.g * i + i * this.b.width()), (int)this.f);
      localDrawable = this.a;
      arrayOfc = this.c;
      if (!this.h) {
        break label159;
      }
    }
    label154:
    label159:
    for (int k = i;; k = -1 + this.c.length - i)
    {
      localDrawable.setAlpha((int)arrayOfc[k].c);
      this.a.setBounds(this.b);
      this.a.draw(paramCanvas);
      i += j;
      break label18;
      i = -1 + this.c.length;
      break;
      j = -1;
      break label18;
    }
  }
  
  public void a(boolean paramBoolean)
  {
    this.d = paramBoolean;
  }
  
  public boolean b()
  {
    return this.d;
  }
  
  public void c()
  {
    for (int i = 0; i < this.c.length; i++) {
      this.c[i].c();
    }
  }
  
  public boolean d()
  {
    return true;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.ui.call.d
 * JD-Core Version:    0.7.0.1
 */