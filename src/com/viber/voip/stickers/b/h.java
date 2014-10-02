package com.viber.voip.stickers.b;

import android.accounts.NetworkErrorException;
import android.os.Handler;
import android.os.SystemClock;
import android.util.SparseArray;
import com.viber.voip.ViberApplication;
import com.viber.voip.ViberEnv;
import com.viber.voip.bc;
import com.viber.voip.bd;
import com.viber.voip.dc;
import com.viber.voip.dk;
import com.viber.voip.stickers.an;
import com.viber.voip.stickers.c.a;
import com.viber.voip.stickers.c.d;
import com.viber.voip.stickers.r;
import com.viber.voip.util.ft;
import com.viber.voip.util.http.HttpRequest;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Locale;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

public class h
{
  private static final String b = h.class.getSimpleName();
  com.viber.voip.stickers.d.b a;
  private SparseArray<e> c = new SparseArray();
  private SparseArray<o> d = new SparseArray();
  private SparseArray<g> e = new SparseArray();
  private Handler f;
  private ExecutorService g;
  private r h;
  private com.viber.voip.stickers.b i;
  private int j = -1;
  
  public h(r paramr, com.viber.voip.stickers.b paramb, com.viber.voip.stickers.d.b paramb1)
  {
    this.h = paramr;
    this.i = paramb;
    this.a = paramb1;
    this.f = dc.a(dk.j);
    PriorityBlockingQueue localPriorityBlockingQueue = new PriorityBlockingQueue(100, new i(this));
    this.g = new ThreadPoolExecutor(1, 1, 60L, TimeUnit.SECONDS, localPriorityBlockingQueue);
  }
  
  public static String a(int paramInt1, int paramInt2)
  {
    return b(paramInt1, Integer.toString(paramInt2));
  }
  
  static String a(int paramInt, String paramString)
  {
    int k = d(paramInt);
    return bc.b().C.replaceAll("%RES%", paramString).replaceAll("%PKG%", Integer.toString(k)).replaceAll("%ID%", f(paramInt));
  }
  
  public static String a(String paramString1, int paramInt, String paramString2)
  {
    return paramString1.replaceAll("%RES%", paramString2).replaceAll("%PKG%", Integer.toString(paramInt));
  }
  
  static void a(InputStream paramInputStream, OutputStream paramOutputStream)
  {
    byte[] arrayOfByte = new byte[4096];
    for (int k = paramInputStream.read(arrayOfByte); k != -1; k = paramInputStream.read(arrayOfByte))
    {
      if (k == 0) {}
      paramOutputStream.write(arrayOfByte, 0, k);
    }
  }
  
  static void a(String paramString, InputStream paramInputStream)
  {
    String str = paramString + ".tmp";
    File localFile = new File(str);
    FileOutputStream localFileOutputStream = new FileOutputStream(str);
    a(paramInputStream, localFileOutputStream);
    localFileOutputStream.close();
    localFile.renameTo(new File(paramString));
  }
  
  public static boolean a(String paramString)
  {
    return b(paramString) == 200;
  }
  
  public static int b(String paramString)
  {
    if (!ft.b(ViberApplication.getInstance())) {
      throw new NetworkErrorException("No internet connection");
    }
    HttpRequest localHttpRequest = ViberEnv.newHttpRequest(paramString);
    localHttpRequest.setConnectTimeout(8000);
    localHttpRequest.setReadTimeout(8000);
    return localHttpRequest.getResponseCode();
  }
  
  public static String b(int paramInt1, int paramInt2)
  {
    return a(bc.b().z, paramInt1, Integer.toString(paramInt2));
  }
  
  public static String b(int paramInt, String paramString)
  {
    return a(bc.b().y, paramInt, paramString);
  }
  
  public static String c(int paramInt1, int paramInt2)
  {
    return a(bc.b().A, paramInt1, Integer.toString(paramInt2));
  }
  
  public static boolean c(int paramInt, String paramString)
  {
    return a(a(paramInt, paramString));
  }
  
  public static int d(int paramInt)
  {
    return paramInt - paramInt % 100;
  }
  
  public static boolean d(int paramInt, String paramString)
  {
    return a(b(paramInt, paramString));
  }
  
  public static boolean e(int paramInt)
  {
    return c(paramInt, String.valueOf(an.a()));
  }
  
  private static String f(int paramInt)
  {
    Locale localLocale = Locale.US;
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Integer.valueOf(paramInt);
    return String.format(localLocale, "%08d", arrayOfObject);
  }
  
  public void a()
  {
    int k = 0;
    int m = 0;
    try
    {
      while (m < this.c.size())
      {
        e locale = (e)this.c.valueAt(m);
        locale.b();
        this.f.removeCallbacks(locale);
        m++;
      }
      this.c.clear();
      while (k < this.d.size())
      {
        ((o)this.d.valueAt(k)).b();
        k++;
      }
      this.d.clear();
      return;
    }
    finally {}
  }
  
  public void a(a parama)
  {
    try
    {
      if (this.d.get(parama.b) == null)
      {
        l locall = new l(this, parama, this.h, this.i, this.a);
        this.d.put(parama.b, locall);
        this.g.execute(locall);
      }
      return;
    }
    finally {}
  }
  
