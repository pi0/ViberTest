package com.viber.voip.util.upload;

import android.content.ContentResolver;
import android.net.Uri;
import android.os.Environment;
import com.viber.voip.ViberApplication;
import com.viber.voip.ViberEnv;
import com.viber.voip.messages.extras.image.h;
import com.viber.voip.messages.extras.image.l;
import com.viber.voip.util.bj;
import com.viber.voip.util.http.HttpRequest;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URL;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicInteger;

public class d
{
  protected static boolean a = true;
  public static int b = 0;
  private static final String i = d.class.getSimpleName();
  private static final AtomicInteger j = new AtomicInteger(0);
  protected int c = j.incrementAndGet();
  protected InputStream d;
  protected boolean e = false;
  protected File f;
  public boolean g;
  protected i h;
  private String k;
  private String l;
  private String m;
  private String n;
  private int o;
  private int p = 1;
  private int q;
  private int r = 0;
  private boolean s;
  private boolean t;
  private m u;
  private int v;
  
  public d(String paramString1, String paramString2, String paramString3)
  {
    this.k = paramString1;
    this.n = paramString2;
    this.m = paramString3;
  }
  
  private void a(InputStream paramInputStream, OutputStream paramOutputStream)
  {
    if (!"mounted".equals(Environment.getExternalStorageState())) {
      throw new IOException("sdcard unmounted");
    }
    if (paramInputStream == null) {
      throw new IOException("can't read null input stream!");
    }
    int i1;
    byte[] arrayOfByte;
    int i2;
    int i3;
    int i4;
    label67:
    int i6;
    int i7;
    int i8;
    int i10;
    int i11;
    label101:
    int i15;
    if (this.q > 0)
    {
      i1 = this.q - this.r;
      arrayOfByte = new byte[65536];
      i2 = i1;
      i3 = 0;
      i4 = 0;
      if ((i4 == -1) || (i2 <= 0)) {
        break label594;
      }
      i6 = 65536;
      i7 = i3;
      i8 = 0;
      int i9 = i4;
      i10 = i2;
      i11 = i9;
      if ((i6 == 0) || (i10 <= 0)) {
        break label601;
      }
      i15 = 8192;
      if (i15 > i6) {
        i15 = i6;
      }
      if (i15 > i10) {
        i15 = i10;
      }
    }
    for (;;)
    {
      int i13;
      int i14;
      int i5;
      try
      {
        int i17 = paramInputStream.read(arrayOfByte, i8, i15);
        i11 = i17;
        if (i11 <= 0)
        {
          int i23 = i8;
          i3 = i7;
          i13 = i10;
          i4 = i11;
          i14 = i23;
          if (i14 > 0)
          {
            paramOutputStream.write(arrayOfByte, 0, i14);
            if (this.h != null) {
              this.h.a();
            }
          }
          if (this.s) {
            break label594;
          }
          if (i3 < 2147483647) {
            break label575;
          }
          i5 = i3;
          a("total bytes read from stream: " + i5);
          a("last read result: " + i4);
          paramOutputStream.flush();
          paramOutputStream.close();
          paramInputStream.close();
          if (this.r == this.q) {
            break label593;
          }
          if (!this.s) {
            break label582;
          }
          throw new e(f.c);
          i1 = 2147483647;
          break;
        }
        int i18 = b;
        if (i18 > 0) {}
        try
        {
          Thread.sleep(b);
          if ((this.g) && (this.r > 1048576))
          {
            int i22 = 0;
            if (i22 < arrayOfByte.length)
            {
              arrayOfByte[i22] = ((byte)(i22 & 0xFF));
              i22++;
              continue;
              localObject = finally;
            }
          }
        }
        catch (InterruptedException localInterruptedException)
        {
          throw new e(localInterruptedException);
        }
        int i16;
        i8 += i11;
      }
      finally
      {
        i16 = i8;
        if (i16 > 0)
        {
          paramOutputStream.write(arrayOfByte, 0, i16);
          if (this.h != null) {
            this.h.a();
          }
        }
      }
      i6 -= i11;
      i10 -= i11;
      this.r = (i11 + this.r);
      i7 += i11;
      if (this.u != null)
      {
        int i21 = (int)(100 * this.r / this.q);
        this.u.b(i21);
      }
      if (i7 >= 2147483647)
      {
        a("download exceeded MAX_DOWNLOAD_SIZE, terminating");
        int i19 = i8;
        i3 = i7;
        i13 = i10;
        i4 = i11;
        i14 = i19;
      }
      else
      {
        boolean bool = this.s;
        if (!bool) {
          break label101;
        }
        int i20 = i8;
        i3 = i7;
        i13 = i10;
        i4 = i11;
        i14 = i20;
        continue;
        label575:
        i2 = i13;
        break label67;
        label582:
        throw new e(f.d);
        label593:
        return;
        label594:
        i5 = i3;
        continue;
        label601:
        int i12 = i8;
        i3 = i7;
        i13 = i10;
        i4 = i11;
        i14 = i12;
      }
    }
  }
  
