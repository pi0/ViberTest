package com.viber.voip.stickers;

import android.graphics.Bitmap;
import android.graphics.Picture;
import android.os.AsyncTask;
import android.os.Handler;
import com.viber.voip.ViberApplication;
import com.viber.voip.dc;
import com.viber.voip.dk;
import com.viber.voip.stickers.c.d;
import com.viber.voip.util.gj;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

public class b
{
  static int a = 0;
  private static final String i = b.class.getSimpleName();
  private static boolean m;
  volatile long b = 0L;
  Handler c = dc.a(dk.a);
  Handler d = dc.a(dk.h);
  r e;
  g f;
  bf g;
  bf h;
  private ThreadPoolExecutor j;
  private int k;
  private ar l;
  private AsyncTask<Void, Void, Integer> n;
  private Random o = new Random();
  private boolean p;
  
  b(r paramr)
  {
    this.e = paramr;
    this.l = paramr.p();
    this.f = new g(this);
    this.g = new bf(this, this.c, new n(this, null));
    this.h = new bf(this, this.c, new e(this, null));
  }
  
  private Bitmap a(com.viber.voip.stickers.c.a parama, String paramString1, String paramString2, int paramInt1, int paramInt2, boolean paramBoolean1, boolean paramBoolean2, ba paramba)
  {
    if (parama.j()) {
      return c(parama, paramString1, paramString2, paramInt1, paramInt2, paramBoolean1, paramBoolean2, paramba);
    }
    return b(parama, paramString1, paramString2, paramInt1, paramInt2, paramBoolean1, paramBoolean2, paramba);
  }
  
  private Bitmap b(com.viber.voip.stickers.c.a parama, String paramString1, String paramString2, int paramInt1, int paramInt2, boolean paramBoolean1, boolean paramBoolean2, ba paramba)
  {
    try
    {
      Bitmap localBitmap = com.viber.voip.messages.extras.image.h.a(paramString1, paramString2, paramInt1, paramInt2);
      return localBitmap;
    }
    catch (IOException localIOException)
    {
      localIOException.printStackTrace();
      this.l.a(parama, paramBoolean1, paramBoolean2, paramba, localIOException);
    }
    return null;
  }
  
  static void b(String paramString)
  {
    ViberApplication.log(3, i, paramString);
  }
  
  private Bitmap c(com.viber.voip.stickers.c.a parama, String paramString1, String paramString2, int paramInt1, int paramInt2, boolean paramBoolean1, boolean paramBoolean2, ba paramba)
  {
    bb localbb = this.e.e();
    com.viber.voip.stickers.f.a locala = localbb.a(paramString1);
    if (paramBoolean2) {}
    for (Picture localPicture = locala.b; (locala.a == -1L) && (localPicture == null); localPicture = locala.c)
    {
      this.l.a(parama, paramBoolean1, paramBoolean2, paramba, new FileNotFoundException());
      return null;
    }
    if (localPicture != null) {
      return null;
    }
    boolean bool;
    if (paramBoolean2) {
      if (locala.c != null) {
        bool = true;
      }
    }
    for (;;)
    {
      return localbb.a(parama, locala, paramString1, paramString2, paramInt1, paramInt2, paramBoolean2, paramba, bool);
      bool = false;
      continue;
      if (locala.b != null) {
        bool = true;
      } else {
        bool = false;
      }
    }
  }
  
  private void d(com.viber.voip.stickers.c.a parama, boolean paramBoolean1, boolean paramBoolean2, ba paramba)
  {
    String str = parama.a(paramBoolean1, paramBoolean2, paramba);
    if ((str != null) && (!new File(str).exists()))
    {
      if (!this.e.u()) {
        break label67;
      }
      Bitmap localBitmap = r.a().d().c(parama, paramBoolean1, paramBoolean2, paramba);
      if (localBitmap != null) {
        com.viber.voip.messages.extras.image.h.c(localBitmap);
      }
    }
    return;
    label67:
    throw new ak();
  }
  
  private ThreadPoolExecutor e()
  {
    if (this.j == null)
    {
      PriorityBlockingQueue localPriorityBlockingQueue = new PriorityBlockingQueue(100, new m(null));
      this.j = new ThreadPoolExecutor(1, 1, 60L, TimeUnit.SECONDS, localPriorityBlockingQueue);
    }
    return this.j;
  }
  
  public Bitmap a(com.viber.voip.stickers.c.a parama)
  {
    if (parama.t == this.k) {
      return this.g.a(parama);
    }
    return this.h.a(parama);
  }
  
