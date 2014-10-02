package com.viber.voip.ui;

import android.view.View;
import android.widget.ImageView;

public class ai
{
  private int a;
  private boolean b;
  public ImageView c;
  public int d = 0;
  public View e;
  public View f;
  public int g;
  public int h;
  public int i;
  public int j = 2147483647;
  private boolean k;
  
  public ai()
  {
    this.k = true;
  }
  
  public ai(boolean paramBoolean)
  {
    this.k = paramBoolean;
  }
  
  private void a()
  {
    if (this.e != null) {
      this.e.setVisibility(8);
    }
    if (this.c != null) {
      this.c.setVisibility(8);
    }
  }
  
  private void b()
  {
    if (this.e != null) {
      this.e.setVisibility(0);
    }
    if (this.c != null) {
      this.c.setVisibility(0);
    }
    if ((this.f != null) && (!this.k))
    {
      View localView = this.f;
      boolean bool = this.b;
      int m = 0;
      if (bool) {
        m = this.a;
      }
      localView.setBackgroundResource(m);
    }
  }
  
  public void a(int paramInt1, int paramInt2)
  {
    this.i = paramInt1;
  }
  
  public void a(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      if (this.i > 0) {}
      for (boolean bool = false;; bool = true)
      {
        this.b = bool;
        b();
        return;
      }
    }
    a();
  }
  
  public void b(int paramInt)
  {
    if (paramInt > this.d) {
      paramInt = this.d;
    }
    this.i = paramInt;
    if (this.i > 0) {}
    for (boolean bool = false;; bool = true)
    {
      this.b = bool;
      return;
    }
  }
  
  public void c(int paramInt)
  {
    this.a = paramInt;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.ui.ai
 * JD-Core Version:    0.7.0.1
 */