  public boolean a(int paramInt)
  {
    try
    {
      if (this.e.get(paramInt) == null)
      {
        k localk = new k(this, paramInt, false, paramInt);
        this.e.put(paramInt, localk);
        this.f.postAtTime(localk, Integer.valueOf(1), SystemClock.uptimeMillis());
        return true;
      }
      return false;
    }
    finally {}
  }
  
  public boolean a(d paramd)
  {
    try
    {
      if (this.c.get(paramd.e()) == null)
      {
        j localj = new j(this, (com.viber.voip.stickers.c.e)paramd, this.a);
        this.c.put(paramd.e(), localj);
        this.f.postAtTime(localj, Integer.valueOf(1), SystemClock.uptimeMillis());
        return true;
      }
      return false;
    }
    finally {}
  }
  
  /* Error */
  public m b()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 50	com/viber/voip/stickers/b/h:j	I
    //   6: iconst_m1
    //   7: if_icmpeq +61 -> 68
    //   10: aload_0
    //   11: getfield 44	com/viber/voip/stickers/b/h:c	Landroid/util/SparseArray;
    //   14: aload_0
    //   15: getfield 50	com/viber/voip/stickers/b/h:j	I
    //   18: invokevirtual 287	android/util/SparseArray:get	(I)Ljava/lang/Object;
    //   21: checkcast 265	com/viber/voip/stickers/b/e
    //   24: astore_3
    //   25: aload_3
    //   26: ifnonnull +9 -> 35
    //   29: aconst_null
    //   30: astore_2
    //   31: aload_0
    //   32: monitorexit
    //   33: aload_2
    //   34: areturn
    //   35: new 331	com/viber/voip/stickers/b/m
    //   38: dup
    //   39: invokespecial 332	com/viber/voip/stickers/b/m:<init>	()V
    //   42: astore 4
    //   44: aload 4
    //   46: aload_3
    //   47: invokevirtual 334	com/viber/voip/stickers/b/e:d	()I
    //   50: putfield 335	com/viber/voip/stickers/b/m:b	I
    //   53: aload 4
    //   55: aload_3
    //   56: invokevirtual 338	com/viber/voip/stickers/b/e:c	()Lcom/viber/voip/stickers/c/d;
    //   59: putfield 341	com/viber/voip/stickers/b/m:a	Lcom/viber/voip/stickers/c/d;
    //   62: aload 4
    //   64: astore_2
    //   65: goto -34 -> 31
    //   68: aconst_null
    //   69: astore_2
    //   70: goto -39 -> 31
    //   73: astore_1
    //   74: aload_0
    //   75: monitorexit
    //   76: aload_1
    //   77: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	78	0	this	h
    //   73	4	1	localObject1	Object
    //   30	40	2	localObject2	Object
    //   24	32	3	locale	e
    //   42	21	4	localm	m
    // Exception table:
    //   from	to	target	type
    //   2	25	73	finally
    //   35	62	73	finally
  }
  
  /* Error */
  public boolean b(int paramInt)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 50	com/viber/voip/stickers/b/h:j	I
    //   6: istore_3
    //   7: iload_1
    //   8: iload_3
    //   9: if_icmpne +11 -> 20
    //   12: iconst_1
    //   13: istore 4
    //   15: aload_0
    //   16: monitorexit
    //   17: iload 4
    //   19: ireturn
    //   20: iconst_0
    //   21: istore 4
    //   23: goto -8 -> 15
    //   26: astore_2
    //   27: aload_0
    //   28: monitorexit
    //   29: aload_2
    //   30: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	31	0	this	h
    //   0	31	1	paramInt	int
    //   26	4	2	localObject	Object
    //   6	4	3	k	int
    //   13	9	4	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   2	7	26	finally
  }
  
  /* Error */
  public boolean c(int paramInt)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 44	com/viber/voip/stickers/b/h:c	Landroid/util/SparseArray;
    //   6: iload_1
    //   7: invokevirtual 287	android/util/SparseArray:get	(I)Ljava/lang/Object;
    //   10: ifnull +21 -> 31
    //   13: aload_0
    //   14: iload_1
    //   15: invokevirtual 343	com/viber/voip/stickers/b/h:b	(I)Z
    //   18: istore 4
    //   20: iload 4
    //   22: ifne +9 -> 31
    //   25: iconst_1
    //   26: istore_3
    //   27: aload_0
    //   28: monitorexit
    //   29: iload_3
    //   30: ireturn
    //   31: iconst_0
    //   32: istore_3
    //   33: goto -6 -> 27
    //   36: astore_2
    //   37: aload_0
    //   38: monitorexit
    //   39: aload_2
    //   40: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	41	0	this	h
    //   0	41	1	paramInt	int
    //   36	4	2	localObject	Object
    //   26	7	3	bool1	boolean
    //   18	3	4	bool2	boolean
    // Exception table:
    //   from	to	target	type
    //   2	20	36	finally
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.stickers.b.h
 * JD-Core Version:    0.7.0.1
 */