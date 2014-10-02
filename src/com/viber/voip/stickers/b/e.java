package com.viber.voip.stickers.b;

import android.os.Environment;
import android.os.SystemClock;
import android.util.SparseIntArray;
import com.viber.voip.ViberApplication;
import com.viber.voip.stickers.ak;
import com.viber.voip.stickers.an;
import com.viber.voip.stickers.ba;
import com.viber.voip.stickers.c.c;
import com.viber.voip.stickers.r;
import com.viber.voip.util.gj;
import com.viber.voip.util.upload.f;
import com.viber.voip.util.upload.m;
import com.viber.voip.w;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;

public abstract class e
  extends a
  implements m, Runnable
{
  private static Pattern b = Pattern.compile("(^|/)([0-9a-f]{8})\\.(png|svg)$", 2);
  private static Pattern c = Pattern.compile("(^|/)([0-9a-f]{8})\\_frame.(png|svg)$", 2);
  private r d;
  private final com.viber.voip.stickers.b e;
  private final com.viber.voip.stickers.bb f;
  private com.viber.voip.stickers.c.e g;
  private String h;
  private String i;
  private String j;
  private String k;
  private int l;
  private com.viber.voip.util.upload.d m;
  private long n;
  private SparseIntArray o = new SparseIntArray();
  private boolean[][] p;
  
  public e(com.viber.voip.stickers.c.e parame, com.viber.voip.stickers.d.b paramb)
  {
    super(paramb);
    int[] arrayOfInt = { 5, 2 };
    this.p = ((boolean[][])Array.newInstance(Boolean.TYPE, arrayOfInt));
    this.d = r.a();
    this.e = this.d.d();
    this.f = this.d.e();
    this.g = parame;
    paramb.a(parame);
    a("download package " + this.g.e() + " from " + this.h);
  }
  
  private com.viber.voip.stickers.c.d a(InputStream paramInputStream)
  {
    ArrayList localArrayList = new ArrayList();
    ZipInputStream localZipInputStream = new ZipInputStream(paramInputStream);
    com.viber.voip.stickers.b localb = r.a().d();
    ZipEntry localZipEntry = localZipInputStream.getNextEntry();
    int i1 = 0;
    if (localZipEntry != null)
    {
      int i3;
      int i4;
      int i5;
      label82:
      int i6;
      int i7;
      label101:
      label106:
      com.viber.voip.stickers.c.a locala2;
      if (!localZipEntry.isDirectory())
      {
        i3 = b(localZipEntry.getName());
        i4 = c(localZipEntry.getName());
        if ((i3 >= 0) || (i4 >= 0))
        {
          i5 = 1;
          if (i5 == 0) {
            break label416;
          }
          i6 = i1 + 1;
          if (i4 < 0) {
            break label348;
          }
          i7 = 1;
          if (i3 < 0) {
            break label354;
          }
          com.viber.voip.stickers.c.a locala1 = this.d.a(i3, this.g.e(), false);
          locala2 = new com.viber.voip.stickers.c.a(i3, this.g.e());
          locala2.a(locala1.d());
          locala2.b(d(localZipEntry.getName()));
          if (i7 == 0) {
            break label361;
          }
          a("Unzip, saving sticker frame entry: " + localZipEntry.getName());
          h.a(locala2.v, localZipInputStream);
          label207:
          if (d(i3) == 2)
          {
            a(locala2);
            this.d.d().b(locala2);
          }
        }
      }
      for (;;)
      {
        try
        {
          localb.a(locala2, ba.a);
          localb.a(locala2, ba.b);
          if (locala2.j()) {
            c(locala2);
          }
          if (locala2.c == c.a) {
            this.a.a(locala2);
          }
          a("Unzip, add sticker to collection: " + locala2);
          localArrayList.add(locala2);
          i2 = i6;
          localZipInputStream.closeEntry();
          localZipEntry = localZipInputStream.getNextEntry();
          i1 = i2;
        }
        catch (ak localak)
        {
          label348:
          label354:
          label361:
          throw new IOException("Low storage during deployment! Aborting");
        }
        i5 = 0;
        break label82;
        i7 = 0;
        break label101;
        i3 = i4;
        break label106;
        if (i3 < 0) {
          break label207;
        }
        a("Unzip, saving sticker entry: " + localZipEntry.getName());
        h.a(locala2.u, localZipInputStream);
        break label207;
        label416:
        a("Unzip, ignoring entry: " + localZipEntry.getName());
        int i2 = i1;
      }
    }
    localZipInputStream.close();
    if (i1 == 0) {
      throw new IOException("Unzip, no stickes unzipped, generating an exception");
    }
    a(localArrayList, localb);
    this.g.c(false);
    this.g.a(true);
    this.g.b(true);
    this.g.a(localArrayList);
    a(localArrayList);
    this.d.b(this.g);
    this.d.a(this.g);
    this.a.c(this.g);
    a("Unzip, deploying stickers finished");
    return this.g;
  }
  
  private void a(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    for (int i1 = paramInt1; i1 < paramInt1 + paramInt3; i1++) {
      for (int i2 = paramInt2; i2 < paramInt2 + paramInt4; i2++) {
        this.p[i1][i2] = 1;
      }
    }
  }
  
  private void a(com.viber.voip.stickers.c.a parama)
  {
    if (parama.j())
    {
      long l1 = this.f.c(parama.u);
      long l2 = this.f.c(parama.v);
      this.f.a(parama.u, new com.viber.voip.stickers.f.a(l1));
      this.f.a(parama.v, new com.viber.voip.stickers.f.a(l2));
    }
    parama.a();
  }
  
  private void a(Exception paramException)
  {
    a("exception during download/deployment: " + paramException.getMessage());
    boolean bool;
    if ((paramException instanceof com.viber.voip.util.upload.e))
    {
      f localf = ((com.viber.voip.util.upload.e)paramException).a();
      if ((localf == f.e) || (localf == f.g)) {
        bool = true;
      }
    }
    for (;;)
    {
      this.a.a(bool, this.g);
      if (this.m.i()) {
        f();
      }
      for (;;)
      {
        a("reportExceptionDuringDownload exception", paramException);
        return;
        bool = false;
        break;
        a("Download has not finished successfully, not blaming unpack");
      }
      bool = false;
    }
  }
  
  private void a(ArrayList<com.viber.voip.stickers.c.a> paramArrayList, com.viber.voip.stickers.b paramb)
  {
    Collections.sort(paramArrayList);
    g();
    Iterator localIterator1 = paramArrayList.iterator();
    while (localIterator1.hasNext())
    {
      com.viber.voip.stickers.c.a locala = (com.viber.voip.stickers.c.a)localIterator1.next();
      b(locala);
      this.d.c(locala);
    }
    an.a(this.g, paramArrayList);
    try
    {
      Iterator localIterator2 = paramArrayList.iterator();
      while (localIterator2.hasNext()) {
        paramb.a((com.viber.voip.stickers.c.a)localIterator2.next(), ba.c);
      }
      return;
    }
    catch (ak localak)
    {
      throw new IOException("Low storage during deployment! Aborting");
    }
  }
  
  private void a(List<com.viber.voip.stickers.c.a> paramList)
  {
    if ((paramList.size() == 0) || (!((com.viber.voip.stickers.c.a)paramList.get(0)).j())) {}
    for (;;)
    {
      return;
      Iterator localIterator = paramList.iterator();
      while (localIterator.hasNext())
      {
        com.viber.voip.stickers.c.a locala = (com.viber.voip.stickers.c.a)localIterator.next();
        com.viber.voip.stickers.f.a locala1 = this.f.a(locala.u);
        if (locala1 != null)
        {
          this.f.b(locala1);
          locala1.a = -1L;
        }
        com.viber.voip.stickers.f.a locala2 = this.f.a(locala.v);
        if (locala2 != null)
        {
          this.f.b(locala2);
          locala2.a = -1L;
        }
      }
    }
  }
  
  private int[] a(int paramInt1, int paramInt2)
  {
    for (int i1 = 0; i1 < 2; i1++) {
      label121:
      for (int i2 = 0; i2 < 5; i2++) {
        if ((this.p[i2][i1] == 0) && (i2 + paramInt1 <= 5) && (paramInt2 + i1 <= 2))
        {
          int i3 = i1;
          int i4 = 1;
          for (;;)
          {
            if (i3 < paramInt2 + i1) {}
            for (int i5 = i2;; i5++) {
              if (i5 < i2 + paramInt1)
              {
                if (this.p[i5][i3] != 0) {
                  i4 = 0;
                }
              }
              else
              {
                if (i4 != 0) {
                  break;
                }
                if (i4 == 0) {
                  break label121;
                }
                return new int[] { i2, i1 };
              }
            }
            i3++;
          }
        }
      }
    }
    g();
    return new int[] { 0, 0 };
  }
  
  private int b(String paramString)
  {
    Matcher localMatcher = b.matcher(paramString);
    if (localMatcher.find()) {
      return Integer.parseInt(localMatcher.group(2), 10);
    }
    return -1;
  }
  
  private void b(com.viber.voip.stickers.c.a parama)
  {
    int[] arrayOfInt = a(parama.j, parama.k);
    parama.d = arrayOfInt[0];
    parama.e = arrayOfInt[1];
    a(parama.d, parama.e, parama.j, parama.k);
  }
  
  private int c(String paramString)
  {
    Matcher localMatcher = c.matcher(paramString);
    if (localMatcher.find()) {
      return Integer.parseInt(localMatcher.group(2), 10);
    }
    return -1;
  }
  
  private void c(com.viber.voip.stickers.c.a parama)
  {
    this.d.d().a(parama.a(true, true, ba.a));
    this.d.d().a(parama.a(true, false, ba.a));
    this.d.d().a(parama.a(false, true, ba.a));
    this.d.d().a(parama.a(false, false, ba.a));
    this.d.d().a(parama.a(true, true, ba.b));
    this.d.d().a(parama.a(false, true, ba.b));
  }
  
  private int d(int paramInt)
  {
    int i1 = 1 + this.o.get(paramInt, 0);
    this.o.put(paramInt, i1);
    return i1;
  }
  
  private boolean d(String paramString)
  {
    return paramString.endsWith(".svg");
  }
  
  private String e(String paramString)
  {
    return w.w + gj.a(paramString) + ".zip";
  }
  
  private boolean e()
  {
    return this.g.e() != 400;
  }
  
  private void f()
  {
    a("handleExceptionDuringUnpack()");
    if ("mounted".equals(Environment.getExternalStorageState()))
    {
      a("Deleting " + this.i + ", success:" + new File(this.i).delete());
      a("Deleting " + this.j + ", success:" + new File(this.j).delete());
      ViberApplication.getInstance().getDownloadValve().a(this.h);
      return;
    }
    a("sdcard unmounted");
  }
  
  private void g()
  {
    for (int i1 = 0; i1 < 5; i1++) {
      for (int i2 = 0; i2 < 2; i2++) {
        this.p[i1][i2] = 0;
      }
    }
  }
  
  /* Error */
  public com.viber.voip.stickers.c.d a()
  {
    // Byte code:
    //   0: new 103	java/lang/StringBuilder
    //   3: dup
    //   4: invokespecial 104	java/lang/StringBuilder:<init>	()V
    //   7: ldc_w 490
    //   10: invokevirtual 110	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   13: aload_0
    //   14: getfield 96	com/viber/voip/stickers/b/e:g	Lcom/viber/voip/stickers/c/e;
    //   17: invokevirtual 115	com/viber/voip/stickers/c/e:e	()I
    //   20: invokevirtual 118	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   23: invokevirtual 126	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   26: invokestatic 129	com/viber/voip/stickers/b/e:a	(Ljava/lang/String;)V
    //   29: iconst_0
    //   30: invokestatic 495	com/viber/voip/messages/extras/image/h:a	(Z)Z
    //   33: ifne +43 -> 76
    //   36: new 103	java/lang/StringBuilder
    //   39: dup
    //   40: invokespecial 104	java/lang/StringBuilder:<init>	()V
    //   43: ldc_w 497
    //   46: invokevirtual 110	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   49: aload_0
    //   50: getfield 96	com/viber/voip/stickers/b/e:g	Lcom/viber/voip/stickers/c/e;
    //   53: invokevirtual 115	com/viber/voip/stickers/c/e:e	()I
    //   56: invokevirtual 118	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   59: invokevirtual 126	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   62: invokestatic 129	com/viber/voip/stickers/b/e:a	(Ljava/lang/String;)V
    //   65: new 305	com/viber/voip/util/upload/e
    //   68: dup
    //   69: getstatic 315	com/viber/voip/util/upload/f:g	Lcom/viber/voip/util/upload/f;
    //   72: invokespecial 500	com/viber/voip/util/upload/e:<init>	(Lcom/viber/voip/util/upload/f;)V
    //   75: athrow
    //   76: aload_0
    //   77: getfield 220	com/viber/voip/stickers/b/e:a	Lcom/viber/voip/stickers/d/b;
    //   80: aload_0
    //   81: getfield 96	com/viber/voip/stickers/b/e:g	Lcom/viber/voip/stickers/c/e;
    //   84: invokeinterface 502 2 0
    //   89: new 461	java/io/File
    //   92: dup
    //   93: getstatic 435	com/viber/voip/w:w	Ljava/lang/String;
    //   96: invokespecial 462	java/io/File:<init>	(Ljava/lang/String;)V
    //   99: invokevirtual 505	java/io/File:mkdirs	()Z
    //   102: pop
    //   103: new 163	com/viber/voip/stickers/c/a
    //   106: dup
    //   107: aload_0
    //   108: getfield 96	com/viber/voip/stickers/b/e:g	Lcom/viber/voip/stickers/c/e;
    //   111: invokevirtual 115	com/viber/voip/stickers/c/e:e	()I
    //   114: aload_0
    //   115: getfield 96	com/viber/voip/stickers/b/e:g	Lcom/viber/voip/stickers/c/e;
    //   118: invokevirtual 115	com/viber/voip/stickers/c/e:e	()I
    //   121: invokespecial 166	com/viber/voip/stickers/c/a:<init>	(II)V
    //   124: invokevirtual 506	com/viber/voip/stickers/c/a:f	()V
    //   127: aload_0
    //   128: getfield 96	com/viber/voip/stickers/b/e:g	Lcom/viber/voip/stickers/c/e;
    //   131: pop
    //   132: aload_0
    //   133: invokespecial 508	com/viber/voip/stickers/b/e:e	()Z
    //   136: ifeq +39 -> 175
    //   139: new 510	com/viber/voip/stickers/b/g
    //   142: dup
    //   143: aload_0
    //   144: getfield 96	com/viber/voip/stickers/b/e:g	Lcom/viber/voip/stickers/c/e;
    //   147: invokevirtual 115	com/viber/voip/stickers/c/e:e	()I
    //   150: iconst_1
    //   151: invokespecial 513	com/viber/voip/stickers/b/g:<init>	(IZ)V
    //   154: invokevirtual 514	com/viber/voip/stickers/b/g:a	()V
    //   157: new 510	com/viber/voip/stickers/b/g
    //   160: dup
    //   161: aload_0
    //   162: getfield 96	com/viber/voip/stickers/b/e:g	Lcom/viber/voip/stickers/c/e;
    //   165: invokevirtual 115	com/viber/voip/stickers/c/e:e	()I
    //   168: iconst_0
    //   169: invokespecial 513	com/viber/voip/stickers/b/g:<init>	(IZ)V
    //   172: invokevirtual 514	com/viber/voip/stickers/b/g:a	()V
    //   175: aload_0
    //   176: monitorenter
    //   177: aload_0
    //   178: getfield 276	com/viber/voip/stickers/b/e:m	Lcom/viber/voip/util/upload/d;
    //   181: invokevirtual 517	com/viber/voip/util/upload/d:l	()Lcom/viber/voip/util/upload/i;
    //   184: astore 6
    //   186: new 519	com/viber/voip/stickers/b/f
    //   189: dup
    //   190: aload_0
    //   191: aload 6
    //   193: invokespecial 522	com/viber/voip/stickers/b/f:<init>	(Lcom/viber/voip/stickers/b/e;Ljava/io/InputStream;)V
    //   196: invokevirtual 525	com/viber/voip/stickers/b/f:start	()V
    //   199: ldc_w 527
    //   202: invokestatic 129	com/viber/voip/stickers/b/e:a	(Ljava/lang/String;)V
    //   205: aload_0
    //   206: aload 6
    //   208: invokespecial 529	com/viber/voip/stickers/b/e:a	(Ljava/io/InputStream;)Lcom/viber/voip/stickers/c/d;
    //   211: astore 9
    //   213: ldc_w 531
    //   216: invokestatic 129	com/viber/voip/stickers/b/e:a	(Ljava/lang/String;)V
    //   219: aload_0
    //   220: invokevirtual 536	java/lang/Object:wait	()V
    //   223: ldc_w 538
    //   226: invokestatic 129	com/viber/voip/stickers/b/e:a	(Ljava/lang/String;)V
    //   229: aload_0
    //   230: monitorexit
    //   231: new 103	java/lang/StringBuilder
    //   234: dup
    //   235: invokespecial 104	java/lang/StringBuilder:<init>	()V
    //   238: ldc_w 540
    //   241: invokevirtual 110	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   244: aload_0
    //   245: getfield 457	com/viber/voip/stickers/b/e:i	Ljava/lang/String;
    //   248: invokevirtual 110	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   251: invokevirtual 126	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   254: invokestatic 129	com/viber/voip/stickers/b/e:a	(Ljava/lang/String;)V
    //   257: new 461	java/io/File
    //   260: dup
    //   261: aload_0
    //   262: getfield 457	com/viber/voip/stickers/b/e:i	Ljava/lang/String;
    //   265: invokespecial 462	java/io/File:<init>	(Ljava/lang/String;)V
    //   268: invokevirtual 465	java/io/File:delete	()Z
    //   271: pop
    //   272: aload 9
    //   274: areturn
    //   275: astore 10
    //   277: ldc_w 542
    //   280: invokestatic 129	com/viber/voip/stickers/b/e:a	(Ljava/lang/String;)V
    //   283: goto -54 -> 229
    //   286: astore 5
    //   288: aload_0
    //   289: monitorexit
    //   290: aload 5
    //   292: athrow
    //   293: astore 4
    //   295: aload_0
    //   296: aload 4
    //   298: invokespecial 281	com/viber/voip/stickers/b/e:a	(Ljava/lang/Exception;)V
    //   301: new 305	com/viber/voip/util/upload/e
    //   304: dup
    //   305: aload 4
    //   307: invokespecial 545	com/viber/voip/util/upload/e:<init>	(Ljava/lang/Throwable;)V
    //   310: athrow
    //   311: astore 7
    //   313: ldc_w 531
    //   316: invokestatic 129	com/viber/voip/stickers/b/e:a	(Ljava/lang/String;)V
    //   319: aload_0
    //   320: invokevirtual 536	java/lang/Object:wait	()V
    //   323: ldc_w 538
    //   326: invokestatic 129	com/viber/voip/stickers/b/e:a	(Ljava/lang/String;)V
    //   329: aload 7
    //   331: athrow
    //   332: astore 8
    //   334: ldc_w 542
    //   337: invokestatic 129	com/viber/voip/stickers/b/e:a	(Ljava/lang/String;)V
    //   340: goto -11 -> 329
    //   343: astore_3
    //   344: aload_0
    //   345: aload_3
    //   346: invokespecial 281	com/viber/voip/stickers/b/e:a	(Ljava/lang/Exception;)V
    //   349: aload_3
    //   350: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	351	0	this	e
    //   343	7	3	locale	com.viber.voip.util.upload.e
    //   293	13	4	localIOException	IOException
    //   286	5	5	localObject1	java.lang.Object
    //   184	23	6	locali	com.viber.voip.util.upload.i
    //   311	19	7	localObject2	java.lang.Object
    //   332	1	8	localInterruptedException1	java.lang.InterruptedException
    //   211	62	9	locald	com.viber.voip.stickers.c.d
    //   275	1	10	localInterruptedException2	java.lang.InterruptedException
    // Exception table:
    //   from	to	target	type
    //   213	229	275	java/lang/InterruptedException
    //   177	205	286	finally
    //   213	229	286	finally
    //   229	231	286	finally
    //   277	283	286	finally
    //   288	290	286	finally
    //   313	329	286	finally
    //   329	332	286	finally
    //   334	340	286	finally
    //   132	175	293	java/io/IOException
    //   175	177	293	java/io/IOException
    //   231	272	293	java/io/IOException
    //   290	293	293	java/io/IOException
    //   205	213	311	finally
    //   313	329	332	java/lang/InterruptedException
    //   132	175	343	com/viber/voip/util/upload/e
    //   175	177	343	com/viber/voip/util/upload/e
    //   231	272	343	com/viber/voip/util/upload/e
    //   290	293	343	com/viber/voip/util/upload/e
  }
  
  public void b()
  {
    if (this.m != null) {
      this.m.f();
    }
  }
  
  public void b(int paramInt)
  {
    this.l = paramInt;
    long l1 = SystemClock.elapsedRealtime();
    long l2 = l1 - this.n;
    if ((paramInt == 100) || (l2 > 2000L))
    {
      this.a.a(this.g, paramInt);
      this.n = l1;
    }
  }
  
  public com.viber.voip.stickers.c.d c()
  {
    return this.g;
  }
  
  public abstract void c(int paramInt);
  
  public int d()
  {
    return this.l;
  }
  
  /* Error */
  public void run()
  {
    // Byte code:
    //   0: aload_0
    //   1: aload_0
    //   2: getfield 96	com/viber/voip/stickers/b/e:g	Lcom/viber/voip/stickers/c/e;
    //   5: invokevirtual 115	com/viber/voip/stickers/c/e:e	()I
    //   8: invokevirtual 565	com/viber/voip/stickers/b/e:c	(I)V
    //   11: aload_0
    //   12: getfield 96	com/viber/voip/stickers/b/e:g	Lcom/viber/voip/stickers/c/e;
    //   15: invokevirtual 115	com/viber/voip/stickers/c/e:e	()I
    //   18: ldc_w 567
    //   21: invokestatic 570	com/viber/voip/stickers/b/h:b	(ILjava/lang/String;)Ljava/lang/String;
    //   24: astore_3
    //   25: invokestatic 476	com/viber/voip/ViberApplication:getInstance	()Lcom/viber/voip/ViberApplication;
    //   28: invokevirtual 480	com/viber/voip/ViberApplication:getDownloadValve	()Lcom/viber/voip/util/bb;
    //   31: aload_3
    //   32: invokevirtual 572	com/viber/voip/util/bb:b	(Ljava/lang/String;)Z
    //   35: istore 4
    //   37: iconst_0
    //   38: istore 5
    //   40: iload 4
    //   42: ifeq +35 -> 77
    //   45: aload_3
    //   46: invokestatic 573	com/viber/voip/stickers/b/h:b	(Ljava/lang/String;)I
    //   49: istore 9
    //   51: invokestatic 476	com/viber/voip/ViberApplication:getInstance	()Lcom/viber/voip/ViberApplication;
    //   54: invokevirtual 480	com/viber/voip/ViberApplication:getDownloadValve	()Lcom/viber/voip/util/bb;
    //   57: aload_3
    //   58: iload 9
    //   60: invokevirtual 576	com/viber/voip/util/bb:a	(Ljava/lang/String;I)V
    //   63: iconst_0
    //   64: istore 5
    //   66: iload 9
    //   68: sipush 200
    //   71: if_icmpne +6 -> 77
    //   74: iconst_1
    //   75: istore 5
    //   77: iload 5
    //   79: ifeq +253 -> 332
    //   82: ldc_w 567
    //   85: astore 6
    //   87: aload_0
    //   88: aload 6
    //   90: putfield 578	com/viber/voip/stickers/b/e:k	Ljava/lang/String;
    //   93: aload_0
    //   94: aload_0
    //   95: getfield 96	com/viber/voip/stickers/b/e:g	Lcom/viber/voip/stickers/c/e;
    //   98: invokevirtual 115	com/viber/voip/stickers/c/e:e	()I
    //   101: aload_0
    //   102: getfield 578	com/viber/voip/stickers/b/e:k	Ljava/lang/String;
    //   105: invokestatic 570	com/viber/voip/stickers/b/h:b	(ILjava/lang/String;)Ljava/lang/String;
    //   108: putfield 122	com/viber/voip/stickers/b/e:h	Ljava/lang/String;
    //   111: invokestatic 476	com/viber/voip/ViberApplication:getInstance	()Lcom/viber/voip/ViberApplication;
    //   114: invokevirtual 480	com/viber/voip/ViberApplication:getDownloadValve	()Lcom/viber/voip/util/bb;
    //   117: aload_0
    //   118: getfield 122	com/viber/voip/stickers/b/e:h	Ljava/lang/String;
    //   121: invokevirtual 572	com/viber/voip/util/bb:b	(Ljava/lang/String;)Z
    //   124: ifne +219 -> 343
    //   127: new 305	com/viber/voip/util/upload/e
    //   130: dup
    //   131: new 300	java/lang/Exception
    //   134: dup
    //   135: new 103	java/lang/StringBuilder
    //   138: dup
    //   139: invokespecial 104	java/lang/StringBuilder:<init>	()V
    //   142: ldc_w 580
    //   145: invokevirtual 110	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   148: aload_0
    //   149: getfield 122	com/viber/voip/stickers/b/e:h	Ljava/lang/String;
    //   152: invokevirtual 110	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   155: invokevirtual 126	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   158: invokespecial 581	java/lang/Exception:<init>	(Ljava/lang/String;)V
    //   161: invokespecial 545	com/viber/voip/util/upload/e:<init>	(Ljava/lang/Throwable;)V
    //   164: athrow
    //   165: astore_2
    //   166: new 103	java/lang/StringBuilder
    //   169: dup
    //   170: invokespecial 104	java/lang/StringBuilder:<init>	()V
    //   173: ldc_w 583
    //   176: invokevirtual 110	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   179: aload_2
    //   180: invokevirtual 584	com/viber/voip/util/upload/e:getMessage	()Ljava/lang/String;
    //   183: invokevirtual 110	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   186: invokevirtual 126	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   189: aload_2
    //   190: invokestatic 329	com/viber/voip/stickers/b/e:a	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   193: aload_0
    //   194: getfield 276	com/viber/voip/stickers/b/e:m	Lcom/viber/voip/util/upload/d;
    //   197: ifnull +36 -> 233
    //   200: aload_0
    //   201: getfield 276	com/viber/voip/stickers/b/e:m	Lcom/viber/voip/util/upload/d;
    //   204: invokevirtual 586	com/viber/voip/util/upload/d:h	()I
    //   207: ifeq +26 -> 233
    //   210: invokestatic 476	com/viber/voip/ViberApplication:getInstance	()Lcom/viber/voip/ViberApplication;
    //   213: invokevirtual 480	com/viber/voip/ViberApplication:getDownloadValve	()Lcom/viber/voip/util/bb;
    //   216: aload_0
    //   217: getfield 276	com/viber/voip/stickers/b/e:m	Lcom/viber/voip/util/upload/d;
    //   220: invokevirtual 588	com/viber/voip/util/upload/d:a	()Ljava/lang/String;
    //   223: aload_0
    //   224: getfield 276	com/viber/voip/stickers/b/e:m	Lcom/viber/voip/util/upload/d;
    //   227: invokevirtual 586	com/viber/voip/util/upload/d:h	()I
    //   230: invokevirtual 576	com/viber/voip/util/bb:a	(Ljava/lang/String;I)V
    //   233: aload_0
    //   234: aload_0
    //   235: getfield 96	com/viber/voip/stickers/b/e:g	Lcom/viber/voip/stickers/c/e;
    //   238: invokevirtual 115	com/viber/voip/stickers/c/e:e	()I
    //   241: invokevirtual 590	com/viber/voip/stickers/b/e:a	(I)V
    //   244: return
    //   245: astore 8
    //   247: new 103	java/lang/StringBuilder
    //   250: dup
    //   251: invokespecial 104	java/lang/StringBuilder:<init>	()V
    //   254: ldc_w 592
    //   257: invokevirtual 110	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   260: aload_3
    //   261: invokevirtual 110	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   264: invokevirtual 126	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   267: aload 8
    //   269: invokestatic 329	com/viber/voip/stickers/b/e:a	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   272: iconst_0
    //   273: istore 5
    //   275: goto -198 -> 77
    //   278: astore_1
    //   279: aload_0
    //   280: getfield 276	com/viber/voip/stickers/b/e:m	Lcom/viber/voip/util/upload/d;
    //   283: ifnull +36 -> 319
    //   286: aload_0
    //   287: getfield 276	com/viber/voip/stickers/b/e:m	Lcom/viber/voip/util/upload/d;
    //   290: invokevirtual 586	com/viber/voip/util/upload/d:h	()I
    //   293: ifeq +26 -> 319
    //   296: invokestatic 476	com/viber/voip/ViberApplication:getInstance	()Lcom/viber/voip/ViberApplication;
    //   299: invokevirtual 480	com/viber/voip/ViberApplication:getDownloadValve	()Lcom/viber/voip/util/bb;
    //   302: aload_0
    //   303: getfield 276	com/viber/voip/stickers/b/e:m	Lcom/viber/voip/util/upload/d;
    //   306: invokevirtual 588	com/viber/voip/util/upload/d:a	()Ljava/lang/String;
    //   309: aload_0
    //   310: getfield 276	com/viber/voip/stickers/b/e:m	Lcom/viber/voip/util/upload/d;
    //   313: invokevirtual 586	com/viber/voip/util/upload/d:h	()I
    //   316: invokevirtual 576	com/viber/voip/util/bb:a	(Ljava/lang/String;I)V
    //   319: aload_0
    //   320: aload_0
    //   321: getfield 96	com/viber/voip/stickers/b/e:g	Lcom/viber/voip/stickers/c/e;
    //   324: invokevirtual 115	com/viber/voip/stickers/c/e:e	()I
    //   327: invokevirtual 590	com/viber/voip/stickers/b/e:a	(I)V
    //   330: aload_1
    //   331: athrow
    //   332: getstatic 593	com/viber/voip/stickers/an:j	I
    //   335: invokestatic 596	java/lang/String:valueOf	(I)Ljava/lang/String;
    //   338: astore 6
    //   340: goto -253 -> 87
    //   343: aload_0
    //   344: aload_0
    //   345: aload_0
    //   346: getfield 122	com/viber/voip/stickers/b/e:h	Ljava/lang/String;
    //   349: invokespecial 598	com/viber/voip/stickers/b/e:e	(Ljava/lang/String;)Ljava/lang/String;
    //   352: putfield 457	com/viber/voip/stickers/b/e:i	Ljava/lang/String;
    //   355: aload_0
    //   356: new 103	java/lang/StringBuilder
    //   359: dup
    //   360: invokespecial 104	java/lang/StringBuilder:<init>	()V
    //   363: aload_0
    //   364: getfield 457	com/viber/voip/stickers/b/e:i	Ljava/lang/String;
    //   367: invokevirtual 110	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   370: ldc_w 600
    //   373: invokevirtual 110	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   376: invokevirtual 126	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   379: putfield 470	com/viber/voip/stickers/b/e:j	Ljava/lang/String;
    //   382: aload_0
    //   383: new 320	com/viber/voip/util/upload/d
    //   386: dup
    //   387: aload_0
    //   388: getfield 122	com/viber/voip/stickers/b/e:h	Ljava/lang/String;
    //   391: aload_0
    //   392: getfield 457	com/viber/voip/stickers/b/e:i	Ljava/lang/String;
    //   395: aload_0
    //   396: getfield 470	com/viber/voip/stickers/b/e:j	Ljava/lang/String;
    //   399: invokespecial 603	com/viber/voip/util/upload/d:<init>	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    //   402: putfield 276	com/viber/voip/stickers/b/e:m	Lcom/viber/voip/util/upload/d;
    //   405: aload_0
    //   406: getfield 276	com/viber/voip/stickers/b/e:m	Lcom/viber/voip/util/upload/d;
    //   409: aload_0
    //   410: invokevirtual 606	com/viber/voip/util/upload/d:a	(Lcom/viber/voip/util/upload/m;)V
    //   413: aload_0
    //   414: invokevirtual 608	com/viber/voip/stickers/b/e:a	()Lcom/viber/voip/stickers/c/d;
    //   417: pop
    //   418: invokestatic 476	com/viber/voip/ViberApplication:getInstance	()Lcom/viber/voip/ViberApplication;
    //   421: invokevirtual 480	com/viber/voip/ViberApplication:getDownloadValve	()Lcom/viber/voip/util/bb;
    //   424: aload_0
    //   425: getfield 122	com/viber/voip/stickers/b/e:h	Ljava/lang/String;
    //   428: invokevirtual 610	com/viber/voip/util/bb:c	(Ljava/lang/String;)V
    //   431: aload_0
    //   432: getfield 276	com/viber/voip/stickers/b/e:m	Lcom/viber/voip/util/upload/d;
    //   435: ifnull +36 -> 471
    //   438: aload_0
    //   439: getfield 276	com/viber/voip/stickers/b/e:m	Lcom/viber/voip/util/upload/d;
    //   442: invokevirtual 586	com/viber/voip/util/upload/d:h	()I
    //   445: ifeq +26 -> 471
    //   448: invokestatic 476	com/viber/voip/ViberApplication:getInstance	()Lcom/viber/voip/ViberApplication;
    //   451: invokevirtual 480	com/viber/voip/ViberApplication:getDownloadValve	()Lcom/viber/voip/util/bb;
    //   454: aload_0
    //   455: getfield 276	com/viber/voip/stickers/b/e:m	Lcom/viber/voip/util/upload/d;
    //   458: invokevirtual 588	com/viber/voip/util/upload/d:a	()Ljava/lang/String;
    //   461: aload_0
    //   462: getfield 276	com/viber/voip/stickers/b/e:m	Lcom/viber/voip/util/upload/d;
    //   465: invokevirtual 586	com/viber/voip/util/upload/d:h	()I
    //   468: invokevirtual 576	com/viber/voip/util/bb:a	(Ljava/lang/String;I)V
    //   471: aload_0
    //   472: aload_0
    //   473: getfield 96	com/viber/voip/stickers/b/e:g	Lcom/viber/voip/stickers/c/e;
    //   476: invokevirtual 115	com/viber/voip/stickers/c/e:e	()I
    //   479: invokevirtual 590	com/viber/voip/stickers/b/e:a	(I)V
    //   482: return
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	483	0	this	e
    //   278	53	1	localObject	java.lang.Object
    //   165	25	2	locale	com.viber.voip.util.upload.e
    //   24	237	3	str1	String
    //   35	6	4	bool	boolean
    //   38	236	5	i1	int
    //   85	254	6	str2	String
    //   245	23	8	localException	Exception
    //   49	23	9	i2	int
    // Exception table:
    //   from	to	target	type
    //   0	37	165	com/viber/voip/util/upload/e
    //   45	63	165	com/viber/voip/util/upload/e
    //   87	165	165	com/viber/voip/util/upload/e
    //   247	272	165	com/viber/voip/util/upload/e
    //   332	340	165	com/viber/voip/util/upload/e
    //   343	431	165	com/viber/voip/util/upload/e
    //   45	63	245	java/lang/Exception
    //   0	37	278	finally
    //   45	63	278	finally
    //   87	165	278	finally
    //   166	193	278	finally
    //   247	272	278	finally
    //   332	340	278	finally
    //   343	431	278	finally
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.stickers.b.e
 * JD-Core Version:    0.7.0.1
 */