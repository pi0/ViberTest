package com.viber.voip.ui.call;

import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import com.viber.voip.ui.call.a.d;
import com.viber.voip.ui.call.a.e;
import com.viber.voip.ui.call.a.f;
import java.util.ArrayList;
import java.util.List;

public class b
  implements View.OnTouchListener, d, f
{
  private c a;
  private List<Drawable> b = new ArrayList();
  private int[] c;
  private boolean[] d;
  private com.viber.voip.ui.call.a.c e = new com.viber.voip.ui.call.a.c(0.0F, 1.0F, new float[] { 0.0F, 0.5F, 0.75F, 1.0F }, new float[] { 0.0F, 0.2F, 0.5F, 1.0F });
  private e f = new e(1200L, this.e);
  private Rect g = new Rect(0, 0, 0, 0);
  private Rect h = new Rect(0, 0, 10, 10);
  private boolean i = true;
  private boolean j = false;
  private float k = 0.0F;
  private float l = 0.0F;
  private float m = 0.0F;
  private Resources n;
  
  public b(List<Drawable> paramList, Resources paramResources, float paramFloat1, float paramFloat2, float paramFloat3, int paramInt, c paramc)
  {
    this.n = paramResources;
    this.b = paramList;
    this.d = new boolean[this.b.size()];
    this.c = new int[this.b.size()];
    a();
    this.k = paramFloat1;
    this.l = paramFloat2;
    this.m = paramFloat3;
    this.a = paramc;
    this.g.right = paramInt;
    this.g.bottom = paramInt;
    this.h.right = paramInt;
    this.h.bottom = paramInt;
    for (int i1 = 0; i1 < this.b.size(); i1++)
    {
      Drawable localDrawable = (Drawable)this.b.get(i1);
      Rect localRect = new Rect();
      localRect.left = ((int)(this.k + (this.m - localDrawable.getIntrinsicWidth() / 2) * Math.cos(3.141592653589793D + 1.570796326794897D * i1) - localDrawable.getIntrinsicWidth() / 2));
      localRect.top = ((int)(this.l + (this.m - localDrawable.getIntrinsicHeight() / 2) * Math.sin(3.141592653589793D + 1.570796326794897D * i1) - localDrawable.getIntrinsicHeight() / 2));
      localRect.right = (localRect.left + localDrawable.getIntrinsicWidth());
      localRect.bottom = (localRect.top + localDrawable.getIntrinsicHeight());
      localDrawable.setBounds(localRect);
    }
  }
  
  private void a()
  {
    this.c[0] = this.n.getColor(2131296357);
    this.c[1] = this.n.getColor(2131296358);
    this.c[2] = this.n.getColor(2131296359);
  }
  
  private boolean e()
  {
    for (int i1 = 0;; i1++)
    {
      int i2 = this.d.length;
      boolean bool = false;
      if (i1 < i2)
      {
        if (this.d[i1] != 0) {
          bool = true;
        }
      }
      else {
        return bool;
      }
    }
  }
  
  public void a(float paramFloat)
  {
    if (this.i) {
      this.f.a(paramFloat);
    }
  }
  
  public void a(long paramLong)
  {
    if (this.i) {
      this.f.a(paramLong);
    }
  }
  
  public void a(Canvas paramCanvas)
  {
    for (int i1 = 0; i1 < this.b.size(); i1++)
    {
      Drawable localDrawable = (Drawable)this.b.get(i1);
      localDrawable.setAlpha((int)(255.0F * this.e.c));
      localDrawable.draw(paramCanvas);
    }
  }
  
  public boolean b()
  {
    return this.i;
  }
  
  public void c() {}
  
  public boolean d()
  {
    return true;
  }
  
  public boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    int i1 = 1;
    if ((paramMotionEvent.getAction() != i1) && ((paramMotionEvent.getAction() == 0) || ((paramMotionEvent.getAction() == 2) && (this.j))))
    {
      int i3 = i1;
      this.j = i3;
      if (paramMotionEvent.getAction() != i1) {
        break label67;
      }
    }
    label67:
    int i6;
    for (int i5 = i1;; i6 = 0)
    {
      if (this.i) {
        break label73;
      }
      return false;
      int i4 = 0;
      break;
    }
    label73:
    int[] arrayOfInt1 = new int[this.b.size()];
    int i7 = 0;
    int i8 = 0;
    if (i7 < this.b.size())
    {
      this.g.offsetTo((int)paramMotionEvent.getX() - this.g.width() / 2, (int)paramMotionEvent.getY() - this.g.height() / 2);
      Drawable localDrawable = (Drawable)this.b.get(i7);
      this.h.offsetTo(localDrawable.getBounds().centerX() - this.h.width() / 2, localDrawable.getBounds().centerY() - this.h.height() / 2);
      if (Rect.intersects(this.g, this.h)) {
        if (i6 == 0)
        {
          localDrawable.setState(new int[] { 16842910, 16842914 });
          if ((this.a != null) && (this.d[i7] == 0)) {
            this.a.a(i7);
          }
          this.d[i7] = i1;
          label276:
          arrayOfInt1[i8] = i7;
          i8++;
        }
      }
      for (;;)
      {
        i7++;
        break;
        localDrawable.setState(new int[] { 16842910, 16842908 });
        if (this.a == null) {
          break label276;
        }
        this.a.b(i7);
        break label276;
        if (this.d[i7] != 0)
        {
          this.d[i7] = false;
          if (this.a != null) {
            this.a.a(i7, e());
          }
        }
        if (i6 != 0)
        {
          int[] arrayOfInt2 = new int[i1];
          arrayOfInt2[0] = 16842910;
          localDrawable.setState(arrayOfInt2);
        }
        else
        {
          localDrawable.setState(new int[] { 16842910, 16842908 });
        }
      }
    }
    if (i8 >= 0) {}
    for (;;)
    {
      return i1;
      int i2 = 0;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.ui.call.b
 * JD-Core Version:    0.7.0.1
 */