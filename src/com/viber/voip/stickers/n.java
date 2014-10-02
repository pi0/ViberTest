package com.viber.voip.stickers;

import android.graphics.Bitmap;
import android.util.SparseArray;
import com.viber.voip.stickers.c.a;

class n
  implements bi
{
  private SparseArray<Bitmap> b = new SparseArray();
  
  private n(b paramb) {}
  
  public Bitmap a(a parama)
  {
    return (Bitmap)this.b.get(parama.b);
  }
  
  public void a()
  {
    this.b.clear();
  }
  
  public void a(a parama, Bitmap paramBitmap)
  {
    this.b.put(parama.b, paramBitmap);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.stickers.n
 * JD-Core Version:    0.7.0.1
 */