  public h a(com.viber.voip.stickers.c.a parama, boolean paramBoolean1, boolean paramBoolean2, ba paramba)
  {
    h localh1 = this.f.a(parama, paramBoolean1, paramBoolean2, paramba);
    if (localh1 != null) {
      return localh1;
    }
    Bitmap localBitmap = c(parama, paramBoolean1, paramBoolean2, paramba);
    if (localBitmap != null)
    {
      h localh2 = new h(localBitmap, parama.a(paramBoolean1, paramBoolean2, paramba));
      this.f.a(parama, paramBoolean1, paramBoolean2, paramba, localh2);
      return localh2;
    }
    return null;
  }
  
  public Object a(com.viber.voip.stickers.c.a parama, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3, ba paramba, o paramo)
  {
    a(paramba);
    this.b = System.currentTimeMillis();
    k localk = new k(this, parama, paramBoolean1, paramBoolean2, paramBoolean3, paramba, paramo);
    e().execute(localk);
    return localk;
  }
  
  void a()
  {
    e();
    c();
  }
  
  public void a(int paramInt)
  {
    this.k = paramInt;
    this.g.a();
  }
  
  void a(ba paramba)
  {
    if (paramba == ba.c) {
      throw new IllegalArgumentException("Thumb requested");
    }
  }
  
  public void a(com.viber.voip.stickers.c.a parama, ba paramba)
  {
    switch (d.a[paramba.ordinal()])
    {
    default: 
      return;
    case 1: 
      d(parama, true, true, ba.a);
      d(parama, true, false, ba.a);
      d(parama, false, true, ba.a);
      d(parama, false, false, ba.a);
      return;
    case 2: 
      d(parama, true, true, ba.b);
      d(parama, false, true, ba.b);
      return;
    }
    d(parama, true, true, ba.c);
    d(parama, false, true, ba.c);
  }
  
  public void a(Iterable<com.viber.voip.stickers.c.a> paramIterable)
  {
    this.g.a(paramIterable);
  }
  
  public void a(String paramString)
  {
    if (gj.c(paramString)) {
      return;
    }
    synchronized (this.f)
    {
      if (this.f.get(paramString) != null) {
        this.f.remove(paramString);
      }
      return;
    }
  }
  
  public void a(boolean paramBoolean)
  {
    this.p = paramBoolean;
  }
  
  public void a(int[] paramArrayOfInt, bj parambj)
  {
    this.h.a(paramArrayOfInt, parambj);
  }
  
  public boolean a(Object paramObject)
  {
    if ((paramObject instanceof Runnable)) {
      return e().remove((Runnable)paramObject);
    }
    return false;
  }
  
  public h b(com.viber.voip.stickers.c.a parama, boolean paramBoolean1, boolean paramBoolean2, ba paramba)
  {
    a(paramba);
    return this.f.a(parama, paramBoolean1, paramBoolean2, paramba);
  }
  
  void b()
  {
    if (this.j != null)
    {
      this.j.shutdownNow();
      this.j = null;
    }
  }
  
  public void b(com.viber.voip.stickers.c.a parama)
  {
    if (parama.t == this.k)
    {
      this.g.b(parama);
      return;
    }
    this.h.b(parama);
  }
  
  public void b(Object paramObject)
  {
    ((k)paramObject).c();
  }
  
