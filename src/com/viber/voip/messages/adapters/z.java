package com.viber.voip.messages.adapters;

import android.view.LayoutInflater;
import android.view.View;
import com.viber.voip.stickers.ui.StickerGrid;

class z
{
  public StickerGrid a;
  public t b;
  public y[] c;
  private int e;
  
  public z(q paramq, int paramInt)
  {
    this.a = ((StickerGrid)paramq.a.inflate(2130903250, null));
    this.c = new y[paramInt];
    for (int i = 0; i < paramInt; i++)
    {
      y localy = new y(paramq);
      this.c[i] = localy;
      this.a.addView(localy.a);
    }
  }
  
  public void a()
  {
    y[] arrayOfy = this.c;
    int i = arrayOfy.length;
    for (int j = 0; j < i; j++) {
      arrayOfy[j].a();
    }
  }
  
  public void a(t paramt, int paramInt)
  {
    if ((paramt != this.b) || (this.e != q.f(this.d)))
    {
      this.e = q.f(this.d);
      if ((this.b != null) && (this.b.b == this))
      {
        this.b.b = null;
        v[] arrayOfv = this.b.a;
        int k = arrayOfv.length;
        for (int m = 0; m < k; m++) {
          arrayOfv[m].b();
        }
      }
      this.b = paramt;
      paramt.b = this;
      StickerGrid localStickerGrid = this.a;
      if (paramInt >= -1 + this.d.getCount()) {}
      for (boolean bool = true;; bool = false)
      {
        localStickerGrid.setLast(bool);
        this.a.a();
        for (int i = 0; i < paramt.a.length; i++)
        {
          v localv = paramt.a[i];
          y localy2 = this.c[i];
          localy2.f = localv;
          v.a(localv, localy2);
          localy2.a.setVisibility(0);
          this.a.a(localy2.a, v.a(localv));
        }
      }
      for (int j = paramt.a.length; j < this.c.length; j++)
      {
        y localy1 = this.c[j];
        localy1.f = null;
        localy1.a.setVisibility(8);
      }
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.adapters.z
 * JD-Core Version:    0.7.0.1
 */