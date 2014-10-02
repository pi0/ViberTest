package com.viber.provider;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.Handler;
import android.support.v4.app.LoaderManager;
import android.support.v4.app.LoaderManager.LoaderCallbacks;
import android.text.TextUtils;
import com.viber.voip.dc;
import com.viber.voip.dk;
import com.viber.voip.util.al;
import java.util.ArrayList;
import java.util.List;

public abstract class b
  implements a
{
  protected final e a;
  protected final LoaderManager b;
  protected final Context c;
  protected final Uri d;
  protected Cursor e;
  protected int f;
  protected int g;
  private Integer[] h;
  private boolean i;
  private String[] j;
  private String k;
  private String[] l;
  private String m;
  private String n;
  private boolean o;
  private boolean p;
  private boolean q;
  private boolean r;
  private Handler s;
  private final LoaderManager.LoaderCallbacks<Cursor> t;
  private Runnable u;
  
  public b(int paramInt1, Uri paramUri, Context paramContext, LoaderManager paramLoaderManager, e parame, int paramInt2)
  {
    Integer[] arrayOfInteger = new Integer[4];
    arrayOfInteger[0] = Integer.valueOf(9);
    arrayOfInteger[1] = Integer.valueOf(10);
    arrayOfInteger[2] = Integer.valueOf(11);
    arrayOfInteger[3] = Integer.valueOf(12);
    this.h = arrayOfInteger;
    this.t = new c(this);
    this.u = new d(this);
    this.s = dc.a(dk.a);
    this.d = paramUri;
    this.g = paramInt1;
    this.i = e(paramInt1);
    this.c = paramContext;
    this.a = parame;
    this.b = paramLoaderManager;
    this.f = paramInt2;
  }
  
  private void a(Cursor paramCursor)
  {
    try
    {
      this.e = paramCursor;
      k();
      d();
      this.r = true;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  /* Error */
  private boolean e(int paramInt)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 54	com/viber/provider/b:h	[Ljava/lang/Integer;
    //   6: astore_3
    //   7: aload_3
    //   8: arraylength
    //   9: istore 4
    //   11: iconst_0
    //   12: istore 5
    //   14: iconst_0
    //   15: istore 6
    //   17: iload 5
    //   19: iload 4
    //   21: if_icmpge +21 -> 42
    //   24: aload_3
    //   25: iload 5
    //   27: aaload
    //   28: invokevirtual 128	java/lang/Integer:intValue	()I
    //   31: istore 7
    //   33: iload 7
    //   35: iload_1
    //   36: if_icmpne +11 -> 47
    //   39: iconst_1
    //   40: istore 6
    //   42: aload_0
    //   43: monitorexit
    //   44: iload 6
    //   46: ireturn
    //   47: iinc 5 1
    //   50: goto -36 -> 14
    //   53: astore_2
    //   54: aload_0
    //   55: monitorexit
    //   56: aload_2
    //   57: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	58	0	this	b
    //   0	58	1	paramInt	int
    //   53	4	2	localObject	Object
    //   6	19	3	arrayOfInteger	Integer[]
    //   9	13	4	i1	int
    //   12	36	5	i2	int
    //   15	30	6	bool	boolean
    //   31	6	7	i3	int
    // Exception table:
    //   from	to	target	type
    //   2	11	53	finally
    //   24	33	53	finally
  }
  
  private void m()
  {
    try
    {
      this.e = null;
      c();
      this.r = false;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  private void n()
  {
    al.a(this.e);
    ContentResolver localContentResolver = this.c.getContentResolver();
    Uri localUri = this.d;
    String[] arrayOfString1 = this.j;
    String str1 = this.k;
    String[] arrayOfString2 = this.l;
    String str2;
    Cursor localCursor;
    if (!TextUtils.isEmpty(this.n))
    {
      str2 = this.m + " LIMIT " + this.n;
      localCursor = localContentResolver.query(localUri, arrayOfString1, str1, arrayOfString2, str2);
      if (!this.p) {
        break label134;
      }
      this.p = false;
    }
    for (;;)
    {
      label134:
      try
      {
        if (this.q)
        {
          this.q = false;
          g();
        }
        return;
      }
      finally {}
      str2 = this.m;
      break;
      a(localCursor);
    }
  }
  
  public void a(String paramString)
  {
    try
    {
      this.k = paramString;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public void a(String[] paramArrayOfString)
  {
    try
    {
      this.j = paramArrayOfString;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public boolean a()
  {
    return this.o;
  }
  
  public long a_(int paramInt)
  {
    if (c(paramInt)) {
      return this.e.getLong(this.f);
    }
    return 0L;
  }
  
  public void b(String paramString)
  {
    try
    {
      this.m = paramString;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public void b(String[] paramArrayOfString)
  {
    try
    {
      this.l = paramArrayOfString;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public boolean b()
  {
    return !this.r;
  }
  
  protected void c()
  {
    try
    {
      if (this.a != null) {
        this.a.a(this);
      }
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public void c(String paramString)
  {
    try
    {
      this.n = paramString;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  protected boolean c(int paramInt)
  {
    return (paramInt >= 0) && (j()) && (this.e.moveToPosition(paramInt));
  }
  
  /* Error */
  protected void d()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 91	com/viber/provider/b:a	Lcom/viber/provider/e;
    //   6: ifnull +25 -> 31
    //   9: aload_0
    //   10: getfield 91	com/viber/provider/b:a	Lcom/viber/provider/e;
    //   13: astore_2
    //   14: aload_0
    //   15: getfield 104	com/viber/provider/b:r	Z
    //   18: ifne +16 -> 34
    //   21: iconst_1
    //   22: istore_3
    //   23: aload_2
    //   24: aload_0
    //   25: iload_3
    //   26: invokeinterface 198 3 0
    //   31: aload_0
    //   32: monitorexit
    //   33: return
    //   34: iconst_0
    //   35: istore_3
    //   36: goto -13 -> 23
    //   39: astore_1
    //   40: aload_0
    //   41: monitorexit
    //   42: aload_1
    //   43: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	44	0	this	b
    //   39	4	1	localObject	Object
    //   13	11	2	locale	e
    //   22	14	3	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   2	21	39	finally
    //   23	31	39	finally
  }
  
  public void d(int paramInt)
  {
    try
    {
      c(String.valueOf(paramInt));
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public void e()
  {
    for (;;)
    {
      try
      {
        if (!this.o)
        {
          this.o = true;
          this.r = false;
          if (!this.i)
          {
            this.b.initLoader(this.g, null, this.t);
            return;
          }
          n();
          continue;
        }
        if (!this.r) {
          break label104;
        }
      }
      finally {}
      this.r = false;
      if (!this.i)
      {
        this.b.restartLoader(this.g, null, this.t);
      }
      else
      {
        n();
        continue;
        label104:
        this.q = true;
      }
    }
  }
  
  /* Error */
  public void f()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 87	com/viber/provider/b:i	Z
    //   6: ifne +17 -> 23
    //   9: aload_0
    //   10: getfield 93	com/viber/provider/b:b	Landroid/support/v4/app/LoaderManager;
    //   13: aload_0
    //   14: getfield 82	com/viber/provider/b:g	I
    //   17: invokevirtual 218	android/support/v4/app/LoaderManager:destroyLoader	(I)V
    //   20: aload_0
    //   21: monitorexit
    //   22: return
    //   23: aload_0
    //   24: getfield 98	com/viber/provider/b:e	Landroid/database/Cursor;
    //   27: invokestatic 139	com/viber/voip/util/al:a	(Landroid/database/Cursor;)V
    //   30: goto -10 -> 20
    //   33: astore_1
    //   34: aload_0
    //   35: monitorexit
    //   36: aload_1
    //   37: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	38	0	this	b
    //   33	4	1	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	20	33	finally
    //   23	30	33	finally
  }
  
  /* Error */
  public void g()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 104	com/viber/provider/b:r	Z
    //   6: ifeq +32 -> 38
    //   9: aload_0
    //   10: getfield 78	com/viber/provider/b:s	Landroid/os/Handler;
    //   13: aload_0
    //   14: getfield 66	com/viber/provider/b:u	Ljava/lang/Runnable;
    //   17: invokevirtual 224	android/os/Handler:removeCallbacks	(Ljava/lang/Runnable;)V
    //   20: aload_0
    //   21: getfield 78	com/viber/provider/b:s	Landroid/os/Handler;
    //   24: aload_0
    //   25: getfield 66	com/viber/provider/b:u	Ljava/lang/Runnable;
    //   28: ldc2_w 225
    //   31: invokevirtual 230	android/os/Handler:postDelayed	(Ljava/lang/Runnable;J)Z
    //   34: pop
    //   35: aload_0
    //   36: monitorexit
    //   37: return
    //   38: aload_0
    //   39: iconst_1
    //   40: putfield 118	com/viber/provider/b:q	Z
    //   43: goto -8 -> 35
    //   46: astore_1
    //   47: aload_0
    //   48: monitorexit
    //   49: aload_1
    //   50: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	51	0	this	b
    //   46	4	1	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	35	46	finally
    //   38	43	46	finally
  }
  
  public int getCount()
  {
    if ((this.e != null) && (!this.e.isClosed())) {
      return this.e.getCount();
    }
    return 0;
  }
  
  public void h()
  {
    try
    {
      this.e = null;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public List<Long> i()
  {
    ArrayList localArrayList = new ArrayList();
    if (c(0)) {
      do
      {
        localArrayList.add(Long.valueOf(this.e.getLong(this.f)));
      } while (this.e.moveToNext());
    }
    return localArrayList;
  }
  
  protected boolean j()
  {
    return (this.e != null) && (!this.e.isClosed());
  }
  
  protected void k() {}
  
  public void l()
  {
    this.s.removeCallbacks(this.u);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.provider.b
 * JD-Core Version:    0.7.0.1
 */