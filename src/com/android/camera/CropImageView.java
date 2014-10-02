package com.android.camera;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.MotionEvent;
import java.util.ArrayList;
import java.util.Iterator;

class CropImageView
  extends s
{
  ArrayList<m> a = new ArrayList();
  m b = null;
  float c;
  float d;
  int e;
  
  public CropImageView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  private void a(MotionEvent paramMotionEvent)
  {
    int k;
    for (int i = 0;; i++)
    {
      int j = this.a.size();
      k = 0;
      if (i >= j) {
        break;
      }
      m localm2 = (m)this.a.get(i);
      localm2.a(false);
      localm2.c();
    }
    m localm1;
    do
    {
      k++;
      if (k >= this.a.size()) {
        break;
      }
      localm1 = (m)this.a.get(k);
    } while (localm1.a(paramMotionEvent.getX(), paramMotionEvent.getY()) == 1);
    if (!localm1.a())
    {
      localm1.a(true);
      localm1.c();
    }
    invalidate();
  }
  
  private void b(m paramm)
  {
    Rect localRect = paramm.d;
    int i = Math.max(0, getLeft() - localRect.left);
    int j = Math.min(0, getRight() - localRect.right);
    int k = Math.max(0, getTop() - localRect.top);
    int m = Math.min(0, getBottom() - localRect.bottom);
    if (i != 0) {
      if (k == 0) {
        break label98;
      }
    }
    for (;;)
    {
      if ((i != 0) || (k != 0)) {
        b(i, k);
      }
      return;
      i = j;
      break;
      label98:
      k = m;
    }
  }
  
  private void c(m paramm)
  {
    Rect localRect = paramm.d;
    float f1 = localRect.width();
    float f2 = localRect.height();
    float f3 = getWidth();
    float f4 = getHeight();
    float f5 = Math.max(1.0F, Math.min(0.6F * (f3 / f1), 0.6F * (f4 / f2)) * b());
    if (Math.abs(f5 - b()) / f5 > 0.1D)
    {
      float[] arrayOfFloat = new float[2];
      arrayOfFloat[0] = paramm.e.centerX();
      arrayOfFloat[1] = paramm.e.centerY();
      getImageMatrix().mapPoints(arrayOfFloat);
      a(f5, arrayOfFloat[0], arrayOfFloat[1], 300.0F);
    }
    b(paramm);
  }
  
  protected void a(float paramFloat1, float paramFloat2)
  {
    super.a(paramFloat1, paramFloat2);
    for (int i = 0; i < this.a.size(); i++)
    {
      m localm = (m)this.a.get(i);
      localm.f.postTranslate(paramFloat1, paramFloat2);
      localm.c();
    }
  }
  
  protected void a(float paramFloat1, float paramFloat2, float paramFloat3)
  {
    super.a(paramFloat1, paramFloat2, paramFloat3);
    Iterator localIterator = this.a.iterator();
    while (localIterator.hasNext())
    {
      m localm = (m)localIterator.next();
      localm.f.set(getImageMatrix());
      localm.c();
    }
  }
  
  public void a(m paramm)
  {
    this.a.add(paramm);
    invalidate();
  }
  
  protected void onDraw(Canvas paramCanvas)
  {
    super.onDraw(paramCanvas);
    for (int i = 0; i < this.a.size(); i++) {
      ((m)this.a.get(i)).a(paramCanvas);
    }
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onLayout(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
    if (this.h.b() != null)
    {
      Iterator localIterator = this.a.iterator();
      while (localIterator.hasNext())
      {
        m localm = (m)localIterator.next();
        localm.f.set(getImageMatrix());
        localm.c();
        if (localm.b) {
          c(localm);
        }
      }
    }
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    CropImage localCropImage = (CropImage)getContext();
    if (localCropImage.b) {
      return false;
    }
    switch (paramMotionEvent.getAction())
    {
    default: 
      switch (paramMotionEvent.getAction())
      {
      }
      break;
    }
    for (;;)
    {
      return true;
      if (localCropImage.a)
      {
        a(paramMotionEvent);
        break;
      }
      for (int k = 0; k < this.a.size(); k++)
      {
        m localm2 = (m)this.a.get(k);
        int m = localm2.a(paramMotionEvent.getX(), paramMotionEvent.getY());
        if (m != 1)
        {
          this.e = m;
          this.b = localm2;
          this.c = paramMotionEvent.getX();
          this.d = paramMotionEvent.getY();
          m localm3 = this.b;
          if (m == 32) {}
          for (n localn = n.b;; localn = n.c)
          {
            localm3.a(localn);
            break;
          }
        }
      }
      if (localCropImage.a) {
        for (int i = 0; i < this.a.size(); i++)
        {
          m localm1 = (m)this.a.get(i);
          if (localm1.a())
          {
            localCropImage.c = localm1;
            int j = 0;
            if (j < this.a.size())
            {
              if (j == i) {}
              for (;;)
              {
                j++;
                break;
                ((m)this.a.get(j)).b(true);
              }
            }
            c(localm1);
            ((CropImage)getContext()).a = false;
            return true;
          }
        }
      }
      if (this.b != null)
      {
        c(this.b);
        this.b.a(n.a);
      }
      this.b = null;
      break;
      if (localCropImage.a)
      {
        a(paramMotionEvent);
        break;
      }
      if (this.b == null) {
        break;
      }
      this.b.a(this.e, paramMotionEvent.getX() - this.c, paramMotionEvent.getY() - this.d);
      this.c = paramMotionEvent.getX();
      this.d = paramMotionEvent.getY();
      b(this.b);
      break;
      a(true, true);
      continue;
      if (b() == 1.0F) {
        a(true, true);
      }
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.android.camera.CropImageView
 * JD-Core Version:    0.7.0.1
 */