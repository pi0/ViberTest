package com.viber.voip.util.b;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.graphics.BitmapFactory.Options;
import android.os.Environment;
import android.os.StatFs;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.support.v4.util.LruCache;
import android.util.Log;
import com.viber.voip.util.gl;
import java.io.File;
import java.io.IOException;
import java.lang.ref.SoftReference;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

public class s
{
  private static final Bitmap.CompressFormat a = Bitmap.CompressFormat.JPEG;
  private m b;
  private LruCache<String, Bitmap> c;
  private u d;
  private final Object e = new Object();
  private boolean f = true;
  private Set<SoftReference<Bitmap>> g;
  
  s(u paramu)
  {
    a(paramu);
  }
  
  @SuppressLint({"NewApi"})
  public static int a(Bitmap paramBitmap)
  {
    if (gl.c()) {
      return paramBitmap.getByteCount();
    }
    return paramBitmap.getRowBytes() * paramBitmap.getHeight();
  }
  
  @TargetApi(9)
  public static long a(File paramFile)
  {
    if (gl.a()) {
      return paramFile.getUsableSpace();
    }
    StatFs localStatFs = new StatFs(paramFile.getPath());
    return localStatFs.getBlockSize() * localStatFs.getAvailableBlocks();
  }
  
  public static s a(FragmentManager paramFragmentManager, u paramu, String paramString)
  {
    v localv = a(paramFragmentManager, paramString);
    s locals = (s)localv.a();
    if (locals == null)
    {
      locals = new s(paramu);
      localv.a(locals);
    }
    return locals;
  }
  
  private static v a(FragmentManager paramFragmentManager, String paramString)
  {
    if (paramString == null) {
      paramString = "ImageCache";
    }
    v localv = (v)paramFragmentManager.findFragmentByTag(paramString);
    if (localv == null)
    {
      localv = new v();
      paramFragmentManager.beginTransaction().add(localv, paramString).commitAllowingStateLoss();
    }
    return localv;
  }
  
  public static File a(Context paramContext)
  {
    return paramContext.getExternalCacheDir();
  }
  
  public static File a(Context paramContext, String paramString)
  {
    if (("mounted".equals(Environment.getExternalStorageState())) || (!e())) {}
    for (File localFile = a(paramContext);; localFile = paramContext.getCacheDir())
    {
      if (localFile == null) {
        localFile = paramContext.getCacheDir();
      }
      return new File(localFile.getPath() + File.separator + paramString);
    }
  }
  
