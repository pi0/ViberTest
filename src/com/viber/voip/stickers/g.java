package com.viber.voip.stickers;

import com.viber.voip.ViberApplication;
import com.viber.voip.stickers.c.a;
import com.viber.voip.util.fd;
import com.viber.voip.util.gj;

class g
  extends fd<String, h>
{
  public g(b paramb)
  {
    super(ViberApplication.getInstance().getApplicationContext(), "StickerBitmapLoader.BitmapCache", 0.1F, 0.0625F);
  }
  
  protected int a(String paramString, h paramh)
  {
    return paramh.c();
  }
  
  public h a(a parama, boolean paramBoolean1, boolean paramBoolean2, ba paramba)
  {
    String str = parama.a(paramBoolean1, paramBoolean2, paramba);
    for (;;)
    {
      try
      {
        if (!gj.c(str))
        {
          localh = (h)get(str);
          if ((localh != null) && (localh.a() == null))
          {
            remove(str);
            localh = null;
          }
          return localh;
        }
      }
      finally {}
      h localh = null;
    }
  }
  
  public void a(a parama, boolean paramBoolean1, boolean paramBoolean2, ba paramba, h paramh)
  {
    if ((paramh == null) || (paramh.a() == null)) {
      return;
    }
    this.a.a(paramba);
    String str = parama.a(paramBoolean1, paramBoolean2, paramba);
    try
    {
      if (get(str) == null)
      {
        paramh.b();
        put(str, paramh);
      }
      return;
    }
    finally {}
  }
  
  protected void a(boolean paramBoolean, String paramString, h paramh1, h paramh2)
  {
    paramh1.d();
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.stickers.g
 * JD-Core Version:    0.7.0.1
 */