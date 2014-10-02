package com.viber.voip.backgrounds.b;

import android.net.Uri;
import android.os.Environment;
import android.os.Handler;
import com.viber.voip.ViberApplication;
import com.viber.voip.backgrounds.k;
import com.viber.voip.backgrounds.n;
import com.viber.voip.backgrounds.o;
import com.viber.voip.backgrounds.q;
import com.viber.voip.dc;
import com.viber.voip.dk;
import com.viber.voip.util.bb;
import com.viber.voip.util.gj;
import com.viber.voip.util.upload.d;
import com.viber.voip.util.upload.e;
import com.viber.voip.w;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;

public abstract class g
  implements com.viber.voip.util.upload.m, Runnable
{
  private static final Pattern a = Pattern.compile("([0-9a-f]{8})\\.jpg$", 2);
  private static final String i = g.class.getSimpleName();
  protected com.viber.voip.backgrounds.m b = new h(this);
  private String c;
  private String d;
  private String e;
  private int f;
  private d g;
  private o h;
  private Handler j = dc.a(dk.a);
  private com.viber.voip.backgrounds.m k;
  private com.viber.voip.backgrounds.a l;
  
  public g(o paramo, com.viber.voip.backgrounds.a parama, com.viber.voip.backgrounds.m paramm)
  {
    this.k = paramm;
    this.f = n.b;
    this.l = parama;
    this.h = paramo;
    this.e = a.b(this.h.a, this.f);
    this.c = c(this.e);
    this.d = (this.c + ".tmp");
    this.g = new d(this.e, this.c, this.c + ".tmp");
    this.g.a(this);
    a("download package " + this.h.a + " from " + this.e);
  }
  
  private o a(InputStream paramInputStream)
  {
    ArrayList localArrayList = new ArrayList();
    ZipInputStream localZipInputStream = new ZipInputStream(paramInputStream);
    ZipEntry localZipEntry = localZipInputStream.getNextEntry();
    int m = 0;
    int i1;
    label61:
    int i2;
    q localq;
    if (localZipEntry != null)
    {
      int n = localZipEntry.getName().lastIndexOf("/");
      String str1 = localZipEntry.getName();
      if (n > 0)
      {
        i1 = n + 1;
        String str2 = str1.substring(i1);
        if (localZipEntry.isDirectory()) {
          break label271;
        }
        int i3 = b(str2);
        if ((i3 < 0) || (a(localArrayList, i3))) {
          break label271;
        }
        i2 = m + 1;
        localq = new q(i3, this.h.a, str2.startsWith("t"));
      }
    }
    for (;;)
    {
      try
      {
        a.a(localq.g.getPath(), localZipInputStream);
        this.l.b(localq);
        this.b.a(this.h, localq);
        localArrayList.add(localq);
        localZipInputStream.closeEntry();
        localZipEntry = localZipInputStream.getNextEntry();
        m = i2;
      }
      catch (k localk)
      {
        throw new IOException("Low storage during deployment! Aborting");
      }
      i1 = 0;
      break label61;
      localZipInputStream.close();
      if (m == 0) {
        throw new IOException("Unzip, no backgrounds unzipped, generating an exception");
      }
      this.h.b(true);
      this.h.a(localArrayList);
      this.b.a(this.h);
      localZipInputStream.close();
      paramInputStream.close();
      return this.h;
      label271:
      i2 = m;
    }
  }
  
  protected static void a(String paramString) {}
  
  protected static void a(String paramString, Throwable paramThrowable) {}
  
  private void a(Throwable paramThrowable)
  {
    paramThrowable.printStackTrace();
    this.b.b(this.h);
    if (this.g.i())
    {
      c();
      return;
    }
    a("Download has not finished successfully, not blaming unpack");
  }
  
  private boolean a(ArrayList<q> paramArrayList, int paramInt)
  {
    Iterator localIterator = paramArrayList.iterator();
    while (localIterator.hasNext()) {
      if (((q)localIterator.next()).a == paramInt) {
        return true;
      }
    }
    return false;
  }
  
  private int b(String paramString)
  {
    Matcher localMatcher = a.matcher(paramString);
    if (localMatcher.find()) {
      return Integer.parseInt(localMatcher.group(1), 10);
    }
    return -1;
  }
  
  private String c(String paramString)
  {
    return w.B + gj.a(paramString) + ".zip";
  }
  
  private void c()
  {
    a("handleExceptionDuringUnpack()");
    if ("mounted".equals(Environment.getExternalStorageState()))
    {
      a("Deleting " + this.c + ", success:" + new File(this.c).delete());
      a("Deleting " + this.d + ", success:" + new File(this.d).delete());
      ViberApplication.getInstance().getDownloadValve().a(this.e);
      return;
    }
    a("sdcard unmounted");
  }
  
  /* Error */
  public o a()
  {
    // Byte code:
    //   0: new 101	java/lang/StringBuilder
    //   3: dup
    //   4: invokespecial 102	java/lang/StringBuilder:<init>	()V
    //   7: ldc_w 347
    //   10: invokevirtual 106	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   13: aload_0
    //   14: getfield 83	com/viber/voip/backgrounds/b/g:h	Lcom/viber/voip/backgrounds/o;
    //   17: getfield 87	com/viber/voip/backgrounds/o:a	I
    //   20: invokevirtual 128	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   23: invokevirtual 111	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   26: invokestatic 133	com/viber/voip/backgrounds/b/g:a	(Ljava/lang/String;)V
    //   29: new 177	com/viber/voip/backgrounds/q
    //   32: dup
    //   33: aload_0
    //   34: getfield 83	com/viber/voip/backgrounds/b/g:h	Lcom/viber/voip/backgrounds/o;
    //   37: getfield 87	com/viber/voip/backgrounds/o:a	I
    //   40: aload_0
    //   41: getfield 83	com/viber/voip/backgrounds/b/g:h	Lcom/viber/voip/backgrounds/o;
    //   44: getfield 87	com/viber/voip/backgrounds/o:a	I
    //   47: invokespecial 350	com/viber/voip/backgrounds/q:<init>	(II)V
    //   50: invokevirtual 352	com/viber/voip/backgrounds/q:d	()V
    //   53: aload_0
    //   54: getfield 83	com/viber/voip/backgrounds/b/g:h	Lcom/viber/voip/backgrounds/o;
    //   57: pop
    //   58: aload_0
    //   59: monitorenter
    //   60: aload_0
    //   61: getfield 120	com/viber/voip/backgrounds/b/g:g	Lcom/viber/voip/util/upload/d;
    //   64: invokevirtual 355	com/viber/voip/util/upload/d:l	()Lcom/viber/voip/util/upload/i;
    //   67: astore 6
    //   69: new 357	com/viber/voip/backgrounds/b/n
    //   72: dup
    //   73: aload_0
    //   74: aload 6
    //   76: invokespecial 360	com/viber/voip/backgrounds/b/n:<init>	(Lcom/viber/voip/backgrounds/b/g;Ljava/io/InputStream;)V
    //   79: invokevirtual 363	com/viber/voip/backgrounds/b/n:start	()V
    //   82: aload_0
    //   83: aload 6
    //   85: invokespecial 365	com/viber/voip/backgrounds/b/g:a	(Ljava/io/InputStream;)Lcom/viber/voip/backgrounds/o;
    //   88: astore 9
    //   90: ldc_w 367
    //   93: invokestatic 133	com/viber/voip/backgrounds/b/g:a	(Ljava/lang/String;)V
    //   96: aload_0
    //   97: invokevirtual 370	java/lang/Object:wait	()V
    //   100: ldc_w 372
    //   103: invokestatic 133	com/viber/voip/backgrounds/b/g:a	(Ljava/lang/String;)V
    //   106: aload_0
    //   107: monitorexit
    //   108: new 318	java/io/File
    //   111: dup
    //   112: aload_0
    //   113: getfield 99	com/viber/voip/backgrounds/b/g:c	Ljava/lang/String;
    //   116: invokespecial 319	java/io/File:<init>	(Ljava/lang/String;)V
    //   119: invokevirtual 322	java/io/File:delete	()Z
    //   122: pop
    //   123: aload_0
    //   124: getfield 120	com/viber/voip/backgrounds/b/g:g	Lcom/viber/voip/util/upload/d;
    //   127: invokevirtual 374	com/viber/voip/util/upload/d:f	()V
    //   130: aload 9
    //   132: areturn
    //   133: astore 7
    //   135: ldc_w 367
    //   138: invokestatic 133	com/viber/voip/backgrounds/b/g:a	(Ljava/lang/String;)V
    //   141: aload_0
    //   142: invokevirtual 370	java/lang/Object:wait	()V
    //   145: ldc_w 372
    //   148: invokestatic 133	com/viber/voip/backgrounds/b/g:a	(Ljava/lang/String;)V
    //   151: aload 7
    //   153: athrow
    //   154: astore 5
    //   156: aload_0
    //   157: monitorexit
    //   158: aload 5
    //   160: athrow
    //   161: astore 4
    //   163: aload_0
    //   164: aload 4
    //   166: invokespecial 241	com/viber/voip/backgrounds/b/g:a	(Ljava/lang/Throwable;)V
    //   169: aload 4
    //   171: athrow
    //   172: astore_3
    //   173: aload_0
    //   174: getfield 120	com/viber/voip/backgrounds/b/g:g	Lcom/viber/voip/util/upload/d;
    //   177: invokevirtual 374	com/viber/voip/util/upload/d:f	()V
    //   180: aload_3
    //   181: athrow
    //   182: astore_2
    //   183: aload_0
    //   184: aload_2
    //   185: invokespecial 241	com/viber/voip/backgrounds/b/g:a	(Ljava/lang/Throwable;)V
    //   188: new 343	com/viber/voip/util/upload/e
    //   191: dup
    //   192: aload_2
    //   193: invokespecial 376	com/viber/voip/util/upload/e:<init>	(Ljava/lang/Throwable;)V
    //   196: athrow
    //   197: astore 8
    //   199: goto -48 -> 151
    //   202: astore 10
    //   204: goto -98 -> 106
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	207	0	this	g
    //   182	11	2	localIOException	IOException
    //   172	9	3	localObject1	Object
    //   161	9	4	locale	e
    //   154	5	5	localObject2	Object
    //   67	17	6	locali	com.viber.voip.util.upload.i
    //   133	19	7	localObject3	Object
    //   197	1	8	localInterruptedException1	java.lang.InterruptedException
    //   88	43	9	localo	o
    //   202	1	10	localInterruptedException2	java.lang.InterruptedException
    // Exception table:
    //   from	to	target	type
    //   82	90	133	finally
    //   60	82	154	finally
    //   90	106	154	finally
    //   106	108	154	finally
    //   135	151	154	finally
    //   151	154	154	finally
    //   156	158	154	finally
    //   58	60	161	com/viber/voip/util/upload/e
    //   108	123	161	com/viber/voip/util/upload/e
    //   158	161	161	com/viber/voip/util/upload/e
    //   58	60	172	finally
    //   108	123	172	finally
    //   158	161	172	finally
    //   163	172	172	finally
    //   183	197	172	finally
    //   58	60	182	java/io/IOException
    //   108	123	182	java/io/IOException
    //   158	161	182	java/io/IOException
    //   135	151	197	java/lang/InterruptedException
    //   90	106	202	java/lang/InterruptedException
  }
  
  public abstract void a(int paramInt);
  
  public void b()
  {
    this.g.f();
  }
  
  public void b(int paramInt)
  {
    this.b.a(this.h, paramInt);
  }
  
  public void run()
  {
    try
    {
      a();
      ViberApplication.getInstance().getDownloadValve().c(this.g.a());
      return;
    }
    catch (e locale)
    {
      a("PackageDownloadTask: exception during download() " + locale.getMessage(), locale);
      return;
    }
    finally
    {
      a(this.h.a);
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.backgrounds.b.g
 * JD-Core Version:    0.7.0.1
 */