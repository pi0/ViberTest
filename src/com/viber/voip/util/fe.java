package com.viber.voip.util;

import android.content.ContentProviderOperation;
import android.content.ContentProviderResult;
import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.viber.voip.dc;
import com.viber.voip.dk;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Semaphore;
import java.util.concurrent.atomic.AtomicInteger;

public class fe
  extends Handler
{
  private static final String c;
  private static volatile Semaphore d;
  private static volatile Semaphore e;
  private static fe h;
  final WeakReference<ContentResolver> a;
  private Handler f;
  private Handler g;
  private volatile AtomicInteger i = new AtomicInteger();
  
  static
  {
    if (!fe.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      b = bool;
      c = fe.class.getSimpleName();
      d = new Semaphore(64);
      e = new fi(128);
      h = null;
      return;
    }
  }
  
  public fe(ContentResolver paramContentResolver)
  {
    this(paramContentResolver, dc.a(dk.i));
  }
  
  public fe(ContentResolver paramContentResolver, Handler paramHandler)
  {
    this(paramContentResolver, paramHandler, dc.a(dk.i));
  }
  
  public fe(ContentResolver paramContentResolver, Handler paramHandler1, Handler paramHandler2)
  {
    super(paramHandler1.getLooper());
    this.a = new WeakReference(paramContentResolver);
    try
    {
      this.f = a(paramHandler2.getLooper());
      this.g = dc.a(dk.a);
      return;
    }
    finally {}
  }
  
  private void a(int paramInt1, Object paramObject, Uri paramUri, ContentValues[] paramArrayOfContentValues, int paramInt2, Exception paramException) {}
  
  private void a(int paramInt, Object paramObject1, Object paramObject2, Throwable paramThrowable) {}
  
  private void a(fe paramfe, Message paramMessage)
  {
    fo localfo = (fo)paramMessage.obj;
    int j = paramMessage.what;
    switch (paramMessage.arg1)
    {
    }
    for (;;)
    {
      e.release();
      return;
      if (localfo.n != null) {
        localfo.n.onQueryComplete(j, localfo.h, (Cursor)localfo.g);
      }
      for (;;)
      {
        if (localfo.g != null)
        {
          d.release();
          this.i.decrementAndGet();
        }
        if (!localfo.l) {
          break;
        }
        al.a((Cursor)localfo.g);
        break;
        paramfe.a(j, localfo.h, (Cursor)localfo.g);
      }
      if (localfo.o != null)
      {
        localfo.o.onInsertComplete(j, localfo.h, (Uri)localfo.g, localfo.j);
      }
      else
      {
        paramfe.a(j, localfo.h, (Uri)localfo.g);
        continue;
        if (localfo.p != null)
        {
          localfo.p.onUpdateComplete(j, localfo.h, localfo.a, localfo.j, ((Integer)localfo.g).intValue());
        }
        else
        {
          paramfe.a(j, localfo.h, ((Integer)localfo.g).intValue());
          continue;
          if (localfo.q != null)
          {
            localfo.q.onDeleteComplete(j, localfo.h, ((Integer)localfo.g).intValue());
          }
          else
          {
            paramfe.b(j, localfo.h, ((Integer)localfo.g).intValue());
            continue;
            if (localfo.r != null)
            {
              localfo.r.a(j, localfo.h, localfo.t, (ContentProviderResult[])localfo.g, localfo.j);
            }
            else
            {
              paramfe.a(j, localfo.h, localfo.t, (ContentProviderResult[])localfo.g, localfo.j);
              continue;
              if (localfo.s != null)
              {
                localfo.s.a(j, localfo.h, localfo.a, localfo.u, ((Integer)localfo.g).intValue(), localfo.j);
              }
              else
              {
                paramfe.a(j, localfo.h, localfo.a, localfo.u, ((Integer)localfo.g).intValue(), localfo.j);
                continue;
                if (localfo.w != null) {
                  localfo.w.a(j, localfo.h, localfo.g, localfo.j);
                } else {
                  paramfe.a(j, localfo.h, localfo.g, localfo.j);
                }
              }
            }
          }
        }
      }
    }
  }
  
  public static fe b(Context paramContext)
  {
    try
    {
      if (h == null) {
        h = new fe(paramContext.getContentResolver());
      }
      fe localfe = h;
      return localfe;
    }
    finally {}
  }
  
  protected Handler a(Looper paramLooper)
  {
    return new fp(this, paramLooper);
  }
  
  protected void a(int paramInt1, Object paramObject, int paramInt2) {}
  
  protected void a(int paramInt, Object paramObject, Cursor paramCursor)
  {
    al.a(paramCursor);
    this.i.decrementAndGet();
  }
  
  protected void a(int paramInt, Object paramObject, Uri paramUri) {}
  
  public final void a(int paramInt, Object paramObject, Uri paramUri, ContentValues paramContentValues, fk paramfk, boolean paramBoolean1, boolean paramBoolean2)
  {
    Message localMessage = this.f.obtainMessage(paramInt);
    localMessage.arg1 = 2;
    fo localfo = new fo();
    localfo.b = this;
    localfo.a = paramUri;
    localfo.h = paramObject;
    localfo.i = paramContentValues;
    localfo.o = paramfk;
    localfo.k = paramBoolean1;
    localfo.m = paramBoolean2;
    localMessage.obj = localfo;
    if ((localfo.k) || (paramBoolean2))
    {
      this.f.sendMessageAtFrontOfQueue(localMessage);
      return;
    }
    this.f.sendMessage(localMessage);
  }
  
  public final void a(int paramInt, Object paramObject, Uri paramUri, ContentValues paramContentValues, String paramString, String[] paramArrayOfString, fn paramfn)
  {
    a(paramInt, paramObject, paramUri, paramContentValues, paramString, paramArrayOfString, paramfn, true);
  }
  
  public final void a(int paramInt, Object paramObject, Uri paramUri, ContentValues paramContentValues, String paramString, String[] paramArrayOfString, fn paramfn, boolean paramBoolean)
  {
    a(paramInt, paramObject, paramUri, paramContentValues, paramString, paramArrayOfString, paramfn, paramBoolean, false);
  }
  
  public final void a(int paramInt, Object paramObject, Uri paramUri, ContentValues paramContentValues, String paramString, String[] paramArrayOfString, fn paramfn, boolean paramBoolean1, boolean paramBoolean2)
  {
    Message localMessage = this.f.obtainMessage(paramInt);
    localMessage.arg1 = 3;
    fo localfo = new fo();
    localfo.b = this;
    localfo.a = paramUri;
    localfo.h = paramObject;
    localfo.i = paramContentValues;
    localfo.d = paramString;
    localfo.e = paramArrayOfString;
    localfo.p = paramfn;
    localfo.k = paramBoolean1;
    localfo.m = paramBoolean2;
    localMessage.obj = localfo;
    if ((localfo.k) || (paramBoolean2))
    {
      this.f.sendMessageAtFrontOfQueue(localMessage);
      return;
    }
    this.f.sendMessage(localMessage);
  }
  
  public final void a(int paramInt, Object paramObject, Uri paramUri, String paramString, String[] paramArrayOfString, fh paramfh)
  {
    a(paramInt, paramObject, paramUri, paramString, paramArrayOfString, paramfh, true);
  }
  
  public final void a(int paramInt, Object paramObject, Uri paramUri, String paramString, String[] paramArrayOfString, fh paramfh, boolean paramBoolean)
  {
    a(paramInt, paramObject, paramUri, paramString, paramArrayOfString, paramfh, paramBoolean, false);
  }
  
  public final void a(int paramInt, Object paramObject, Uri paramUri, String paramString, String[] paramArrayOfString, fh paramfh, boolean paramBoolean1, boolean paramBoolean2)
  {
    Message localMessage = this.f.obtainMessage(paramInt);
    localMessage.arg1 = 4;
    fo localfo = new fo();
    localfo.b = this;
    localfo.a = paramUri;
    localfo.h = paramObject;
    localfo.d = paramString;
    localfo.e = paramArrayOfString;
    localfo.q = paramfh;
    localfo.k = paramBoolean1;
    localfo.m = paramBoolean2;
    localMessage.obj = localfo;
    if ((localfo.k) || (paramBoolean2))
    {
      this.f.sendMessageAtFrontOfQueue(localMessage);
      return;
    }
    this.f.sendMessage(localMessage);
  }
  
  public void a(int paramInt, Object paramObject, Uri paramUri, String[] paramArrayOfString1, String paramString1, String[] paramArrayOfString2, String paramString2, fl paramfl, boolean paramBoolean)
  {
    a(paramInt, paramObject, paramUri, paramArrayOfString1, paramString1, paramArrayOfString2, paramString2, paramfl, paramBoolean, true);
  }
  
  public void a(int paramInt, Object paramObject, Uri paramUri, String[] paramArrayOfString1, String paramString1, String[] paramArrayOfString2, String paramString2, fl paramfl, boolean paramBoolean1, boolean paramBoolean2)
  {
    a(paramInt, paramObject, paramUri, paramArrayOfString1, paramString1, paramArrayOfString2, paramString2, paramfl, paramBoolean1, paramBoolean2, false);
  }
  
  public void a(int paramInt, Object paramObject, Uri paramUri, String[] paramArrayOfString1, String paramString1, String[] paramArrayOfString2, String paramString2, fl paramfl, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3)
  {
    Message localMessage = this.f.obtainMessage(paramInt);
    localMessage.arg1 = 1;
    fo localfo = new fo();
    localfo.b = this;
    localfo.a = paramUri;
    localfo.c = paramArrayOfString1;
    localfo.d = paramString1;
    localfo.e = paramArrayOfString2;
    localfo.f = paramString2;
    localfo.h = paramObject;
    localfo.n = paramfl;
    localfo.k = paramBoolean1;
    localfo.l = paramBoolean2;
    localfo.m = paramBoolean3;
    localMessage.obj = localfo;
    if ((localfo.k) || (paramBoolean3))
    {
      this.f.sendMessageAtFrontOfQueue(localMessage);
      return;
    }
    this.f.sendMessage(localMessage);
  }
  
  protected void a(int paramInt, Object paramObject, List<ContentProviderOperation> paramList, ContentProviderResult[] paramArrayOfContentProviderResult, Exception paramException) {}
  
  public void a(int paramInt, String paramString, Object paramObject, List<ContentProviderOperation> paramList)
  {
    a(paramInt, paramString, paramObject, paramList, null);
  }
  
  public void a(int paramInt, String paramString, Object paramObject, List<ContentProviderOperation> paramList, ff paramff)
  {
    a(paramInt, paramString, paramObject, paramList, paramff, false, false);
  }
  
  public void a(int paramInt, String paramString, Object paramObject, List<ContentProviderOperation> paramList, ff paramff, boolean paramBoolean1, boolean paramBoolean2)
  {
    Message localMessage = this.f.obtainMessage(paramInt);
    localMessage.arg1 = 5;
    fo localfo = new fo();
    localfo.b = this;
    localfo.h = paramObject;
    localfo.d = paramString;
    if (paramList != null) {}
    for (ArrayList localArrayList = new ArrayList(paramList);; localArrayList = null)
    {
      localfo.t = localArrayList;
      localfo.r = paramff;
      localfo.k = paramBoolean1;
      localfo.m = paramBoolean2;
      localMessage.obj = localfo;
      if ((!localfo.k) && (!paramBoolean2)) {
        break;
      }
      this.f.sendMessageAtFrontOfQueue(localMessage);
      return;
    }
    this.f.sendMessage(localMessage);
  }
  
  protected void b(int paramInt1, Object paramObject, int paramInt2) {}
  
  public void handleMessage(Message paramMessage)
  {
    e.acquireUninterruptibly();
    if (((fo)paramMessage.obj).k)
    {
      fm localfm = new fm(this, paramMessage);
      this.g.post(localfm);
      return;
    }
    a(this, paramMessage);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.util.fe
 * JD-Core Version:    0.7.0.1
 */