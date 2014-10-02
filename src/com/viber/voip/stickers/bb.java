package com.viber.voip.stickers;

import android.annotation.SuppressLint;
import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.graphics.Bitmap.Config;
import android.graphics.Picture;
import android.text.TextUtils;
import android.widget.ImageView;
import com.viber.svg.jni.SvgObject;
import com.viber.voip.messages.extras.image.h;
import com.viber.voip.util.gl;
import java.io.File;
import java.io.IOException;

public class bb
  extends bk
{
  public static final String a = bb.class.getSimpleName();
  private final be c = new be(this, null);
  private final bd d = new bd(this, 20);
  
  private com.viber.voip.stickers.f.a a(String paramString, ba paramba)
  {
    if (ba.b == paramba) {
      return b(paramString);
    }
    return be.a(this.c, paramString);
  }
  
  private void a(long paramLong, String paramString, Picture paramPicture, boolean paramBoolean1, ba paramba, boolean paramBoolean2)
  {
    if ((TextUtils.isEmpty(paramString)) || (ba.b == paramba)) {}
    synchronized (this.d)
    {
      com.viber.voip.stickers.f.a locala;
      for (;;)
      {
        locala = a(paramString, paramba);
        if (!paramBoolean1) {
          break;
        }
        locala.b = paramPicture;
        if (paramBoolean2)
        {
          b(locala.a);
          locala.a = -1L;
        }
        return;
        ??? = be.b(this.c);
      }
      locala.c = paramPicture;
    }
  }
  
  @SuppressLint({"InlinedApi"})
  public static final void a(ImageView paramImageView, boolean paramBoolean)
  {
    if (gl.b())
    {
      int i = 0;
      if (paramBoolean) {}
      for (;;)
      {
        paramImageView.setLayerType(i, null);
        return;
        i = 1;
      }
    }
    boolean bool = false;
    if (paramBoolean) {}
    for (;;)
    {
      paramImageView.setDrawingCacheEnabled(bool);
      return;
      bool = true;
    }
  }
  
  private com.viber.voip.stickers.f.a d(String paramString)
  {
    try
    {
      com.viber.voip.stickers.f.a locala = new com.viber.voip.stickers.f.a();
      locala.a = c(paramString);
      return locala;
    }
    catch (IOException localIOException)
    {
      localIOException.printStackTrace();
    }
    return null;
  }
  
  public Bitmap a(com.viber.voip.stickers.c.a parama, com.viber.voip.stickers.f.a parama1, String paramString1, String paramString2, int paramInt1, int paramInt2, boolean paramBoolean1, ba paramba, boolean paramBoolean2)
  {
    Bitmap localBitmap;
    if (paramba != ba.c)
    {
      a(parama1.a, new Picture(), paramInt1, paramInt2, paramString1, paramBoolean1, paramba, true, paramBoolean2);
      localBitmap = null;
    }
    do
    {
      return localBitmap;
      localBitmap = Bitmap.createBitmap(paramInt1, paramInt2, Bitmap.Config.ARGB_8888);
      a(parama1.a, localBitmap, paramInt1, paramInt2);
    } while (h.a(localBitmap, new File(paramString2), 100, Bitmap.CompressFormat.PNG, false) != null);
    return null;
  }
  
  public Picture a(int paramInt1, int paramInt2, String paramString, boolean paramBoolean, ba paramba)
  {
    return a(paramInt1, paramInt2, paramString, paramBoolean, paramba, false);
  }
  
  public Picture a(int paramInt1, int paramInt2, String paramString, boolean paramBoolean1, ba paramba, boolean paramBoolean2)
  {
    Object localObject1;
    if (ba.b == paramba) {
      localObject1 = this.d;
    }
    com.viber.voip.stickers.f.a locala;
    for (;;)
    {
      if (paramBoolean2) {}
      try
      {
        locala = a(paramString, paramba);
        if (((paramBoolean1) && (locala.b == null)) || ((!paramBoolean1) && (locala.c == null)))
        {
          Picture localPicture1 = new Picture();
          long l = locala.a;
          if (l == -1L) {}
          try
          {
            locala.a = c(paramString);
            a(locala.a, localPicture1, paramInt1, paramInt2, paramString, paramBoolean1, paramba, paramBoolean2);
            if (!paramBoolean2)
            {
              b(locala.a);
              locala.a = -1L;
              return localPicture1;
              localObject1 = be.b(this.c);
              continue;
              locala = new com.viber.voip.stickers.f.a(-1L);
            }
          }
          catch (IOException localIOException)
          {
            for (;;)
            {
              localIOException.printStackTrace();
            }
          }
        }
        else if (!paramBoolean1) {}
      }
      finally {}
    }
    for (Picture localPicture2 = locala.b;; localPicture2 = locala.c) {
      return localPicture2;
    }
  }
  
  public com.viber.voip.stickers.f.a a(String paramString)
  {
    return be.a(this.c, paramString);
  }
  
  public void a()
  {
    be.a(this.c);
  }
  
  public void a(long paramLong, Picture paramPicture, int paramInt1, int paramInt2, String paramString, boolean paramBoolean1, ba paramba, boolean paramBoolean2)
  {
    a(paramLong, paramPicture, paramInt1, paramInt2, paramString, paramBoolean1, paramba, paramBoolean2, true);
  }
  
  public void a(long paramLong, Picture paramPicture, int paramInt1, int paramInt2, String paramString, boolean paramBoolean1, ba paramba, boolean paramBoolean2, boolean paramBoolean3)
  {
    super.a(paramLong, paramPicture, paramInt1, paramInt2);
    if (paramBoolean2) {
      a(paramLong, paramString, paramPicture, paramBoolean1, paramba, paramBoolean3);
    }
  }
  
  public void a(String paramString, com.viber.voip.stickers.f.a parama)
  {
    be.a(this.c, paramString, parama);
  }
  
  public int[] a(long paramLong)
  {
    if (paramLong != -1L) {
      return new int[] { SvgObject.svgGetWidth(paramLong), SvgObject.svgGetHeight(paramLong) };
    }
    return null;
  }
  
  public int[] a(com.viber.voip.stickers.f.a parama)
  {
    return a(parama.a);
  }
  
  public com.viber.voip.stickers.f.a b(String paramString)
  {
    synchronized (this.d)
    {
      com.viber.voip.stickers.f.a locala = (com.viber.voip.stickers.f.a)this.d.get(paramString);
      if (locala == null)
      {
        locala = d(paramString);
        this.d.put(paramString, locala);
      }
      return locala;
    }
  }
  
  public void b(long paramLong)
  {
    if (paramLong != -1L) {
      SvgObject.svgDestroy(paramLong);
    }
  }
  
  public void b(com.viber.voip.stickers.f.a parama)
  {
    if ((parama != null) && (parama.a != -1L)) {
      SvgObject.svgDestroy(parama.a);
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.stickers.bb
 * JD-Core Version:    0.7.0.1
 */