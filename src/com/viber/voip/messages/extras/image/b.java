package com.viber.voip.messages.extras.image;

import android.content.Context;
import android.net.Uri;
import android.os.Handler;
import com.viber.voip.ViberApplication;
import com.viber.voip.dc;
import com.viber.voip.dk;
import com.viber.voip.messages.ui.media.SendMediaDataContainer;
import java.util.HashSet;
import java.util.Set;

public class b
{
  private static b a;
  private Set<e> b = new HashSet();
  private Set<Integer> c = new HashSet();
  private Set<Integer> d = new HashSet();
  private Handler e = dc.a(dk.g);
  
  public static b a()
  {
    if (a == null) {}
    try
    {
      a = new b();
      return a;
    }
    finally {}
  }
  
  private void a(int paramInt1, SendMediaDataContainer paramSendMediaDataContainer, int paramInt2, int paramInt3)
  {
    dc.a(dk.a).post(new c(this, paramInt1, paramSendMediaDataContainer, paramInt2, paramInt3));
  }
  
  private void a(int paramInt, SendMediaDataContainer[] paramArrayOfSendMediaDataContainer)
  {
    dc.a(dk.a).post(new d(this, paramInt, paramArrayOfSendMediaDataContainer));
  }
  
  private static void b(String paramString)
  {
    ViberApplication.log(3, "ImagePreProcessor", paramString);
  }
  
  public void a(int paramInt)
  {
    synchronized (this.c)
    {
      this.c.add(Integer.valueOf(paramInt));
      return;
    }
  }
  
  public void a(int paramInt1, Context paramContext, Uri[] paramArrayOfUri, String paramString, l paraml, int paramInt2)
  {
    this.e.post(new f(this, paramInt1, paramContext, paramArrayOfUri, paramString, paraml, 1280, paramInt2, true));
  }
  
  public void a(int paramInt1, Context paramContext, Uri[] paramArrayOfUri, String paramString, l paraml, int paramInt2, int paramInt3)
  {
    this.e.post(new f(this, paramInt1, paramContext, paramArrayOfUri, paramString, paraml, paramInt2, paramInt3, false));
  }
  
  public void a(e parame)
  {
    synchronized (this.b)
    {
      this.b.add(parame);
      return;
    }
  }
  
  public void b(int paramInt)
  {
    synchronized (this.d)
    {
      this.d.add(Integer.valueOf(paramInt));
      return;
    }
  }
  
  public void b(e parame)
  {
    synchronized (this.b)
    {
      this.b.remove(parame);
      return;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.extras.image.b
 * JD-Core Version:    0.7.0.1
 */