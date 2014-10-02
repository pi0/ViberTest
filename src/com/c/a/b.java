package com.c.a;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Align;
import android.graphics.Rect;
import android.graphics.RectF;
import android.view.View;
import android.widget.LinearLayout;
import java.text.NumberFormat;
import java.util.ArrayList;
import java.util.List;

public abstract class b
  extends LinearLayout
{
  private boolean A;
  protected final Paint a;
  private String[] b;
  private String[] c;
  private String d;
  private boolean e;
  private boolean f;
  private double g;
  private double h;
  private final View i;
  private com.c.a.a.b j;
  private boolean k;
  private final NumberFormat[] l;
  private final List<h> m;
  private boolean n;
  private float o;
  private f p;
  private boolean q;
  private double r;
  private double s;
  private j t;
  private final d u;
  private a v;
  private Integer w;
  private Integer x;
  private final Rect y;
  private boolean z;
  
  private g[] a(int paramInt)
  {
    for (;;)
    {
      ArrayList localArrayList;
      int i1;
      synchronized (((h)this.m.get(paramInt)).c)
      {
        if ((this.g == 0.0D) && (this.h == 0.0D)) {
          return ???;
        }
        localArrayList = new ArrayList();
        i1 = 0;
        if (i1 >= ???.length)
        {
          g[] arrayOfg2 = (g[])localArrayList.toArray(new g[localArrayList.size()]);
          return arrayOfg2;
        }
      }
      if (???[i1].a() >= this.g)
      {
        if (???[i1].a() > this.g + this.h)
        {
          localArrayList.add(???[i1]);
          continue;
        }
        localArrayList.add(???[i1]);
      }
      else
      {
        if (localArrayList.isEmpty()) {
          localArrayList.add(???[i1]);
        }
        localArrayList.set(0, ???[i1]);
      }
      i1++;
    }
  }
  
  private String[] a(float paramFloat)
  {
    int i1 = 0;
    int i2 = -1 + getGraphViewStyle().c();
    if (i2 < 0) {
      i2 = (int)(paramFloat / (2 * this.x.intValue()));
    }
    String[] arrayOfString = new String[i2 + 1];
    double d1 = b(false);
    double d2 = a(false);
    for (;;)
    {
      if (i1 > i2) {
        return arrayOfString;
      }
      arrayOfString[i1] = a(d1 + (d2 - d1) * i1 / i2, true);
      i1++;
    }
  }
  
  private String[] b(float paramFloat)
  {
    double d1 = 0.0D;
    for (;;)
    {
      int i1;
      try
      {
        i1 = -1 + getGraphViewStyle().d();
        if (i1 >= 0) {
          break label165;
        }
        i2 = (int)(paramFloat / (3 * this.w.intValue()));
        String[] arrayOfString = new String[i2 + 1];
        double d2 = getMinY();
        double d3 = getMaxY();
        double d4 = d3;
        if (d4 == d2)
        {
          int i3;
          if (d4 == d1)
          {
            d4 = 1.0D;
            i3 = 0;
            if (i3 > i2) {
              return arrayOfString;
            }
          }
          else
          {
            d4 *= 1.05D;
            d1 = 0.95D * d2;
            continue;
          }
          int i4 = i2 - i3;
          double d5 = d1 + (d4 - d1) * i3 / i2;
          arrayOfString[i4] = a(d5, false);
          i3++;
          continue;
        }
        d1 = d2;
      }
      finally {}
      continue;
      label165:
      int i2 = i1;
    }
  }
  
  protected double a(boolean paramBoolean)
  {
    double d2;
    if ((!paramBoolean) && (this.h != 0.0D))
    {
      d2 = this.g + this.h;
      return d2;
    }
    if (this.m.size() > 0)
    {
      g[] arrayOfg1 = ((h)this.m.get(0)).c;
      if (arrayOfg1.length == 0) {}
      for (double d1 = 0.0D;; d1 = arrayOfg1[(-1 + arrayOfg1.length)].a())
      {
        d2 = d1;
        for (int i1 = 1; i1 < this.m.size(); i1++)
        {
          g[] arrayOfg2 = ((h)this.m.get(i1)).c;
          if (arrayOfg2.length > 0) {
            d2 = Math.max(d2, arrayOfg2[(-1 + arrayOfg2.length)].a());
          }
        }
        break;
      }
    }
    return 0.0D;
  }
  
  @Deprecated
  protected String a(double paramDouble, boolean paramBoolean)
  {
    if (this.v != null)
    {
      String str = this.v.a(paramDouble, paramBoolean);
      if (str != null) {
        return str;
      }
    }
    int i1;
    double d1;
    label66:
    double d2;
    if (paramBoolean)
    {
      i1 = 1;
      if (this.l[i1] == null)
      {
        this.l[i1] = NumberFormat.getNumberInstance();
        if (!paramBoolean) {
          break label119;
        }
        d1 = a(false);
        if (!paramBoolean) {
          break label128;
        }
        d2 = b(false);
        label77:
        if (d1 - d2 >= 0.1D) {
          break label137;
        }
        this.l[i1].setMaximumFractionDigits(6);
      }
    }
    for (;;)
    {
      return this.l[i1].format(paramDouble);
      i1 = 0;
      break;
      label119:
      d1 = getMaxY();
      break label66;
      label128:
      d2 = getMinY();
      break label77;
      label137:
      if (d1 - d2 < 1.0D) {
        this.l[i1].setMaximumFractionDigits(4);
      } else if (d1 - d2 < 20.0D) {
        this.l[i1].setMaximumFractionDigits(3);
      } else if (d1 - d2 < 100.0D) {
        this.l[i1].setMaximumFractionDigits(1);
      } else {
        this.l[i1].setMaximumFractionDigits(0);
      }
    }
  }
  
  protected void a(Canvas paramCanvas, float paramFloat1, float paramFloat2)
  {
    this.a.setARGB(180, 100, 100, 100);
    float f1 = 5 + 20 * this.m.size();
    float f2 = paramFloat2 - this.o - 10.0F;
    float f3;
    switch (e()[this.p.ordinal()])
    {
    default: 
      f3 = paramFloat1 - 20.0F - f1 - 10.0F;
      paramCanvas.drawRoundRect(new RectF(f2, f3, f2 + this.o, f1 + f3), 8.0F, 8.0F, this.a);
    }
    for (int i1 = 0;; i1++)
    {
      if (i1 >= this.m.size())
      {
        return;
        f3 = 10.0F;
        break;
        f3 = paramFloat1 / 2.0F - f1 / 2.0F;
        break;
      }
      this.a.setColor(((h)this.m.get(i1)).b.a);
      paramCanvas.drawRect(new RectF(f2 + 5.0F, f3 + 5.0F + i1 * 20, f2 + 5.0F + 15, f3 + 20 * (i1 + 1)), this.a);
      if (((h)this.m.get(i1)).a != null)
      {
        this.a.setColor(-1);
        this.a.setTextAlign(Paint.Align.LEFT);
        paramCanvas.drawText(((h)this.m.get(i1)).a, 5.0F + (f2 + 5.0F + 15), f3 + 15 + i1 * 20, this.a);
      }
    }
  }
  
  protected abstract void a(Canvas paramCanvas, g[] paramArrayOfg, float paramFloat1, float paramFloat2, float paramFloat3, double paramDouble1, double paramDouble2, double paramDouble3, double paramDouble4, float paramFloat4, i parami);
  
  public boolean a()
  {
    return this.f;
  }
  
  protected double b(boolean paramBoolean)
  {
    double d2;
    if ((!paramBoolean) && (this.h != 0.0D))
    {
      d2 = this.g;
      return d2;
    }
    if (this.m.size() > 0)
    {
      g[] arrayOfg1 = ((h)this.m.get(0)).c;
      if (arrayOfg1.length == 0) {}
      for (double d1 = 0.0D;; d1 = arrayOfg1[0].a())
      {
        d2 = d1;
        for (int i1 = 1; i1 < this.m.size(); i1++)
        {
          g[] arrayOfg2 = ((h)this.m.get(i1)).c;
          if (arrayOfg2.length > 0) {
            d2 = Math.min(d2, arrayOfg2[0].a());
          }
        }
        break;
      }
    }
    return 0.0D;
  }
  
  public boolean b()
  {
    return this.e;
  }
  
  public void c()
  {
    if (!this.A) {
      this.c = null;
    }
    if (!this.z) {
      this.b = null;
    }
    this.l[0] = null;
    this.l[1] = null;
    this.w = null;
    this.x = null;
    invalidate();
    this.i.invalidate();
    this.u.invalidate();
  }
  
  public void d()
  {
    if (!this.e) {
      throw new IllegalStateException("This GraphView is not scrollable.");
    }
    this.g = (a(true) - this.h);
    c();
  }
  
  public a getCustomLabelFormatter()
  {
    return this.v;
  }
  
  public j getGraphViewStyle()
  {
    return this.t;
  }
  
  public f getLegendAlign()
  {
    return this.p;
  }
  
  public float getLegendWidth()
  {
    return this.o;
  }
  
  protected double getMaxY()
  {
    double d1;
    if (this.q) {
      d1 = this.r;
    }
    g[] arrayOfg;
    int i2;
    for (;;)
    {
      return d1;
      d1 = -2147483648.0D;
      for (int i1 = 0; i1 < this.m.size(); i1++)
      {
        arrayOfg = a(i1);
        i2 = 0;
        if (i2 < arrayOfg.length) {
          break label57;
        }
      }
    }
    label57:
    if (arrayOfg[i2].b() > d1) {}
    for (double d2 = arrayOfg[i2].b();; d2 = d1)
    {
      i2++;
      d1 = d2;
      break;
    }
  }
  
  protected double getMinY()
  {
    double d1;
    if (this.q) {
      d1 = this.s;
    }
    g[] arrayOfg;
    int i2;
    for (;;)
    {
      return d1;
      d1 = 2147483647.0D;
      for (int i1 = 0; i1 < this.m.size(); i1++)
      {
        arrayOfg = a(i1);
        i2 = 0;
        if (i2 < arrayOfg.length) {
          break label57;
        }
      }
    }
    label57:
    if (arrayOfg[i2].b() < d1) {}
    for (double d2 = arrayOfg[i2].b();; d2 = d1)
    {
      i2++;
      d1 = d2;
      break;
    }
  }
  
  public void setCustomLabelFormatter(a parama)
  {
    this.v = parama;
  }
  
  public void setDisableTouch(boolean paramBoolean)
  {
    this.f = paramBoolean;
  }
  
  public void setGraphViewStyle(j paramj)
  {
    this.t = paramj;
    this.w = null;
  }
  
  public void setHorizontalLabels(String[] paramArrayOfString)
  {
    if (paramArrayOfString != null) {}
    for (boolean bool = true;; bool = false)
    {
      this.z = bool;
      this.b = paramArrayOfString;
      return;
    }
  }
  
  public void setLegendAlign(f paramf)
  {
    this.p = paramf;
  }
  
  public void setLegendWidth(float paramFloat)
  {
    this.o = paramFloat;
  }
  
  public void setManualYAxis(boolean paramBoolean)
  {
    this.q = paramBoolean;
  }
  
  public void setScalable(boolean paramBoolean)
  {
    try
    {
      this.k = paramBoolean;
      if ((paramBoolean) && (this.j == null))
      {
        this.e = true;
        this.j = new com.c.a.a.b(getContext(), new c(this));
      }
      return;
    }
    finally {}
  }
  
  public void setScrollable(boolean paramBoolean)
  {
    this.e = paramBoolean;
  }
  
  public void setShowLegend(boolean paramBoolean)
  {
    this.n = paramBoolean;
  }
  
  public void setTitle(String paramString)
  {
    this.d = paramString;
  }
  
  public void setVerticalLabels(String[] paramArrayOfString)
  {
    if (paramArrayOfString != null) {}
    for (boolean bool = true;; bool = false)
    {
      this.A = bool;
      this.c = paramArrayOfString;
      return;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.c.a.b
 * JD-Core Version:    0.7.0.1
 */