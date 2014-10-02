package com.viber.voip.stickers;

import com.viber.voip.stickers.c.a;
import com.viber.voip.stickers.c.d;
import java.io.FileNotFoundException;
import java.io.IOException;

public class ar
{
  private static final String a = ar.class.getSimpleName();
  private r b;
  
  public ar(r paramr)
  {
    this.b = paramr;
  }
  
  private void a(String paramString) {}
  
  public void a(a parama)
  {
    a("sticker not ready " + parama.b);
    int i = parama.t;
    if (i == 0) {}
    for (d locald = null; locald != null; locald = this.b.b(i))
    {
      this.b.a(locald);
      return;
    }
    this.b.a(parama);
  }
  
  public void a(a parama, boolean paramBoolean1, boolean paramBoolean2, ba paramba, IOException paramIOException)
  {
    a("loadFailed " + parama.b + " frame:" + paramBoolean1 + ", port:" + paramBoolean2 + ", size:" + paramba + ", e:" + paramIOException);
    if ((paramIOException instanceof FileNotFoundException))
    {
      parama.h();
      if (!parama.g()) {
        a(parama);
      }
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.stickers.ar
 * JD-Core Version:    0.7.0.1
 */