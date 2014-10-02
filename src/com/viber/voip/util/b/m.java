package com.viber.voip.util.b;

import java.io.BufferedWriter;
import java.io.Closeable;
import java.io.EOFException;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.Writer;
import java.lang.reflect.Array;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map.Entry;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

public final class m
  implements Closeable
{
  private static final Charset a = Charset.forName("UTF-8");
  private final File b;
  private final File c;
  private final File d;
  private final int e;
  private final long f;
  private final int g;
  private long h = 0L;
  private Writer i;
  private final LinkedHashMap<String, q> j = new LinkedHashMap(0, 0.75F, true);
  private int k;
  private long l = 0L;
  private final ExecutorService m = new ThreadPoolExecutor(0, 1, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue());
  private final Callable<Void> n = new n(this);
  
  private m(File paramFile, int paramInt1, int paramInt2, long paramLong)
  {
    this.b = paramFile;
    this.e = paramInt1;
    this.c = new File(paramFile, "journal");
    this.d = new File(paramFile, "journal.tmp");
    this.g = paramInt2;
    this.f = paramLong;
  }
  
  public static m a(File paramFile, int paramInt1, int paramInt2, long paramLong)
  {
    if (paramLong <= 0L) {
      throw new IllegalArgumentException("maxSize <= 0");
    }
    if (paramInt2 <= 0) {
      throw new IllegalArgumentException("valueCount <= 0");
    }
    m localm1 = new m(paramFile, paramInt1, paramInt2, paramLong);
    if (localm1.c.exists()) {
      try
      {
        localm1.d();
        localm1.e();
        localm1.i = new BufferedWriter(new FileWriter(localm1.c, true), 8192);
        return localm1;
      }
      catch (IOException localIOException)
      {
        localm1.c();
      }
    }
    paramFile.mkdirs();
    m localm2 = new m(paramFile, paramInt1, paramInt2, paramLong);
    localm2.f();
    return localm2;
  }
  
  private o a(String paramString, long paramLong)
  {
    for (;;)
    {
      q localq1;
      o localo2;
      q localq2;
      try
      {
        h();
        e(paramString);
        localq1 = (q)this.j.get(paramString);
        if (paramLong != -1L) {
          if (localq1 != null)
          {
            long l1 = q.e(localq1);
            if (l1 == paramLong) {}
          }
          else
          {
            localo2 = null;
            return localo2;
          }
        }
        if (localq1 == null)
        {
          q localq3 = new q(this, paramString, null);
          this.j.put(paramString, localq3);
          localq2 = localq3;
          localo2 = new o(this, localq2, null);
          q.a(localq2, localo2);
          this.i.write("DIRTY " + paramString + '\n');
          this.i.flush();
          continue;
        }
        localo1 = q.a(localq1);
      }
      finally {}
      o localo1;
      if (localo1 != null) {
        localo2 = null;
      } else {
        localq2 = localq1;
      }
    }
  }
  
  public static String a(InputStream paramInputStream)
  {
    StringBuilder localStringBuilder = new StringBuilder(80);
    for (;;)
    {
      int i1 = paramInputStream.read();
      if (i1 == -1) {
        throw new EOFException();
      }
      if (i1 == 10)
      {
        int i2 = localStringBuilder.length();
        if ((i2 > 0) && (localStringBuilder.charAt(i2 - 1) == '\r')) {
          localStringBuilder.setLength(i2 - 1);
        }
        return localStringBuilder.toString();
      }
      localStringBuilder.append((char)i1);
    }
  }
  
  private void a(o paramo, boolean paramBoolean)
  {
    q localq;
    try
    {
      localq = o.a(paramo);
      if (q.a(localq) != paramo) {
        throw new IllegalStateException();
      }
    }
    finally {}
    int i1 = 0;
    int i2;
    if (paramBoolean)
    {
      boolean bool = q.d(localq);
      i1 = 0;
      if (!bool)
      {
        i2 = 0;
        int i3 = this.g;
        i1 = 0;
        if (i2 < i3)
        {
          if (localq.b(i2).exists()) {
            break label407;
          }
          paramo.b();
          throw new IllegalStateException("edit didn't create file " + i2);
        }
      }
    }
    for (;;)
    {
      if (i1 < this.g)
      {
        File localFile1 = localq.b(i1);
        if (paramBoolean)
        {
          if (localFile1.exists())
          {
            File localFile2 = localq.a(i1);
            localFile1.renameTo(localFile2);
            long l2 = q.b(localq)[i1];
            long l3 = localFile2.length();
            q.b(localq)[i1] = l3;
            this.h = (l3 + (this.h - l2));
          }
        }
        else {
          b(localFile1);
        }
      }
      else
      {
        this.k = (1 + this.k);
        q.a(localq, null);
        if ((paramBoolean | q.d(localq)))
        {
          q.a(localq, true);
          this.i.write("CLEAN " + q.c(localq) + localq.a() + '\n');
          if (paramBoolean)
          {
            long l1 = this.l;
            this.l = (1L + l1);
            q.a(localq, l1);
          }
        }
        for (;;)
        {
          if ((this.h > this.f) || (g())) {
            this.m.submit(this.n);
          }
          return;
          this.j.remove(q.c(localq));
          this.i.write("REMOVE " + q.c(localq) + '\n');
        }
        label407:
        i2++;
        break;
      }
      i1++;
    }
  }
  
  public static void a(Closeable paramCloseable)
  {
    if (paramCloseable != null) {}
    try
    {
      paramCloseable.close();
      return;
    }
    catch (RuntimeException localRuntimeException)
    {
      throw localRuntimeException;
    }
    catch (Exception localException) {}
  }
  
  public static void a(File paramFile)
  {
    File[] arrayOfFile = paramFile.listFiles();
    if (arrayOfFile == null) {
      throw new IllegalArgumentException("not a directory: " + paramFile);
    }
    int i1 = arrayOfFile.length;
    for (int i2 = 0; i2 < i1; i2++)
    {
      File localFile = arrayOfFile[i2];
      if (localFile.isDirectory()) {
        a(localFile);
      }
      if (!localFile.delete()) {
        throw new IOException("failed to delete file: " + localFile);
      }
    }
  }
  
  private static <T> T[] a(T[] paramArrayOfT, int paramInt1, int paramInt2)
  {
    int i1 = paramArrayOfT.length;
    if (paramInt1 > paramInt2) {
      throw new IllegalArgumentException();
    }
    if ((paramInt1 < 0) || (paramInt1 > i1)) {
      throw new ArrayIndexOutOfBoundsException();
    }
    int i2 = paramInt2 - paramInt1;
    int i3 = Math.min(i2, i1 - paramInt1);
    Object[] arrayOfObject = (Object[])Array.newInstance(paramArrayOfT.getClass().getComponentType(), i2);
    System.arraycopy(paramArrayOfT, paramInt1, arrayOfObject, 0, i3);
    return arrayOfObject;
  }
  
  private static void b(File paramFile)
  {
    if ((paramFile.exists()) && (!paramFile.delete())) {
      throw new IOException();
    }
  }
  
  /* Error */
  private void d()
  {
    // Byte code:
    //   0: new 363	java/io/BufferedInputStream
    //   3: dup
    //   4: new 365	java/io/FileInputStream
    //   7: dup
    //   8: aload_0
    //   9: getfield 96	com/viber/voip/util/b/m:c	Ljava/io/File;
    //   12: invokespecial 367	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   15: sipush 8192
    //   18: invokespecial 370	java/io/BufferedInputStream:<init>	(Ljava/io/InputStream;I)V
    //   21: astore_1
    //   22: aload_1
    //   23: invokestatic 372	com/viber/voip/util/b/m:a	(Ljava/io/InputStream;)Ljava/lang/String;
    //   26: astore_3
    //   27: aload_1
    //   28: invokestatic 372	com/viber/voip/util/b/m:a	(Ljava/io/InputStream;)Ljava/lang/String;
    //   31: astore 4
    //   33: aload_1
    //   34: invokestatic 372	com/viber/voip/util/b/m:a	(Ljava/io/InputStream;)Ljava/lang/String;
    //   37: astore 5
    //   39: aload_1
    //   40: invokestatic 372	com/viber/voip/util/b/m:a	(Ljava/io/InputStream;)Ljava/lang/String;
    //   43: astore 6
    //   45: aload_1
    //   46: invokestatic 372	com/viber/voip/util/b/m:a	(Ljava/io/InputStream;)Ljava/lang/String;
    //   49: astore 7
    //   51: ldc_w 374
    //   54: aload_3
    //   55: invokevirtual 380	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   58: ifeq +55 -> 113
    //   61: ldc_w 382
    //   64: aload 4
    //   66: invokevirtual 380	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   69: ifeq +44 -> 113
    //   72: aload_0
    //   73: getfield 87	com/viber/voip/util/b/m:e	I
    //   76: invokestatic 387	java/lang/Integer:toString	(I)Ljava/lang/String;
    //   79: aload 5
    //   81: invokevirtual 380	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   84: ifeq +29 -> 113
    //   87: aload_0
    //   88: getfield 102	com/viber/voip/util/b/m:g	I
    //   91: invokestatic 387	java/lang/Integer:toString	(I)Ljava/lang/String;
    //   94: aload 6
    //   96: invokevirtual 380	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   99: ifeq +14 -> 113
    //   102: ldc_w 389
    //   105: aload 7
    //   107: invokevirtual 380	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   110: ifne +77 -> 187
    //   113: new 110	java/io/IOException
    //   116: dup
    //   117: new 181	java/lang/StringBuilder
    //   120: dup
    //   121: invokespecial 182	java/lang/StringBuilder:<init>	()V
    //   124: ldc_w 391
    //   127: invokevirtual 188	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   130: aload_3
    //   131: invokevirtual 188	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   134: ldc_w 393
    //   137: invokevirtual 188	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   140: aload 4
    //   142: invokevirtual 188	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   145: ldc_w 393
    //   148: invokevirtual 188	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   151: aload 6
    //   153: invokevirtual 188	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   156: ldc_w 393
    //   159: invokevirtual 188	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   162: aload 7
    //   164: invokevirtual 188	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   167: ldc_w 395
    //   170: invokevirtual 188	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   173: invokevirtual 195	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   176: invokespecial 323	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   179: athrow
    //   180: astore_2
    //   181: aload_1
    //   182: invokestatic 397	com/viber/voip/util/b/m:a	(Ljava/io/Closeable;)V
    //   185: aload_2
    //   186: athrow
    //   187: aload_0
    //   188: aload_1
    //   189: invokestatic 372	com/viber/voip/util/b/m:a	(Ljava/io/InputStream;)Ljava/lang/String;
    //   192: invokespecial 399	com/viber/voip/util/b/m:d	(Ljava/lang/String;)V
    //   195: goto -8 -> 187
    //   198: astore 8
    //   200: aload_1
    //   201: invokestatic 397	com/viber/voip/util/b/m:a	(Ljava/io/Closeable;)V
    //   204: return
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	205	0	this	m
    //   21	180	1	localBufferedInputStream	java.io.BufferedInputStream
    //   180	6	2	localObject	Object
    //   26	105	3	str1	String
    //   31	110	4	str2	String
    //   37	43	5	str3	String
    //   43	109	6	str4	String
    //   49	114	7	str5	String
    //   198	1	8	localEOFException	EOFException
    // Exception table:
    //   from	to	target	type
    //   22	113	180	finally
    //   113	180	180	finally
    //   187	195	180	finally
    //   187	195	198	java/io/EOFException
  }
  
  private void d(String paramString)
  {
    String[] arrayOfString = paramString.split(" ");
    if (arrayOfString.length < 2) {
      throw new IOException("unexpected journal line: " + paramString);
    }
    String str = arrayOfString[1];
    if ((arrayOfString[0].equals("REMOVE")) && (arrayOfString.length == 2))
    {
      this.j.remove(str);
      return;
    }
    q localq1 = (q)this.j.get(str);
    q localq2;
    if (localq1 == null)
    {
      localq2 = new q(this, str, null);
      this.j.put(str, localq2);
    }
    for (q localq3 = localq2;; localq3 = localq1)
    {
      if ((arrayOfString[0].equals("CLEAN")) && (arrayOfString.length == 2 + this.g))
      {
        q.a(localq3, true);
        q.a(localq3, null);
        q.a(localq3, (String[])a(arrayOfString, 2, arrayOfString.length));
        return;
      }
      if ((arrayOfString[0].equals("DIRTY")) && (arrayOfString.length == 2))
      {
        q.a(localq3, new o(this, localq3, null));
        return;
      }
      if ((arrayOfString[0].equals("READ")) && (arrayOfString.length == 2)) {
        break;
      }
      throw new IOException("unexpected journal line: " + paramString);
    }
  }
  
  private void e()
  {
    b(this.d);
    Iterator localIterator = this.j.values().iterator();
    while (localIterator.hasNext())
    {
      q localq = (q)localIterator.next();
      if (q.a(localq) == null)
      {
        for (int i2 = 0; i2 < this.g; i2++) {
          this.h += q.b(localq)[i2];
        }
      }
      else
      {
        q.a(localq, null);
        for (int i1 = 0; i1 < this.g; i1++)
        {
          b(localq.a(i1));
          b(localq.b(i1));
        }
        localIterator.remove();
      }
    }
  }
  
  private void e(String paramString)
  {
    if ((paramString.contains(" ")) || (paramString.contains("\n")) || (paramString.contains("\r"))) {
      throw new IllegalArgumentException("keys must not contain spaces or newlines: \"" + paramString + "\"");
    }
  }
  
  private void f()
  {
    BufferedWriter localBufferedWriter;
    for (;;)
    {
      try
      {
        if (this.i != null) {
          this.i.close();
        }
        localBufferedWriter = new BufferedWriter(new FileWriter(this.d), 8192);
        localBufferedWriter.write("libcore.io.DiskLruCache");
        localBufferedWriter.write("\n");
        localBufferedWriter.write("1");
        localBufferedWriter.write("\n");
        localBufferedWriter.write(Integer.toString(this.e));
        localBufferedWriter.write("\n");
        localBufferedWriter.write(Integer.toString(this.g));
        localBufferedWriter.write("\n");
        localBufferedWriter.write("\n");
        Iterator localIterator = this.j.values().iterator();
        if (!localIterator.hasNext()) {
          break;
        }
        q localq = (q)localIterator.next();
        if (q.a(localq) != null) {
          localBufferedWriter.write("DIRTY " + q.c(localq) + '\n');
        } else {
          localBufferedWriter.write("CLEAN " + q.c(localq) + localq.a() + '\n');
        }
      }
      finally {}
    }
    localBufferedWriter.close();
    this.d.renameTo(this.c);
    this.i = new BufferedWriter(new FileWriter(this.c, true), 8192);
  }
  
  private boolean g()
  {
    return (this.k >= 2000) && (this.k >= this.j.size());
  }
  
  private void h()
  {
    if (this.i == null) {
      throw new IllegalStateException("cache is closed");
    }
  }
  
  private void i()
  {
    while (this.h > this.f) {
      c((String)((Map.Entry)this.j.entrySet().iterator().next()).getKey());
    }
  }
  
  /* Error */
  public r a(String paramString)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: invokespecial 151	com/viber/voip/util/b/m:h	()V
    //   6: aload_0
    //   7: aload_1
    //   8: invokespecial 153	com/viber/voip/util/b/m:e	(Ljava/lang/String;)V
    //   11: aload_0
    //   12: getfield 56	com/viber/voip/util/b/m:j	Ljava/util/LinkedHashMap;
    //   15: aload_1
    //   16: invokevirtual 157	java/util/LinkedHashMap:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   19: checkcast 159	com/viber/voip/util/b/q
    //   22: astore_3
    //   23: aload_3
    //   24: ifnonnull +11 -> 35
    //   27: aconst_null
    //   28: astore 4
    //   30: aload_0
    //   31: monitorexit
    //   32: aload 4
    //   34: areturn
    //   35: aload_3
    //   36: invokestatic 243	com/viber/voip/util/b/q:d	(Lcom/viber/voip/util/b/q;)Z
    //   39: ifne +9 -> 48
    //   42: aconst_null
    //   43: astore 4
    //   45: goto -15 -> 30
    //   48: aload_0
    //   49: getfield 102	com/viber/voip/util/b/m:g	I
    //   52: anewarray 213	java/io/InputStream
    //   55: astore 5
    //   57: iconst_0
    //   58: istore 6
    //   60: iload 6
    //   62: aload_0
    //   63: getfield 102	com/viber/voip/util/b/m:g	I
    //   66: if_icmpge +35 -> 101
    //   69: aload 5
    //   71: iload 6
    //   73: new 365	java/io/FileInputStream
    //   76: dup
    //   77: aload_3
    //   78: iload 6
    //   80: invokevirtual 256	com/viber/voip/util/b/q:a	(I)Ljava/io/File;
    //   83: invokespecial 367	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   86: aastore
    //   87: iinc 6 1
    //   90: goto -30 -> 60
    //   93: astore 7
    //   95: aconst_null
    //   96: astore 4
    //   98: goto -68 -> 30
    //   101: aload_0
    //   102: iconst_1
    //   103: aload_0
    //   104: getfield 107	com/viber/voip/util/b/m:k	I
    //   107: iadd
    //   108: putfield 107	com/viber/voip/util/b/m:k	I
    //   111: aload_0
    //   112: getfield 141	com/viber/voip/util/b/m:i	Ljava/io/Writer;
    //   115: new 181	java/lang/StringBuilder
    //   118: dup
    //   119: invokespecial 182	java/lang/StringBuilder:<init>	()V
    //   122: ldc_w 484
    //   125: invokevirtual 188	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   128: aload_1
    //   129: invokevirtual 188	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   132: bipush 10
    //   134: invokevirtual 191	java/lang/StringBuilder:append	(C)Ljava/lang/StringBuilder;
    //   137: invokevirtual 195	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   140: invokevirtual 487	java/io/Writer:append	(Ljava/lang/CharSequence;)Ljava/io/Writer;
    //   143: pop
    //   144: aload_0
    //   145: invokespecial 284	com/viber/voip/util/b/m:g	()Z
    //   148: ifeq +17 -> 165
    //   151: aload_0
    //   152: getfield 76	com/viber/voip/util/b/m:m	Ljava/util/concurrent/ExecutorService;
    //   155: aload_0
    //   156: getfield 83	com/viber/voip/util/b/m:n	Ljava/util/concurrent/Callable;
    //   159: invokeinterface 290 2 0
    //   164: pop
    //   165: new 489	com/viber/voip/util/b/r
    //   168: dup
    //   169: aload_0
    //   170: aload_1
    //   171: aload_3
    //   172: invokestatic 164	com/viber/voip/util/b/q:e	(Lcom/viber/voip/util/b/q;)J
    //   175: aload 5
    //   177: aconst_null
    //   178: invokespecial 492	com/viber/voip/util/b/r:<init>	(Lcom/viber/voip/util/b/m;Ljava/lang/String;J[Ljava/io/InputStream;Lcom/viber/voip/util/b/n;)V
    //   181: astore 4
    //   183: goto -153 -> 30
    //   186: astore_2
    //   187: aload_0
    //   188: monitorexit
    //   189: aload_2
    //   190: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	191	0	this	m
    //   0	191	1	paramString	String
    //   186	4	2	localObject	Object
    //   22	150	3	localq	q
    //   28	154	4	localr	r
    //   55	121	5	arrayOfInputStream	InputStream[]
    //   58	30	6	i1	int
    //   93	1	7	localFileNotFoundException	java.io.FileNotFoundException
    // Exception table:
    //   from	to	target	type
    //   60	87	93	java/io/FileNotFoundException
    //   2	23	186	finally
    //   35	42	186	finally
    //   48	57	186	finally
    //   60	87	186	finally
    //   101	165	186	finally
    //   165	183	186	finally
  }
  
  public boolean a()
  {
    return this.i == null;
  }
  
  public o b(String paramString)
  {
    return a(paramString, -1L);
  }
  
  public void b()
  {
    try
    {
      h();
      i();
      this.i.flush();
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public void c()
  {
    close();
    a(this.b);
  }
  
  public boolean c(String paramString)
  {
    for (;;)
    {
      try
      {
        h();
        e(paramString);
        q localq = (q)this.j.get(paramString);
        int i1;
        if (localq != null)
        {
          o localo = q.a(localq);
          i1 = 0;
          if (localo == null) {}
        }
        else
        {
          bool = false;
          return bool;
          this.h -= q.b(localq)[i1];
          q.b(localq)[i1] = 0L;
          i1++;
        }
        if (i1 < this.g)
        {
          File localFile = localq.a(i1);
          if (localFile.delete()) {
            continue;
          }
          throw new IOException("failed to delete " + localFile);
        }
      }
      finally {}
      this.k = (1 + this.k);
      this.i.append("REMOVE " + paramString + '\n');
      this.j.remove(paramString);
      if (g()) {
        this.m.submit(this.n);
      }
      boolean bool = true;
    }
  }
  
  public void close()
  {
    for (;;)
    {
      try
      {
        Writer localWriter = this.i;
        if (localWriter == null) {
          return;
        }
        Iterator localIterator = new ArrayList(this.j.values()).iterator();
        if (localIterator.hasNext())
        {
          q localq = (q)localIterator.next();
          if (q.a(localq) == null) {
            continue;
          }
          q.a(localq).b();
          continue;
        }
        i();
      }
      finally {}
      this.i.close();
      this.i = null;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.util.b.m
 * JD-Core Version:    0.7.0.1
 */