  private static String a(byte[] paramArrayOfByte)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    for (int i = 0; i < paramArrayOfByte.length; i++)
    {
      String str = Integer.toHexString(0xFF & paramArrayOfByte[i]);
      if (str.length() == 1) {
        localStringBuilder.append('0');
      }
      localStringBuilder.append(str);
    }
    return localStringBuilder.toString();
  }
  
  private void a(u paramu)
  {
    this.d = paramu;
    if (this.d.f)
    {
      if (gl.b()) {
        this.g = Collections.synchronizedSet(new HashSet());
      }
      this.c = new t(this, this.d.a);
    }
    if (paramu.h) {
      a();
    }
  }
  
  private static boolean a(Bitmap paramBitmap, BitmapFactory.Options paramOptions)
  {
    return (paramBitmap.getWidth() == paramOptions.outWidth) && (paramBitmap.getHeight() == paramOptions.outHeight) && (paramOptions.inSampleSize == 1);
  }
  
  public static String e(String paramString)
  {
    try
    {
      MessageDigest localMessageDigest = MessageDigest.getInstance("MD5");
      localMessageDigest.update(paramString.getBytes());
      String str = a(localMessageDigest.digest());
      return str;
    }
    catch (NoSuchAlgorithmException localNoSuchAlgorithmException) {}
    return String.valueOf(paramString.hashCode());
  }
  
  @TargetApi(9)
  public static boolean e()
  {
    if (gl.a()) {
      return Environment.isExternalStorageRemovable();
    }
    return true;
  }
  
  protected Bitmap a(BitmapFactory.Options paramOptions)
  {
    if ((this.g != null) && (!this.g.isEmpty())) {
      for (;;)
      {
        synchronized (this.g)
        {
          Iterator localIterator = this.g.iterator();
          if (localIterator.hasNext())
          {
            localBitmap = (Bitmap)((SoftReference)localIterator.next()).get();
            if ((localBitmap != null) && (localBitmap.isMutable()))
            {
              if (!a(localBitmap, paramOptions)) {
                continue;
              }
              localIterator.remove();
              return localBitmap;
            }
            localIterator.remove();
          }
        }
        Bitmap localBitmap = null;
      }
    }
    return null;
  }
  
  public void a()
  {
    synchronized (this.e)
    {
      File localFile;
      if ((this.b == null) || (this.b.a()))
      {
        localFile = this.d.c;
        if ((this.d.g) && (localFile != null))
        {
          if (!localFile.exists()) {
            localFile.mkdirs();
          }
          long l = a(localFile);
          int i = this.d.b;
          if (l <= i) {}
        }
      }
      try
      {
        this.b = m.a(localFile, 1, 1, this.d.b);
        this.f = false;
        this.e.notifyAll();
        return;
      }
      catch (IOException localIOException)
      {
        for (;;)
        {
          this.d.c = null;
          Log.e("ImageCache", "initDiskCache - " + localIOException);
        }
      }
    }
  }
  
  /* Error */
  public void a(String paramString, Bitmap paramBitmap)
  {
    // Byte code:
    //   0: aload_1
    //   1: ifnull +7 -> 8
    //   4: aload_2
    //   5: ifnonnull +4 -> 9
    //   8: return
    //   9: aload_0
    //   10: getfield 207	com/viber/voip/util/b/s:c	Landroid/support/v4/util/LruCache;
    //   13: ifnull +13 -> 26
    //   16: aload_0
    //   17: getfield 207	com/viber/voip/util/b/s:c	Landroid/support/v4/util/LruCache;
    //   20: aload_1
    //   21: aload_2
    //   22: invokevirtual 339	android/support/v4/util/LruCache:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   25: pop
    //   26: aload_0
    //   27: getfield 35	com/viber/voip/util/b/s:e	Ljava/lang/Object;
    //   30: astore_3
    //   31: aload_3
    //   32: monitorenter
    //   33: aload_0
    //   34: getfield 296	com/viber/voip/util/b/s:b	Lcom/viber/voip/util/b/m;
    //   37: ifnull +97 -> 134
    //   40: aload_1
    //   41: invokestatic 341	com/viber/voip/util/b/s:e	(Ljava/lang/String;)Ljava/lang/String;
    //   44: astore 5
    //   46: aload_0
    //   47: getfield 296	com/viber/voip/util/b/s:b	Lcom/viber/voip/util/b/m;
    //   50: aload 5
    //   52: invokevirtual 344	com/viber/voip/util/b/m:a	(Ljava/lang/String;)Lcom/viber/voip/util/b/r;
    //   55: astore 18
    //   57: aload 18
    //   59: ifnonnull +85 -> 144
    //   62: aload_0
    //   63: getfield 296	com/viber/voip/util/b/s:b	Lcom/viber/voip/util/b/m;
    //   66: aload 5
    //   68: invokevirtual 347	com/viber/voip/util/b/m:b	(Ljava/lang/String;)Lcom/viber/voip/util/b/o;
    //   71: astore 19
    //   73: aconst_null
    //   74: astore 20
    //   76: aload 19
    //   78: ifnull +46 -> 124
    //   81: aload 19
    //   83: iconst_0
    //   84: invokevirtual 352	com/viber/voip/util/b/o:a	(I)Ljava/io/OutputStream;
    //   87: astore 21
    //   89: aload 21
    //   91: astore 20
    //   93: aload_2
    //   94: aload_0
    //   95: getfield 183	com/viber/voip/util/b/s:d	Lcom/viber/voip/util/b/u;
    //   98: getfield 354	com/viber/voip/util/b/u:d	Landroid/graphics/Bitmap$CompressFormat;
    //   101: aload_0
    //   102: getfield 183	com/viber/voip/util/b/s:d	Lcom/viber/voip/util/b/u;
    //   105: getfield 356	com/viber/voip/util/b/u:e	I
    //   108: aload 20
    //   110: invokevirtual 360	android/graphics/Bitmap:compress	(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    //   113: pop
    //   114: aload 19
    //   116: invokevirtual 361	com/viber/voip/util/b/o:a	()V
    //   119: aload 20
    //   121: invokevirtual 366	java/io/OutputStream:close	()V
    //   124: aload 20
    //   126: ifnull +8 -> 134
    //   129: aload 20
    //   131: invokevirtual 366	java/io/OutputStream:close	()V
    //   134: aload_3
    //   135: monitorexit
    //   136: return
    //   137: astore 4
    //   139: aload_3
    //   140: monitorexit
    //   141: aload 4
    //   143: athrow
    //   144: aload 18
    //   146: iconst_0
    //   147: invokevirtual 371	com/viber/voip/util/b/r:a	(I)Ljava/io/InputStream;
    //   150: invokevirtual 374	java/io/InputStream:close	()V
    //   153: aconst_null
    //   154: astore 20
    //   156: goto -32 -> 124
    //   159: astore 14
    //   161: aconst_null
    //   162: astore 7
    //   164: aload 14
    //   166: astore 15
    //   168: ldc 102
    //   170: new 152	java/lang/StringBuilder
    //   173: dup
    //   174: invokespecial 153	java/lang/StringBuilder:<init>	()V
    //   177: ldc_w 376
    //   180: invokevirtual 157	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   183: aload 15
    //   185: invokevirtual 325	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   188: invokevirtual 164	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   191: invokestatic 330	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   194: pop
    //   195: aload 7
    //   197: ifnull -63 -> 134
    //   200: aload 7
    //   202: invokevirtual 366	java/io/OutputStream:close	()V
    //   205: goto -71 -> 134
    //   208: astore 17
    //   210: goto -76 -> 134
    //   213: astore 10
    //   215: aconst_null
    //   216: astore 7
    //   218: aload 10
    //   220: astore 11
    //   222: ldc 102
    //   224: new 152	java/lang/StringBuilder
    //   227: dup
    //   228: invokespecial 153	java/lang/StringBuilder:<init>	()V
    //   231: ldc_w 376
    //   234: invokevirtual 157	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   237: aload 11
    //   239: invokevirtual 325	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   242: invokevirtual 164	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   245: invokestatic 330	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   248: pop
    //   249: aload 7
    //   251: ifnull -117 -> 134
    //   254: aload 7
    //   256: invokevirtual 366	java/io/OutputStream:close	()V
    //   259: goto -125 -> 134
    //   262: astore 13
    //   264: goto -130 -> 134
    //   267: astore 6
    //   269: aconst_null
    //   270: astore 7
    //   272: aload 6
    //   274: astore 8
    //   276: aload 7
    //   278: ifnull +8 -> 286
    //   281: aload 7
    //   283: invokevirtual 366	java/io/OutputStream:close	()V
    //   286: aload 8
    //   288: athrow
    //   289: astore 26
    //   291: goto -157 -> 134
    //   294: astore 9
    //   296: goto -10 -> 286
    //   299: astore 24
    //   301: aload 20
    //   303: astore 7
    //   305: aload 24
    //   307: astore 8
    //   309: goto -33 -> 276
    //   312: astore 8
    //   314: goto -38 -> 276
    //   317: astore 23
    //   319: aload 20
    //   321: astore 7
    //   323: aload 23
    //   325: astore 11
    //   327: goto -105 -> 222
    //   330: astore 22
    //   332: aload 20
    //   334: astore 7
    //   336: aload 22
    //   338: astore 15
    //   340: goto -172 -> 168
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	343	0	this	s
    //   0	343	1	paramString	String
    //   0	343	2	paramBitmap	Bitmap
    //   30	110	3	localObject1	Object
    //   137	5	4	localObject2	Object
    //   44	23	5	str	String
    //   267	6	6	localObject3	Object
    //   162	173	7	localObject4	Object
    //   274	34	8	localObject5	Object
    //   312	1	8	localObject6	Object
    //   294	1	9	localIOException1	IOException
    //   213	6	10	localException1	java.lang.Exception
    //   220	106	11	localObject7	Object
    //   262	1	13	localIOException2	IOException
    //   159	6	14	localIOException3	IOException
    //   166	173	15	localObject8	Object
    //   208	1	17	localIOException4	IOException
    //   55	90	18	localr	r
    //   71	44	19	localo	o
    //   74	259	20	localObject9	Object
    //   87	3	21	localOutputStream	java.io.OutputStream
    //   330	7	22	localIOException5	IOException
    //   317	7	23	localException2	java.lang.Exception
    //   299	7	24	localObject10	Object
    //   289	1	26	localIOException6	IOException
    // Exception table:
    //   from	to	target	type
    //   33	46	137	finally
    //   129	134	137	finally
    //   134	136	137	finally
    //   139	141	137	finally
    //   200	205	137	finally
    //   254	259	137	finally
    //   281	286	137	finally
    //   286	289	137	finally
    //   46	57	159	java/io/IOException
    //   62	73	159	java/io/IOException
    //   81	89	159	java/io/IOException
    //   144	153	159	java/io/IOException
    //   200	205	208	java/io/IOException
    //   46	57	213	java/lang/Exception
    //   62	73	213	java/lang/Exception
    //   81	89	213	java/lang/Exception
    //   144	153	213	java/lang/Exception
    //   254	259	262	java/io/IOException
    //   46	57	267	finally
    //   62	73	267	finally
    //   81	89	267	finally
    //   144	153	267	finally
    //   129	134	289	java/io/IOException
    //   281	286	294	java/io/IOException
    //   93	124	299	finally
    //   168	195	312	finally
    //   222	249	312	finally
    //   93	124	317	java/lang/Exception
    //   93	124	330	java/io/IOException
  }
  
  public boolean a(String paramString)
  {
    if (paramString == null) {
      return false;
    }
    boolean bool;
    if (this.c != null) {
      if ((Bitmap)this.c.remove(paramString) != null) {
        bool = true;
      }
    }
    for (;;)
    {
      return bool;
      bool = false;
      continue;
      bool = false;
    }
  }
  
  public void b()
  {
    if (this.c != null) {
      this.c.evictAll();
    }
    synchronized (this.e)
    {
      this.f = true;
      if (this.b != null)
      {
        boolean bool = this.b.a();
        if (bool) {}
      }
    }
    try
    {
      this.b.c();
      this.b = null;
      a();
      return;
    }
    catch (IOException localIOException)
    {
      for (;;)
      {
        Log.e("ImageCache", "clearCache - " + localIOException);
      }
      localObject2 = finally;
      throw localObject2;
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      for (;;)
      {
        Log.e("ImageCache", "clearCache - " + localIllegalArgumentException);
      }
    }
  }
  
  public boolean b(String paramString)
  {
    if (paramString == null) {
      return false;
    }
    synchronized (this.e)
    {
      m localm = this.b;
      bool1 = false;
      String str;
      if (localm != null) {
        str = e(paramString);
      }
      try
      {
        boolean bool2 = this.b.c(str);
        bool1 = bool2;
      }
      catch (IOException localIOException)
      {
        for (;;)
        {
          Log.e("ImageCache", "Unable to remove bitmap from cache.", localIOException);
          bool1 = false;
        }
      }
      return bool1;
    }
  }
  
  public Bitmap c(String paramString)
  {
    LruCache localLruCache = this.c;
    Bitmap localBitmap = null;
    if (localLruCache != null) {
      localBitmap = (Bitmap)this.c.get(paramString);
    }
    return localBitmap;
  }
  
  public void c()
  {
    synchronized (this.e)
    {
      m localm = this.b;
      if (localm != null) {}
      try
      {
        this.b.b();
        return;
      }
      catch (IOException localIOException)
      {
        for (;;)
        {
          Log.e("ImageCache", "flush - " + localIOException);
        }
      }
    }
  }
  
  /* Error */
  public Bitmap d(String paramString)
  {
    // Byte code:
    //   0: aload_1
    //   1: invokestatic 341	com/viber/voip/util/b/s:e	(Ljava/lang/String;)Ljava/lang/String;
    //   4: astore_2
    //   5: aload_0
    //   6: getfield 35	com/viber/voip/util/b/s:e	Ljava/lang/Object;
    //   9: astore_3
    //   10: aload_3
    //   11: monitorenter
    //   12: aload_0
    //   13: getfield 37	com/viber/voip/util/b/s:f	Z
    //   16: istore 5
    //   18: iload 5
    //   20: ifeq +18 -> 38
    //   23: aload_0
    //   24: getfield 35	com/viber/voip/util/b/s:e	Ljava/lang/Object;
    //   27: invokevirtual 408	java/lang/Object:wait	()V
    //   30: goto -18 -> 12
    //   33: astore 18
    //   35: goto -23 -> 12
    //   38: aload_0
    //   39: getfield 296	com/viber/voip/util/b/s:b	Lcom/viber/voip/util/b/m;
    //   42: astore 6
    //   44: aconst_null
    //   45: astore 7
    //   47: aload 6
    //   49: ifnull +72 -> 121
    //   52: aload_0
    //   53: getfield 296	com/viber/voip/util/b/s:b	Lcom/viber/voip/util/b/m;
    //   56: aload_2
    //   57: invokevirtual 344	com/viber/voip/util/b/m:a	(Ljava/lang/String;)Lcom/viber/voip/util/b/r;
    //   60: astore 14
    //   62: aload 14
    //   64: ifnull +166 -> 230
    //   67: aload 14
    //   69: iconst_0
    //   70: invokevirtual 371	com/viber/voip/util/b/r:a	(I)Ljava/io/InputStream;
    //   73: astore 15
    //   75: aload 15
    //   77: astore 9
    //   79: aconst_null
    //   80: astore 7
    //   82: aload 9
    //   84: ifnull +27 -> 111
    //   87: aload 9
    //   89: checkcast 410	java/io/FileInputStream
    //   92: invokevirtual 414	java/io/FileInputStream:getFD	()Ljava/io/FileDescriptor;
    //   95: ldc_w 415
    //   98: ldc_w 415
    //   101: aload_0
    //   102: invokestatic 420	com/viber/voip/util/b/ac:a	(Ljava/io/FileDescriptor;IILcom/viber/voip/util/b/s;)Landroid/graphics/Bitmap;
    //   105: astore 17
    //   107: aload 17
    //   109: astore 7
    //   111: aload 9
    //   113: ifnull +8 -> 121
    //   116: aload 9
    //   118: invokevirtual 374	java/io/InputStream:close	()V
    //   121: aload_3
    //   122: monitorexit
    //   123: aload 7
    //   125: areturn
    //   126: astore 11
    //   128: aconst_null
    //   129: astore 9
    //   131: ldc 102
    //   133: new 152	java/lang/StringBuilder
    //   136: dup
    //   137: invokespecial 153	java/lang/StringBuilder:<init>	()V
    //   140: ldc_w 422
    //   143: invokevirtual 157	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   146: aload 11
    //   148: invokevirtual 325	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   151: invokevirtual 164	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   154: invokestatic 330	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   157: pop
    //   158: aconst_null
    //   159: astore 7
    //   161: aload 9
    //   163: ifnull -42 -> 121
    //   166: aload 9
    //   168: invokevirtual 374	java/io/InputStream:close	()V
    //   171: aconst_null
    //   172: astore 7
    //   174: goto -53 -> 121
    //   177: astore 13
    //   179: aconst_null
    //   180: astore 7
    //   182: goto -61 -> 121
    //   185: astore 8
    //   187: aconst_null
    //   188: astore 9
    //   190: aload 9
    //   192: ifnull +8 -> 200
    //   195: aload 9
    //   197: invokevirtual 374	java/io/InputStream:close	()V
    //   200: aload 8
    //   202: athrow
    //   203: astore 4
    //   205: aload_3
    //   206: monitorexit
    //   207: aload 4
    //   209: athrow
    //   210: astore 16
    //   212: goto -91 -> 121
    //   215: astore 10
    //   217: goto -17 -> 200
    //   220: astore 8
    //   222: goto -32 -> 190
    //   225: astore 11
    //   227: goto -96 -> 131
    //   230: aconst_null
    //   231: astore 9
    //   233: aconst_null
    //   234: astore 7
    //   236: goto -125 -> 111
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	239	0	this	s
    //   0	239	1	paramString	String
    //   4	53	2	str	String
    //   9	197	3	localObject1	Object
    //   203	5	4	localObject2	Object
    //   16	3	5	bool	boolean
    //   42	6	6	localm	m
    //   45	190	7	localObject3	Object
    //   185	16	8	localObject4	Object
    //   220	1	8	localObject5	Object
    //   77	155	9	localInputStream1	java.io.InputStream
    //   215	1	10	localIOException1	IOException
    //   126	21	11	localIOException2	IOException
    //   225	1	11	localIOException3	IOException
    //   177	1	13	localIOException4	IOException
    //   60	8	14	localr	r
    //   73	3	15	localInputStream2	java.io.InputStream
    //   210	1	16	localIOException5	IOException
    //   105	3	17	localBitmap	Bitmap
    //   33	1	18	localInterruptedException	java.lang.InterruptedException
    // Exception table:
    //   from	to	target	type
    //   23	30	33	java/lang/InterruptedException
    //   52	62	126	java/io/IOException
    //   67	75	126	java/io/IOException
    //   166	171	177	java/io/IOException
    //   52	62	185	finally
    //   67	75	185	finally
    //   12	18	203	finally
    //   23	30	203	finally
    //   38	44	203	finally
    //   116	121	203	finally
    //   121	123	203	finally
    //   166	171	203	finally
    //   195	200	203	finally
    //   200	203	203	finally
    //   205	207	203	finally
    //   116	121	210	java/io/IOException
    //   195	200	215	java/io/IOException
    //   87	107	220	finally
    //   131	158	220	finally
    //   87	107	225	java/io/IOException
  }
  
  public void d()
  {
    synchronized (this.e)
    {
      m localm = this.b;
      if (localm != null) {}
      try
      {
        if (!this.b.a())
        {
          this.b.close();
          this.b = null;
        }
        return;
      }
      catch (IOException localIOException)
      {
        for (;;)
        {
          Log.e("ImageCache", "close - " + localIOException);
        }
      }
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.util.b.s
 * JD-Core Version:    0.7.0.1
 */