package com.viber.voip.stickers.ui;

import android.graphics.Bitmap;
import android.graphics.Picture;
import android.widget.ImageView;
import com.viber.voip.stickers.ba;
import com.viber.voip.stickers.bb;
import com.viber.voip.stickers.c.a;
import com.viber.voip.stickers.h;
import com.viber.voip.stickers.r;

class d
{
  private ImageView b;
  private Object c;
  private h d;
  private a e;
  private boolean f;
  
  public d(b paramb, ImageView paramImageView, boolean paramBoolean)
  {
    this.b = paramImageView;
    this.f = paramBoolean;
  }
  
  private void a()
  {
    if (this.d != null)
    {
      this.d.d();
      this.d = null;
    }
  }
  
  private void a(Bitmap paramBitmap)
  {
    this.b.setImageBitmap(paramBitmap);
    a();
  }
  
  private void a(Picture paramPicture)
  {
    this.b.setImageDrawable(new com.viber.voip.stickers.f.b(paramPicture));
    a();
  }
  
  private void a(h paramh)
  {
    this.b.setImageBitmap(paramh.a());
    b(paramh);
  }
  
  private void b(h paramh)
  {
    h localh = this.d;
    this.d = paramh;
    paramh.b();
    if (localh != null) {
      localh.d();
    }
  }
  
  private boolean b(boolean paramBoolean1, boolean paramBoolean2, ba paramba, boolean paramBoolean3, boolean paramBoolean4, c paramc)
  {
    h localh = b.a(this.a).b(this.e, this.f, paramBoolean2, paramba);
    if (localh != null)
    {
      a(localh);
      return true;
    }
    a(b.a(this.a).a(this.e));
    if (!paramBoolean4) {
      this.c = b.a(this.a).a(this.e, paramBoolean1, this.f, paramBoolean2, paramba, new e(this, paramc, paramBoolean3));
    }
    return false;
  }
  
  private boolean c(boolean paramBoolean1, boolean paramBoolean2, ba paramba, boolean paramBoolean3, boolean paramBoolean4, c paramc)
  {
    int i;
    int j;
    label32:
    bb localbb;
    if (ba.b == paramba)
    {
      i = this.e.p;
      if (ba.b != paramba) {
        break label118;
      }
      j = this.e.q;
      localbb = r.a().e();
      if (!this.f) {
        break label146;
      }
    }
    label146:
    for (String str = this.e.v;; str = this.e.u)
    {
      a(localbb.a(i, j, str, paramBoolean2, paramba, true));
      if (paramc != null) {
        paramc.a(true);
      }
      return true;
      if (paramBoolean2)
      {
        i = this.e.l;
        break;
      }
      i = this.e.n;
      break;
      label118:
      if (paramBoolean2)
      {
        j = this.e.m;
        break label32;
      }
      j = this.e.o;
      break label32;
    }
  }
  
  public void a(a parama)
  {
    if ((this.e != null) && (this.c != null)) {
      b.a(this.a).b(this.c);
    }
    if (this.d != null)
    {
      this.d.d();
      this.d = null;
    }
    this.c = null;
    this.e = parama;
  }
  
  public boolean a(boolean paramBoolean1, boolean paramBoolean2, ba paramba, boolean paramBoolean3, boolean paramBoolean4, c paramc)
  {
    if ((this.e.j()) && (!paramBoolean4)) {
      return c(paramBoolean1, paramBoolean2, paramba, paramBoolean3, paramBoolean4, paramc);
    }
    return b(paramBoolean1, paramBoolean2, paramba, paramBoolean3, paramBoolean4, paramc);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.stickers.ui.d
 * JD-Core Version:    0.7.0.1
 */