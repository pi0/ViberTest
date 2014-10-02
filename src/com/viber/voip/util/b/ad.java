package com.viber.voip.util.b;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.TransitionDrawable;
import android.net.Uri;
import android.support.v4.app.FragmentManager;
import android.text.TextUtils;
import android.widget.ImageView;
import com.viber.voip.contacts.b.d;
import com.viber.voip.util.fq;
import com.viber.voip.util.gl;
import com.viber.voip.util.upload.n;
import java.util.Collection;
import java.util.Iterator;
import java.util.concurrent.Executor;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public abstract class ad
{
  protected boolean a = false;
  protected Resources b;
  protected Context c;
  private s d;
  private boolean e = false;
  private final Object f = new Object();
  private al g;
  
  protected ad(Context paramContext)
  {
    this.b = paramContext.getResources();
    this.c = paramContext.getApplicationContext();
  }
  
  private void a(ImageView paramImageView, Drawable paramDrawable, x paramx, boolean paramBoolean)
  {
    if (paramx.f) {
      paramDrawable.setDither(true);
    }
    if ((paramBoolean) && (paramx.d))
    {
      Drawable[] arrayOfDrawable = new Drawable[2];
      arrayOfDrawable[0] = new BitmapDrawable(this.b, paramx.a);
      arrayOfDrawable[1] = paramDrawable;
      TransitionDrawable localTransitionDrawable = new TransitionDrawable(arrayOfDrawable);
      paramImageView.setImageDrawable(localTransitionDrawable);
      localTransitionDrawable.startTransition(200);
      return;
    }
    paramImageView.setImageDrawable(paramDrawable);
  }
  
  public static boolean a(Uri paramUri, ImageView paramImageView)
  {
    ag localag = b(paramImageView);
    if (localag != null)
    {
      Uri localUri = ag.a(localag);
      if ((localUri == null) || (!localUri.equals(paramUri))) {
        localag.a(true);
      }
    }
    else
    {
      return true;
    }
    return false;
  }
  
  private static ag b(ImageView paramImageView)
  {
    if (paramImageView != null)
    {
      Drawable localDrawable = paramImageView.getDrawable();
      if ((localDrawable instanceof af)) {
        return ((af)localDrawable).a();
      }
    }
    return null;
  }
  
  private static String b(Uri paramUri, aa paramaa)
  {
    if (paramUri == null) {
      return String.valueOf(paramUri);
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("[").append(paramaa).append("]");
    String str1 = paramUri.getHost();
    if (!TextUtils.isEmpty(str1)) {
      localStringBuilder.append(str1);
    }
    localStringBuilder.append(paramUri.getPath());
    String str2 = paramUri.getQuery();
    if (!TextUtils.isEmpty(str2)) {
      localStringBuilder.append("?").append(str2);
    }
    String str3 = paramUri.getFragment();
    if (!TextUtils.isEmpty(str3)) {
      localStringBuilder.append("#").append(str3);
    }
    return localStringBuilder.toString();
  }
  
  private static String c(String paramString)
  {
    if (paramString != null)
    {
      Matcher localMatcher = fq.m.matcher(paramString);
      if (localMatcher.find()) {
        return localMatcher.group(0);
      }
    }
    return "";
  }
  
  protected abstract Bitmap a(Uri paramUri, x paramx);
  
  protected Bitmap a(String paramString)
  {
    try
    {
      Bitmap localBitmap = this.d.d(paramString);
      return localBitmap;
    }
    catch (OutOfMemoryError localOutOfMemoryError)
    {
      System.gc();
    }
    return null;
  }
  
  protected void a()
  {
    if (this.d != null) {
      this.d.a();
    }
  }
  
  void a(Uri paramUri, ImageView paramImageView, Bitmap paramBitmap, x paramx, al paramal)
  {
    ag localag = new ag(this, paramImageView, paramal);
    if (paramBitmap == null) {
      paramBitmap = paramx.a;
    }
    if (paramImageView != null) {
      a(paramImageView, new af(this.b, paramBitmap, localag), paramx, false);
    }
    if (gl.b()) {}
    for (Executor localExecutor = a.d;; localExecutor = a.c)
    {
      localag.a(localExecutor, new Object[] { paramUri, paramx });
      return;
    }
  }
  
  public void a(Uri paramUri, ImageView paramImageView, x paramx)
  {
    a(paramUri, paramImageView, paramx, null);
  }
  
  public void a(Uri paramUri, ImageView paramImageView, x paramx, al paramal)
  {
    if (paramx == null) {
      throw new IllegalArgumentException("ImageFetcherConfig can't be null");
    }
    if (paramUri == null)
    {
      if (paramImageView != null)
      {
        if (paramx.b == null) {
          break label70;
        }
        a(paramImageView, new BitmapDrawable(this.b, paramx.b), paramx, false);
      }
      for (;;)
      {
        if (paramal != null) {
          paramal.a(paramUri, paramx.b, true);
        }
        return;
        label70:
        paramImageView.setImageDrawable(null);
      }
    }
    if ((this.d != null) && (paramx.e) && (!paramx.g)) {}
    for (Bitmap localBitmap = this.d.c(b(paramUri, paramx.i));; localBitmap = null)
    {
      if (localBitmap != null)
      {
        if (paramImageView != null) {
          a(paramImageView, new BitmapDrawable(this.b, localBitmap), paramx, false);
        }
        if (paramal == null) {
          break;
        }
        paramal.a(paramUri, localBitmap, false);
        return;
      }
      if (!a(paramUri, paramImageView)) {
        break;
      }
      a(paramUri, paramImageView, null, paramx, paramal);
      return;
    }
  }
  
  public void a(Uri paramUri, x paramx, al paramal)
  {
    a(paramUri, null, paramx, paramal);
  }
  
  public void a(FragmentManager paramFragmentManager, u paramu, String paramString)
  {
    this.d = s.a(paramFragmentManager, paramu, paramString);
    ah localah = new ah(this);
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Integer.valueOf(1);
    localah.c(arrayOfObject);
  }
  
  public void a(d paramd, Uri paramUri, ImageView paramImageView, x paramx)
  {
    a(paramd, paramUri, paramImageView, paramx, null);
  }
  
  public void a(d paramd, Uri paramUri, ImageView paramImageView, x paramx, al paramal)
  {
    if (paramd != null) {
      paramUri = paramd.b();
    }
    if (paramUri == null) {
      if ((paramImageView != null) && (paramx.b != null))
      {
        a(paramImageView, new BitmapDrawable(this.b, paramx.b), paramx, false);
        if (paramal != null) {
          paramal.a(paramUri, paramx.b, true);
        }
      }
    }
    Uri localUri;
    Bitmap localBitmap;
    do
    {
      do
      {
        return;
        localUri = Uri.parse(n.b(paramUri));
        s locals = this.d;
        localBitmap = null;
        if (locals != null)
        {
          boolean bool1 = paramx.e;
          localBitmap = null;
          if (bool1)
          {
            boolean bool2 = paramx.g;
            localBitmap = null;
            if (!bool2) {
              localBitmap = this.d.c(b(localUri, paramx.i));
            }
          }
        }
        if (localBitmap == null) {
          break;
        }
      } while (paramImageView == null);
      a(paramImageView, new BitmapDrawable(this.b, localBitmap), paramx, false);
    } while (paramal == null);
    paramal.a(paramUri, localBitmap, false);
    return;
    this.g = new ak(this, localUri, paramd, paramImageView, paramx, paramal);
    a(paramUri, paramImageView, paramx, this.g);
  }
  
  public void a(u paramu)
  {
    this.d = new s(paramu);
    ah localah = new ah(this);
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Integer.valueOf(1);
    localah.c(arrayOfObject);
  }
  
  protected void a(Object paramObject)
  {
    if (this.d != null)
    {
      if ((paramObject instanceof Collection))
      {
        Iterator localIterator = ((Collection)paramObject).iterator();
        while (localIterator.hasNext())
        {
          Uri localUri = (Uri)localIterator.next();
          this.d.b(b(localUri, aa.a));
          this.d.b(b(localUri, aa.b));
          this.d.b(b(localUri, aa.c));
          this.d.b(b(localUri, aa.d));
        }
      }
      if ((paramObject instanceof Uri))
      {
        this.d.b(b((Uri)paramObject, aa.a));
        this.d.b(b((Uri)paramObject, aa.b));
        this.d.b(b((Uri)paramObject, aa.c));
        this.d.b(b((Uri)paramObject, aa.d));
      }
    }
  }
  
  public void a(Collection<Uri> paramCollection)
  {
    if (paramCollection == null) {
      return;
    }
    if (this.d != null)
    {
      Iterator localIterator = paramCollection.iterator();
      while (localIterator.hasNext())
      {
        Uri localUri = (Uri)localIterator.next();
        this.d.a(b(localUri, aa.a));
        this.d.a(b(localUri, aa.b));
        this.d.a(b(localUri, aa.c));
        this.d.a(b(localUri, aa.d));
      }
    }
    ah localah = new ah(this);
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = Integer.valueOf(4);
    arrayOfObject[1] = paramCollection;
    localah.c(arrayOfObject);
  }
  
  public void a(boolean paramBoolean)
  {
    synchronized (this.f)
    {
      this.a = paramBoolean;
      if (!this.a) {
        this.f.notifyAll();
      }
      return;
    }
  }
  
  protected s b()
  {
    return this.d;
  }
  
  public void b(Uri paramUri)
  {
    if (paramUri == null) {
      return;
    }
    if (this.d != null)
    {
      this.d.a(b(paramUri, aa.a));
      this.d.a(b(paramUri, aa.b));
      this.d.a(b(paramUri, aa.c));
      this.d.a(b(paramUri, aa.d));
    }
    ah localah = new ah(this);
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = Integer.valueOf(4);
    arrayOfObject[1] = paramUri;
    localah.c(arrayOfObject);
  }
  
  public void b(Uri paramUri, x paramx)
  {
    a(paramUri, null, paramx);
  }
  
  protected void c()
  {
    if (this.d != null) {
      this.d.b();
    }
  }
  
  protected void d()
  {
    if (this.d != null) {
      this.d.c();
    }
  }
  
  protected void e()
  {
    if (this.d != null)
    {
      this.d.d();
      this.d = null;
    }
  }
  
  public void f()
  {
    ah localah = new ah(this);
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Integer.valueOf(0);
    localah.c(arrayOfObject);
  }
  
  public void g()
  {
    ah localah = new ah(this);
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Integer.valueOf(2);
    localah.c(arrayOfObject);
  }
  
  public void h()
  {
    ah localah = new ah(this);
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Integer.valueOf(3);
    localah.c(arrayOfObject);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.util.b.ad
 * JD-Core Version:    0.7.0.1
 */