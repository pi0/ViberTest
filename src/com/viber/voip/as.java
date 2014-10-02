package com.viber.voip;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory.Options;
import android.net.Uri;
import android.os.Handler;
import android.util.Pair;
import com.viber.voip.messages.extras.image.h;
import com.viber.voip.util.o;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReadWriteLock;
import java.util.concurrent.locks.ReentrantReadWriteLock;

public class as
{
  private static final int a = 5 * h.a(0.5F);
  private static final int b;
  private static final int c;
  private av d;
  private o<Uri> e;
  private Pair<Integer, aw> f;
  private int g;
  private float h;
  private float i;
  private Context j;
  private Handler k;
  private Handler l;
  private final ReadWriteLock m = new ReentrantReadWriteLock();
  private final Object n = new Object();
  private List<ax> o = new ArrayList();
  
  static
  {
    int i1;
    if (a == 0)
    {
      i1 = 4;
      b = h.a(1280 / i1);
      if (h.a(640.0F) > 1280) {
        break label59;
      }
    }
    label59:
    for (int i2 = h.a(640.0F);; i2 = 1280)
    {
      c = i2;
      return;
      i1 = a;
      break;
    }
  }
  
  public as(Context paramContext, float paramFloat1, float paramFloat2, float paramFloat3)
  {
    this.e = new o(paramContext, "View media cache", paramFloat3);
    this.d = new av(this, null);
    this.j = paramContext;
    this.k = dc.a(dk.h);
    this.l = dc.a(dk.a);
    this.h = paramFloat1;
    this.i = paramFloat2;
  }
  
  private Bitmap a(Uri paramUri)
  {
    Lock localLock = this.m.readLock();
    try
    {
      localLock.lock();
      Bitmap localBitmap = (Bitmap)this.e.get(paramUri);
      return localBitmap;
    }
    finally
    {
      localLock.unlock();
    }
  }
  
  private Bitmap a(Uri paramUri, int paramInt, boolean paramBoolean)
  {
    try
    {
      Bitmap localBitmap = h.a(this.j, paramUri, paramInt, paramInt, paramBoolean);
      if ((!paramBoolean) && (localBitmap != null))
      {
        Lock localLock = this.m.writeLock();
        try
        {
          localLock.lock();
          this.e.put(paramUri, localBitmap);
          return localBitmap;
        }
        finally
        {
          localLock.unlock();
        }
      }
      return localBitmap;
    }
    catch (IOException localIOException)
    {
      return null;
    }
    catch (OutOfMemoryError localOutOfMemoryError)
    {
      localBitmap = null;
    }
  }
  
  private void a(int paramInt, aw paramaw)
  {
    this.l.post(new au(this, paramInt, paramaw));
  }
  
  private void a(Uri paramUri, aw paramaw)
  {
    BitmapFactory.Options localOptions = h.a(this.j, paramUri, c);
    if (localOptions != null)
    {
      float f1 = localOptions.outWidth;
      float f2 = localOptions.outHeight;
      float f3 = Math.min(Math.min(this.h / f1, 2.0F), Math.min(this.i / f2, 2.0F));
      paramaw.d = ((int)(f2 * f3));
      paramaw.c = ((int)(f1 * f3));
    }
  }
  
  private void f()
  {
    this.l.post(new at(this));
  }
  
  public aw a(int paramInt, Uri paramUri)
  {
    if (paramUri == null) {
      return null;
    }
    synchronized (this.n)
    {
      if ((this.f != null) && (((Integer)this.f.first).intValue() == paramInt))
      {
        aw localaw2 = (aw)this.f.second;
        return localaw2;
      }
    }
    Bitmap localBitmap = a(paramUri);
    if (localBitmap != null)
    {
      aw localaw1 = new aw(localBitmap, false);
      a(paramUri, localaw1);
      return localaw1;
    }
    return null;
  }
  
  public void a()
  {
    this.f = null;
    c();
  }
  
  public void a(float paramFloat1, float paramFloat2)
  {
    this.h = paramFloat1;
    this.i = paramFloat2;
  }
  
  public void a(int paramInt, Bitmap paramBitmap)
  {
    synchronized (this.n)
    {
      this.g = paramInt;
      this.f = new Pair(Integer.valueOf(paramInt), new aw(paramBitmap, true));
      Iterator localIterator = this.o.iterator();
      if (localIterator.hasNext()) {
        ((ax)localIterator.next()).a(((Integer)this.f.first).intValue(), (aw)this.f.second);
      }
    }
  }
  
  public void a(ax paramax)
  {
    if (paramax != null) {
      this.o.add(paramax);
    }
  }
  
  public void b()
  {
    this.f = null;
    Lock localLock = this.m.writeLock();
    try
    {
      localLock.lock();
      this.e.evictAll();
      return;
    }
    finally
    {
      localLock.unlock();
    }
  }
  
  public void b(int paramInt, Uri paramUri)
  {
    if (paramUri == null) {
      return;
    }
    Bitmap localBitmap = a(paramUri);
    if (localBitmap == null)
    {
      this.k.post(new ay(this, paramInt, paramUri));
      return;
    }
    aw localaw = new aw(localBitmap, false);
    a(paramUri, localaw);
    a(paramInt, localaw);
  }
  
  public void b(ax paramax)
  {
    if (paramax != null) {
      this.o.remove(paramax);
    }
  }
  
  public aw c(int paramInt, Uri paramUri)
  {
    if (paramUri == null) {
      return null;
    }
    synchronized (this.n)
    {
      if ((this.f != null) && (((Integer)this.f.first).intValue() == paramInt) && (this.f.second != null))
      {
        aw localaw2 = new aw(((aw)this.f.second).a, true);
        return localaw2;
      }
      Bitmap localBitmap = a(paramUri);
      if (localBitmap == null) {
        localBitmap = a(paramUri, b, false);
      }
      aw localaw1 = new aw(localBitmap, false);
      a(paramUri, localaw1);
      return localaw1;
    }
  }
  
  public void c()
  {
    this.g = -1;
    this.k.removeCallbacks(this.d);
  }
  
  public void d(int paramInt, Uri paramUri)
  {
    synchronized (this.n)
    {
      if ((this.f != null) && (((Integer)this.f.first).intValue() == paramInt) && (this.f.second != null)) {
        return;
      }
      this.d.a(paramInt);
      this.d.a(paramUri);
      this.g = paramInt;
      this.k.removeCallbacks(this.d);
      this.k.postDelayed(this.d, 300L);
      return;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.as
 * JD-Core Version:    0.7.0.1
 */