  /* Error */
  Bitmap c(com.viber.voip.stickers.c.a parama, boolean paramBoolean1, boolean paramBoolean2, ba paramba)
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore 5
    //   3: aload_1
    //   4: iload_2
    //   5: iload_3
    //   6: aload 4
    //   8: invokevirtual 176	com/viber/voip/stickers/c/a:a	(ZZLcom/viber/voip/stickers/ba;)Ljava/lang/String;
    //   11: astore 6
    //   13: aload 6
    //   15: ifnonnull +17 -> 32
    //   18: aconst_null
    //   19: astore 7
    //   21: iconst_0
    //   22: ifeq +7 -> 29
    //   25: aconst_null
    //   26: invokevirtual 337	java/io/FileInputStream:close	()V
    //   29: aload 7
    //   31: areturn
    //   32: new 334	java/io/FileInputStream
    //   35: dup
    //   36: aload 6
    //   38: invokespecial 338	java/io/FileInputStream:<init>	(Ljava/lang/String;)V
    //   41: astore 9
    //   43: new 340	android/graphics/BitmapFactory$Options
    //   46: dup
    //   47: invokespecial 341	android/graphics/BitmapFactory$Options:<init>	()V
    //   50: astore 10
    //   52: getstatic 277	com/viber/voip/stickers/ba:c	Lcom/viber/voip/stickers/ba;
    //   55: aload 4
    //   57: if_acmpne +53 -> 110
    //   60: invokestatic 345	com/viber/voip/util/gl:e	()Z
    //   63: ifne +47 -> 110
    //   66: getstatic 351	android/graphics/Bitmap$Config:ARGB_4444	Landroid/graphics/Bitmap$Config;
    //   69: astore 20
    //   71: aload 10
    //   73: aload 20
    //   75: putfield 354	android/graphics/BitmapFactory$Options:inPreferredConfig	Landroid/graphics/Bitmap$Config;
    //   78: aload 9
    //   80: aconst_null
    //   81: aload 10
    //   83: invokestatic 360	android/graphics/BitmapFactory:decodeStream	(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    //   86: astore 21
    //   88: aload 21
    //   90: astore 7
    //   92: aload 9
    //   94: ifnull -65 -> 29
    //   97: aload 9
    //   99: invokevirtual 337	java/io/FileInputStream:close	()V
    //   102: aload 7
    //   104: areturn
    //   105: astore 22
    //   107: aload 7
    //   109: areturn
    //   110: getstatic 363	android/graphics/Bitmap$Config:ARGB_8888	Landroid/graphics/Bitmap$Config;
    //   113: astore 20
    //   115: goto -44 -> 71
    //   118: astore 24
    //   120: aconst_null
    //   121: astore 12
    //   123: getstatic 288	com/viber/voip/stickers/d:a	[I
    //   126: aload 4
    //   128: invokevirtual 292	com/viber/voip/stickers/ba:ordinal	()I
    //   131: iaload
    //   132: tableswitch	default:+28 -> 160, 1:+91->223, 2:+132->264, 3:+147->279
    //   161: iconst_1
    //   162: invokestatic 364	com/viber/voip/stickers/c/a:a	(Lcom/viber/voip/stickers/ba;)V
    //   165: iconst_0
    //   166: istore 15
    //   168: iload_2
    //   169: ifeq +125 -> 294
    //   172: aload_1
    //   173: getfield 367	com/viber/voip/stickers/c/a:v	Ljava/lang/String;
    //   176: astore 16
    //   178: aload_1
    //   179: invokevirtual 369	com/viber/voip/stickers/c/a:f	()V
    //   182: aload_0
    //   183: aload_1
    //   184: aload 16
    //   186: aload 6
    //   188: iload 15
    //   190: iload 5
    //   192: iload_2
    //   193: iload_3
    //   194: aload 4
    //   196: invokespecial 371	com/viber/voip/stickers/b:a	(Lcom/viber/voip/stickers/c/a;Ljava/lang/String;Ljava/lang/String;IIZZLcom/viber/voip/stickers/ba;)Landroid/graphics/Bitmap;
    //   199: astore 17
    //   201: aload 17
    //   203: astore 7
    //   205: aload 12
    //   207: ifnull -178 -> 29
    //   210: aload 12
    //   212: invokevirtual 337	java/io/FileInputStream:close	()V
    //   215: aload 7
    //   217: areturn
    //   218: astore 18
    //   220: aload 7
    //   222: areturn
    //   223: iload_3
    //   224: ifeq +22 -> 246
    //   227: aload_1
    //   228: getfield 373	com/viber/voip/stickers/c/a:l	I
    //   231: istore 15
    //   233: iload_3
    //   234: ifeq +21 -> 255
    //   237: aload_1
    //   238: getfield 375	com/viber/voip/stickers/c/a:m	I
    //   241: istore 19
    //   243: goto +114 -> 357
    //   246: aload_1
    //   247: getfield 377	com/viber/voip/stickers/c/a:n	I
    //   250: istore 15
    //   252: goto -19 -> 233
    //   255: aload_1
    //   256: getfield 379	com/viber/voip/stickers/c/a:o	I
    //   259: istore 19
    //   261: goto +96 -> 357
    //   264: aload_1
    //   265: getfield 381	com/viber/voip/stickers/c/a:p	I
    //   268: istore 15
    //   270: aload_1
    //   271: getfield 384	com/viber/voip/stickers/c/a:q	I
    //   274: istore 5
    //   276: goto -108 -> 168
    //   279: aload_1
    //   280: getfield 387	com/viber/voip/stickers/c/a:r	I
    //   283: istore 15
    //   285: aload_1
    //   286: getfield 390	com/viber/voip/stickers/c/a:s	I
    //   289: istore 5
    //   291: goto -123 -> 168
    //   294: aload_1
    //   295: getfield 392	com/viber/voip/stickers/c/a:u	Ljava/lang/String;
    //   298: astore 16
    //   300: goto -122 -> 178
    //   303: astore 23
    //   305: aconst_null
    //   306: astore 12
    //   308: aload 23
    //   310: astore 13
    //   312: aload 12
    //   314: ifnull +8 -> 322
    //   317: aload 12
    //   319: invokevirtual 337	java/io/FileInputStream:close	()V
    //   322: aload 13
    //   324: athrow
    //   325: astore 8
    //   327: aconst_null
    //   328: areturn
    //   329: astore 14
    //   331: goto -9 -> 322
    //   334: astore 13
    //   336: aload 9
    //   338: astore 12
    //   340: goto -28 -> 312
    //   343: astore 13
    //   345: goto -33 -> 312
    //   348: astore 11
    //   350: aload 9
    //   352: astore 12
    //   354: goto -231 -> 123
    //   357: iload 19
    //   359: istore 5
    //   361: goto -193 -> 168
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	364	0	this	b
    //   0	364	1	parama	com.viber.voip.stickers.c.a
    //   0	364	2	paramBoolean1	boolean
    //   0	364	3	paramBoolean2	boolean
    //   0	364	4	paramba	ba
    //   1	359	5	i1	int
    //   11	176	6	str1	String
    //   19	202	7	localObject1	Object
    //   325	1	8	localIOException1	IOException
    //   41	310	9	localFileInputStream1	java.io.FileInputStream
    //   50	32	10	localOptions	android.graphics.BitmapFactory.Options
    //   348	1	11	localFileNotFoundException1	FileNotFoundException
    //   121	232	12	localFileInputStream2	java.io.FileInputStream
    //   310	13	13	localObject2	Object
    //   334	1	13	localObject3	Object
    //   343	1	13	localObject4	Object
    //   329	1	14	localIOException2	IOException
    //   166	118	15	i2	int
    //   176	123	16	str2	String
    //   199	3	17	localBitmap1	Bitmap
    //   218	1	18	localIOException3	IOException
    //   241	117	19	i3	int
    //   69	45	20	localConfig	android.graphics.Bitmap.Config
    //   86	3	21	localBitmap2	Bitmap
    //   105	1	22	localIOException4	IOException
    //   303	6	23	localObject5	Object
    //   118	1	24	localFileNotFoundException2	FileNotFoundException
    // Exception table:
    //   from	to	target	type
    //   97	102	105	java/io/IOException
    //   32	43	118	java/io/FileNotFoundException
    //   210	215	218	java/io/IOException
    //   32	43	303	finally
    //   25	29	325	java/io/IOException
    //   317	322	329	java/io/IOException
    //   43	71	334	finally
    //   71	88	334	finally
    //   110	115	334	finally
    //   123	160	343	finally
    //   160	165	343	finally
    //   172	178	343	finally
    //   178	201	343	finally
    //   227	233	343	finally
    //   237	243	343	finally
    //   246	252	343	finally
    //   255	261	343	finally
    //   264	276	343	finally
    //   279	291	343	finally
    //   294	300	343	finally
    //   43	71	348	java/io/FileNotFoundException
    //   71	88	348	java/io/FileNotFoundException
    //   110	115	348	java/io/FileNotFoundException
  }
  
  public void c()
  {
    if ((!m) && (this.n == null)) {
      this.n = new c(this).execute(new Void[0]);
    }
  }
  
  public void c(com.viber.voip.stickers.c.a parama)
  {
    a(parama, ba.a);
    a(parama, ba.b);
    a(parama, ba.c);
  }
  
  public void d()
  {
    try
    {
      Iterator localIterator1 = this.e.g().iterator();
      while (localIterator1.hasNext())
      {
        d locald = (d)localIterator1.next();
        if (!locald.h())
        {
          Iterator localIterator2 = this.e.k(locald.e()).iterator();
          while (localIterator2.hasNext()) {
            c((com.viber.voip.stickers.c.a)localIterator2.next());
          }
        }
      }
      return;
    }
    finally {}
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.stickers.b
 * JD-Core Version:    0.7.0.1
 */