  private void a(String paramString) {}
  
  private void b(HttpRequest paramHttpRequest)
  {
    a("====== HEADERS ========");
    try
    {
      Map localMap = paramHttpRequest.getResponseHeaders();
      Iterator localIterator1 = localMap.keySet().iterator();
      while (localIterator1.hasNext())
      {
        String str1 = (String)localIterator1.next();
        Iterator localIterator2 = ((List)localMap.get(str1)).iterator();
        while (localIterator2.hasNext())
        {
          String str2 = (String)localIterator2.next();
          a("HEADER " + str1 + ": " + str2);
        }
      }
      return;
    }
    catch (IOException localIOException)
    {
      a("failed getting headers: " + localIOException);
      a("=======================");
    }
  }
  
  protected static ContentResolver j()
  {
    return ViberApplication.getInstance().getContentResolver();
  }
  
  protected OutputStream a(Uri paramUri)
  {
    if (this.e) {
      return j().openOutputStream(paramUri, "wa");
    }
    return j().openOutputStream(paramUri);
  }
  
  public String a()
  {
    return this.k;
  }
  
  protected void a(int paramInt) {}
  
  protected void a(HttpRequest paramHttpRequest) {}
  
  public void a(m paramm)
  {
    this.u = paramm;
  }
  
  protected void a(URL paramURL)
  {
    int i1 = 0;
    int i2;
    if (this.m != null)
    {
      this.f = new File(this.m);
      this.e = false;
      if ((a) && (this.f.exists()) && (this.f.length() > 0L))
      {
        i2 = (int)this.f.length();
        a("Continuing download, current size:" + i2);
        this.e = true;
      }
    }
    for (;;)
    {
      HttpRequest localHttpRequest = ViberEnv.newHttpRequest(paramURL.toString());
      localHttpRequest.setConnectTimeout(600000);
      localHttpRequest.setReadTimeout(30000);
      if (this.e) {
        localHttpRequest.setRequestHeader("Range", "bytes=" + i2 + "-");
      }
      a(localHttpRequest);
      int i3 = localHttpRequest.getResponseCode();
      a("Response code : " + i3);
      b(localHttpRequest);
      String str;
      switch (i3)
      {
      default: 
        try
        {
          Object[] arrayOfObject = new Object[2];
          arrayOfObject[0] = Integer.valueOf(i3);
          arrayOfObject[1] = paramURL;
          throw new IOException(String.format("Wrong server response: %d for URL = %s", arrayOfObject));
        }
        finally {}
        if (i1 == 0) {
          this.v = i3;
        }
        throw localObject1;
      case 200: 
      case 203: 
      case 206: 
        this.d = localHttpRequest.getInputStream();
        this.v = i3;
        if (this.e)
        {
          str = localHttpRequest.getResponseHeader("Content-Range");
          if (str == null)
          {
            this.e = false;
            this.q = ((int)localHttpRequest.getContentLength());
          }
        }
        break;
      }
      for (;;)
      {
        a(this.q);
        return;
        try
        {
          this.o = (1 + this.o);
          throw new g(localHttpRequest.getResponseHeader("location"));
        }
        finally {}
        break;
        throw new e(f.e);
        b(this.f);
        this.v = i3;
        return;
        k localk = j.a(str);
        if ((localk == null) || (localk.a() != i2)) {
          throw new IOException("Invalid range header: " + str);
        }
        this.q = localk.c();
        this.r = i2;
        a("Continuing download, " + localk.toString());
        continue;
        this.q = ((int)localHttpRequest.getContentLength());
        a("Starting download, totalFileSize: " + this.q);
      }
      i2 = 0;
    }
  }
  
