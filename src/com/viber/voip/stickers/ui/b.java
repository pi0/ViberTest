package com.viber.voip.stickers.ui;

import android.widget.ImageView;
import com.viber.voip.stickers.ba;
import com.viber.voip.stickers.bb;
import com.viber.voip.stickers.c.a;
import com.viber.voip.stickers.j;

public class b
{
  private com.viber.voip.stickers.b a;
  private d b;
  private d c;
  
  public b(com.viber.voip.stickers.b paramb, ImageView paramImageView1, ImageView paramImageView2)
  {
    this.a = paramb;
    this.b = new d(this, paramImageView1, false);
    this.c = new d(this, paramImageView2, true);
  }
  
  private void a(d paramd, boolean paramBoolean)
  {
    ImageView localImageView = d.a(paramd);
    if (d.b(paramd).j()) {}
    for (;;)
    {
      bb.a(localImageView, paramBoolean);
      return;
      paramBoolean = true;
    }
  }
  
  public void a()
  {
    if ((d.c(this.b) != null) && ((d.c(this.b) instanceof j)))
    {
      j localj = (j)d.c(this.b);
      this.a.a(localj);
      localj.b();
    }
  }
  
  public void a(a parama)
  {
    this.b.a(parama);
    this.c.a(parama);
  }
  
  public void a(boolean paramBoolean)
  {
    if (paramBoolean) {}
    for (d locald = this.c;; locald = this.b)
    {
      d.a(locald, null);
      return;
    }
  }
  
  public boolean a(boolean paramBoolean1, boolean paramBoolean2, ba paramba)
  {
    return a(false, paramBoolean1, paramBoolean2, paramba, null);
  }
  
  public boolean a(boolean paramBoolean1, boolean paramBoolean2, ba paramba, c paramc)
  {
    return a(false, paramBoolean1, false, paramBoolean2, paramba, paramc);
  }
  
  public boolean a(boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3, ba paramba, c paramc)
  {
    return a(paramBoolean1, paramBoolean2, false, paramBoolean3, paramba, paramc);
  }
  
  public boolean a(boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3, boolean paramBoolean4, ba paramba, c paramc)
  {
    if (paramBoolean2) {}
    for (d locald = this.c;; locald = this.b)
    {
      a(locald, paramBoolean3);
      boolean bool = locald.a(paramBoolean1, paramBoolean4, paramba, true, paramBoolean3, paramc);
      if (!paramBoolean2) {
        this.c.a(paramBoolean1, paramBoolean4, paramba, false, paramBoolean3, null);
      }
      return bool;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.stickers.ui.b
 * JD-Core Version:    0.7.0.1
 */