  protected boolean a(File paramFile)
  {
    return true;
  }
  
  public String b()
  {
    return this.l;
  }
  
  protected void b(File paramFile)
  {
    a("Moving temp file" + paramFile.getAbsolutePath() + " to " + this.n + ",delete downloadFile:" + a(paramFile));
    if (a(paramFile)) {
      paramFile.renameTo(new File(this.n));
    }
    for (;;)
    {
      this.t = true;
      return;
      a("Create copy for currently playing video file");
      File localFile = h.b(l.d, null);
      bj.a(paramFile, localFile);
      localFile.renameTo(new File(this.n));
    }
  }
  
  protected void b(URL paramURL)
  {
    a(paramURL);
    if (this.f != null) {}
    try
    {
      OutputStream localOutputStream = a(Uri.fromFile(this.f));
      if (this.h != null) {
        this.h.a(this.f.getAbsolutePath());
      }
      a(this.d, localOutputStream);
      this.d = null;
      b(this.f);
      return;
    }
    finally
    {
      if (!a) {
        this.f.delete();
      }
    }
  }
  
  public String c()
  {
    return this.n;
  }
  
  /* Error */
  public void d()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 73	com/viber/voip/util/upload/d:k	Ljava/lang/String;
    //   4: astore_1
    //   5: aload_0
    //   6: getfield 340	com/viber/voip/util/upload/d:o	I
    //   9: iconst_2
    //   10: if_icmpgt +160 -> 170
    //   13: aload_0
    //   14: getfield 125	com/viber/voip/util/upload/d:s	Z
    //   17: istore_3
    //   18: iload_3
    //   19: ifne +151 -> 170
    //   22: new 274	java/net/URL
    //   25: dup
    //   26: aload_1
    //   27: invokespecial 426	java/net/URL:<init>	(Ljava/lang/String;)V
    //   30: astore 4
    //   32: aload_0
    //   33: aload_1
    //   34: putfield 371	com/viber/voip/util/upload/d:l	Ljava/lang/String;
    //   37: aload_0
    //   38: aload 4
    //   40: invokevirtual 428	com/viber/voip/util/upload/d:b	(Ljava/net/URL;)V
    //   43: aload_0
    //   44: getfield 119	com/viber/voip/util/upload/d:h	Lcom/viber/voip/util/upload/i;
    //   47: ifnull +14 -> 61
    //   50: aload_0
    //   51: getfield 119	com/viber/voip/util/upload/d:h	Lcom/viber/voip/util/upload/i;
    //   54: aload_0
    //   55: getfield 390	com/viber/voip/util/upload/d:t	Z
    //   58: invokevirtual 431	com/viber/voip/util/upload/i:a	(Z)V
    //   61: return
    //   62: astore 8
    //   64: new 154	com/viber/voip/util/upload/e
    //   67: dup
    //   68: aload 8
    //   70: invokespecial 174	com/viber/voip/util/upload/e:<init>	(Ljava/lang/Throwable;)V
    //   73: athrow
    //   74: astore_2
    //   75: aload_0
    //   76: getfield 119	com/viber/voip/util/upload/d:h	Lcom/viber/voip/util/upload/i;
    //   79: ifnull +14 -> 93
    //   82: aload_0
    //   83: getfield 119	com/viber/voip/util/upload/d:h	Lcom/viber/voip/util/upload/i;
    //   86: aload_0
    //   87: getfield 390	com/viber/voip/util/upload/d:t	Z
    //   90: invokevirtual 431	com/viber/voip/util/upload/i:a	(Z)V
    //   93: aload_2
    //   94: athrow
    //   95: astore 7
    //   97: aload_0
    //   98: iconst_1
    //   99: aload_0
    //   100: getfield 61	com/viber/voip/util/upload/d:p	I
    //   103: iadd
    //   104: putfield 61	com/viber/voip/util/upload/d:p	I
    //   107: aload_0
    //   108: getfield 61	com/viber/voip/util/upload/d:p	I
    //   111: iconst_3
    //   112: if_icmple -107 -> 5
    //   115: new 154	com/viber/voip/util/upload/e
    //   118: dup
    //   119: aload 7
    //   121: invokespecial 174	com/viber/voip/util/upload/e:<init>	(Ljava/lang/Throwable;)V
    //   124: athrow
    //   125: astore 5
    //   127: aload 5
    //   129: invokevirtual 433	com/viber/voip/util/upload/g:b	()Ljava/lang/String;
    //   132: astore 6
    //   134: aload_0
    //   135: new 128	java/lang/StringBuilder
    //   138: dup
    //   139: invokespecial 129	java/lang/StringBuilder:<init>	()V
    //   142: ldc_w 435
    //   145: invokevirtual 135	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   148: aload 6
    //   150: invokevirtual 135	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   153: invokevirtual 141	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   156: invokespecial 143	com/viber/voip/util/upload/d:a	(Ljava/lang/String;)V
    //   159: aload_0
    //   160: iconst_1
    //   161: putfield 61	com/viber/voip/util/upload/d:p	I
    //   164: aload 6
    //   166: astore_1
    //   167: goto -162 -> 5
    //   170: aload_0
    //   171: getfield 125	com/viber/voip/util/upload/d:s	Z
    //   174: ifeq +14 -> 188
    //   177: new 154	com/viber/voip/util/upload/e
    //   180: dup
    //   181: getstatic 159	com/viber/voip/util/upload/f:c	Lcom/viber/voip/util/upload/f;
    //   184: invokespecial 162	com/viber/voip/util/upload/e:<init>	(Lcom/viber/voip/util/upload/f;)V
    //   187: athrow
    //   188: new 154	com/viber/voip/util/upload/e
    //   191: dup
    //   192: getstatic 437	com/viber/voip/util/upload/f:b	Lcom/viber/voip/util/upload/f;
    //   195: invokespecial 162	com/viber/voip/util/upload/e:<init>	(Lcom/viber/voip/util/upload/f;)V
    //   198: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	199	0	this	d
    //   4	163	1	localObject1	Object
    //   74	20	2	localObject2	Object
    //   17	2	3	bool	boolean
    //   30	9	4	localURL	URL
    //   125	3	5	localg	g
    //   132	33	6	str	String
    //   95	25	7	localIOException	IOException
    //   62	7	8	localMalformedURLException	java.net.MalformedURLException
    // Exception table:
    //   from	to	target	type
    //   22	43	62	java/net/MalformedURLException
    //   5	18	74	finally
    //   22	43	74	finally
    //   64	74	74	finally
    //   97	125	74	finally
    //   127	164	74	finally
    //   170	188	74	finally
    //   188	199	74	finally
    //   22	43	95	java/io/IOException
    //   22	43	125	com/viber/voip/util/upload/g
  }
  
  public int e()
  {
    return this.o;
  }
  
  public void f()
  {
    this.s = true;
    if (this.d != null) {}
    try
    {
      this.d.close();
      if (this.h != null) {
        this.h.close();
      }
      label33:
      this.d = null;
      return;
    }
    catch (IOException localIOException)
    {
      break label33;
    }
  }
  
  public int g()
  {
    return this.q;
  }
  
  public int h()
  {
    return this.v;
  }
  
  public boolean i()
  {
    return this.t;
  }
  
  public String k()
  {
    return this.m;
  }
  
  public i l()
  {
    try
    {
      if (this.h == null) {
        this.h = new i();
      }
      i locali = this.h;
      return locali;
    }
    finally {}
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.util.upload.d
 * JD-Core Version:    0.7.0.1
 */