package com.android.camera;

import android.annotation.SuppressLint;
import android.content.ContentResolver;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.Path.Direction;
import android.graphics.PorterDuff.Mode;
import android.graphics.Rect;
import android.graphics.Region.Op;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Handler;
import android.view.View;
import android.view.Window;
import com.android.camera.a.c;
import com.android.camera.a.d;
import com.viber.voip.a.bc;
import com.viber.voip.a.s;
import com.viber.voip.messages.extras.image.h;
import com.viber.voip.util.b.w;
import java.util.ArrayList;

public class CropImage
  extends MonitoredActivity
{
  private static final Bitmap.Config e;
  boolean a;
  boolean b;
  m c;
  Runnable d = new k(this);
  private Bitmap.CompressFormat f = Bitmap.CompressFormat.JPEG;
  private Uri g = null;
  private boolean h = false;
  private int i;
  private int j;
  private boolean k = true;
  private boolean l = false;
  private final Handler m = new Handler();
  private int n;
  private int o;
  private boolean p;
  private boolean q = true;
  private CropImageView r;
  private ContentResolver s;
  private Bitmap t;
  private d u;
  private c v;
  private boolean w;
  private Uri x;
  private int y;
  
  static
  {
    if (Build.VERSION.SDK_INT < 14) {}
    for (Bitmap.Config localConfig = Bitmap.Config.RGB_565;; localConfig = Bitmap.Config.ARGB_8888)
    {
      e = localConfig;
      return;
    }
  }
  
  private Bitmap a(c paramc, Bitmap paramBitmap)
  {
    if (paramc != null) {
      paramBitmap = h.a(paramc.a(-1, 1048576), this.y);
    }
    return paramBitmap;
  }
  
  private void a()
  {
    if (isFinishing()) {
      return;
    }
    this.r.a(this.t, true);
    z.a(this, null, getResources().getString(2131494075), new g(this), this.m);
  }
  
  /* Error */
  private void a(Bitmap paramBitmap)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 71	com/android/camera/CropImage:g	Landroid/net/Uri;
    //   4: ifnull +189 -> 193
    //   7: aload_0
    //   8: getfield 148	com/android/camera/CropImage:s	Landroid/content/ContentResolver;
    //   11: aload_0
    //   12: getfield 71	com/android/camera/CropImage:g	Landroid/net/Uri;
    //   15: invokevirtual 154	android/content/ContentResolver:openOutputStream	(Landroid/net/Uri;)Ljava/io/OutputStream;
    //   18: astore 27
    //   20: aload 27
    //   22: astore 23
    //   24: aload 23
    //   26: ifnull +16 -> 42
    //   29: aload_1
    //   30: aload_0
    //   31: getfield 69	com/android/camera/CropImage:f	Landroid/graphics/Bitmap$CompressFormat;
    //   34: bipush 80
    //   36: aload 23
    //   38: invokevirtual 160	android/graphics/Bitmap:compress	(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    //   41: pop
    //   42: aload 23
    //   44: invokestatic 163	com/android/camera/z:a	(Ljava/io/Closeable;)V
    //   47: new 165	android/os/Bundle
    //   50: dup
    //   51: invokespecial 166	android/os/Bundle:<init>	()V
    //   54: astore 26
    //   56: aload 26
    //   58: ldc 168
    //   60: aload_0
    //   61: getfield 71	com/android/camera/CropImage:g	Landroid/net/Uri;
    //   64: invokevirtual 174	android/net/Uri:toString	()Ljava/lang/String;
    //   67: invokevirtual 178	android/os/Bundle:putString	(Ljava/lang/String;Ljava/lang/String;)V
    //   70: aload_0
    //   71: getfield 180	com/android/camera/CropImage:w	Z
    //   74: ifeq +17 -> 91
    //   77: aload 26
    //   79: ldc 182
    //   81: aload_0
    //   82: getfield 184	com/android/camera/CropImage:x	Landroid/net/Uri;
    //   85: invokevirtual 174	android/net/Uri:toString	()Ljava/lang/String;
    //   88: invokevirtual 178	android/os/Bundle:putString	(Ljava/lang/String;Ljava/lang/String;)V
    //   91: aload_0
    //   92: iconst_m1
    //   93: new 186	android/content/Intent
    //   96: dup
    //   97: aload_0
    //   98: getfield 71	com/android/camera/CropImage:g	Landroid/net/Uri;
    //   101: invokevirtual 174	android/net/Uri:toString	()Ljava/lang/String;
    //   104: invokespecial 189	android/content/Intent:<init>	(Ljava/lang/String;)V
    //   107: aload 26
    //   109: invokevirtual 193	android/content/Intent:putExtras	(Landroid/os/Bundle;)Landroid/content/Intent;
    //   112: invokevirtual 197	com/android/camera/CropImage:setResult	(ILandroid/content/Intent;)V
    //   115: aload_0
    //   116: getfield 82	com/android/camera/CropImage:m	Landroid/os/Handler;
    //   119: new 199	com/android/camera/j
    //   122: dup
    //   123: aload_0
    //   124: aload_1
    //   125: invokespecial 202	com/android/camera/j:<init>	(Lcom/android/camera/CropImage;Landroid/graphics/Bitmap;)V
    //   128: invokevirtual 206	android/os/Handler:post	(Ljava/lang/Runnable;)Z
    //   131: pop
    //   132: aload_0
    //   133: invokevirtual 209	com/android/camera/CropImage:finish	()V
    //   136: return
    //   137: astore 24
    //   139: aconst_null
    //   140: astore 23
    //   142: ldc 211
    //   144: new 213	java/lang/StringBuilder
    //   147: dup
    //   148: invokespecial 214	java/lang/StringBuilder:<init>	()V
    //   151: ldc 216
    //   153: invokevirtual 220	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   156: aload_0
    //   157: getfield 71	com/android/camera/CropImage:g	Landroid/net/Uri;
    //   160: invokevirtual 223	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   163: invokevirtual 224	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   166: aload 24
    //   168: invokestatic 229	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   171: pop
    //   172: aload 23
    //   174: invokestatic 163	com/android/camera/z:a	(Ljava/io/Closeable;)V
    //   177: goto -130 -> 47
    //   180: astore 22
    //   182: aconst_null
    //   183: astore 23
    //   185: aload 23
    //   187: invokestatic 163	com/android/camera/z:a	(Ljava/io/Closeable;)V
    //   190: aload 22
    //   192: athrow
    //   193: aload_0
    //   194: getfield 73	com/android/camera/CropImage:h	Z
    //   197: ifeq +39 -> 236
    //   200: aload_0
    //   201: invokestatic 235	android/app/WallpaperManager:getInstance	(Landroid/content/Context;)Landroid/app/WallpaperManager;
    //   204: aload_1
    //   205: invokevirtual 238	android/app/WallpaperManager:setBitmap	(Landroid/graphics/Bitmap;)V
    //   208: aload_0
    //   209: iconst_m1
    //   210: invokevirtual 241	com/android/camera/CropImage:setResult	(I)V
    //   213: goto -98 -> 115
    //   216: astore 20
    //   218: ldc 211
    //   220: ldc 243
    //   222: aload 20
    //   224: invokestatic 229	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   227: pop
    //   228: aload_0
    //   229: iconst_0
    //   230: invokevirtual 241	com/android/camera/CropImage:setResult	(I)V
    //   233: goto -118 -> 115
    //   236: new 165	android/os/Bundle
    //   239: dup
    //   240: invokespecial 166	android/os/Bundle:<init>	()V
    //   243: astore_2
    //   244: aload_2
    //   245: ldc 245
    //   247: aload_0
    //   248: getfield 247	com/android/camera/CropImage:c	Lcom/android/camera/m;
    //   251: invokevirtual 252	com/android/camera/m:b	()Landroid/graphics/Rect;
    //   254: invokevirtual 255	android/graphics/Rect:toString	()Ljava/lang/String;
    //   257: invokevirtual 178	android/os/Bundle:putString	(Ljava/lang/String;Ljava/lang/String;)V
    //   260: aload_0
    //   261: getfield 257	com/android/camera/CropImage:v	Lcom/android/camera/a/c;
    //   264: ifnull +327 -> 591
    //   267: aload_0
    //   268: getfield 257	com/android/camera/CropImage:v	Lcom/android/camera/a/c;
    //   271: invokeinterface 259 1 0
    //   276: ldc_w 261
    //   279: invokevirtual 267	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   282: ifne +309 -> 591
    //   285: new 269	java/io/File
    //   288: dup
    //   289: aload_0
    //   290: getfield 257	com/android/camera/CropImage:v	Lcom/android/camera/a/c;
    //   293: invokeinterface 259 1 0
    //   298: invokespecial 270	java/io/File:<init>	(Ljava/lang/String;)V
    //   301: astore_3
    //   302: new 269	java/io/File
    //   305: dup
    //   306: aload_3
    //   307: invokevirtual 273	java/io/File:getParent	()Ljava/lang/String;
    //   310: invokespecial 270	java/io/File:<init>	(Ljava/lang/String;)V
    //   313: astore 4
    //   315: aload_3
    //   316: invokevirtual 276	java/io/File:getName	()Ljava/lang/String;
    //   319: astore 5
    //   321: aload 5
    //   323: ldc_w 278
    //   326: invokevirtual 282	java/lang/String:lastIndexOf	(Ljava/lang/String;)I
    //   329: iconst_m1
    //   330: if_icmpeq +340 -> 670
    //   333: aload 5
    //   335: iconst_0
    //   336: aload 5
    //   338: ldc_w 278
    //   341: invokevirtual 282	java/lang/String:lastIndexOf	(Ljava/lang/String;)I
    //   344: invokevirtual 286	java/lang/String:substring	(II)Ljava/lang/String;
    //   347: astore 6
    //   349: iconst_0
    //   350: istore 7
    //   352: iload 7
    //   354: iconst_1
    //   355: iadd
    //   356: istore 8
    //   358: new 269	java/io/File
    //   361: dup
    //   362: new 213	java/lang/StringBuilder
    //   365: dup
    //   366: invokespecial 214	java/lang/StringBuilder:<init>	()V
    //   369: aload 4
    //   371: invokevirtual 287	java/io/File:toString	()Ljava/lang/String;
    //   374: invokevirtual 220	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   377: ldc_w 289
    //   380: invokevirtual 220	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   383: aload 6
    //   385: invokevirtual 220	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   388: ldc_w 291
    //   391: invokevirtual 220	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   394: iload 8
    //   396: invokevirtual 294	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   399: ldc_w 296
    //   402: invokevirtual 220	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   405: invokevirtual 224	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   408: invokespecial 270	java/io/File:<init>	(Ljava/lang/String;)V
    //   411: invokevirtual 299	java/io/File:exists	()Z
    //   414: ifne +220 -> 634
    //   417: iconst_1
    //   418: newarray int
    //   420: astore 12
    //   422: aload_0
    //   423: getfield 148	com/android/camera/CropImage:s	Landroid/content/ContentResolver;
    //   426: astore 13
    //   428: aload_0
    //   429: getfield 257	com/android/camera/CropImage:v	Lcom/android/camera/a/c;
    //   432: ifnull +209 -> 641
    //   435: aload_0
    //   436: getfield 257	com/android/camera/CropImage:v	Lcom/android/camera/a/c;
    //   439: invokeinterface 301 1 0
    //   444: astore 14
    //   446: aload_0
    //   447: getfield 257	com/android/camera/CropImage:v	Lcom/android/camera/a/c;
    //   450: ifnull +198 -> 648
    //   453: aload_0
    //   454: getfield 257	com/android/camera/CropImage:v	Lcom/android/camera/a/c;
    //   457: invokeinterface 304 1 0
    //   462: lstore 17
    //   464: aload 13
    //   466: aload 14
    //   468: lload 17
    //   470: aconst_null
    //   471: aload 4
    //   473: invokevirtual 287	java/io/File:toString	()Ljava/lang/String;
    //   476: new 213	java/lang/StringBuilder
    //   479: dup
    //   480: invokespecial 214	java/lang/StringBuilder:<init>	()V
    //   483: aload 6
    //   485: invokevirtual 220	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   488: ldc_w 291
    //   491: invokevirtual 220	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   494: iload 8
    //   496: invokevirtual 294	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   499: ldc_w 296
    //   502: invokevirtual 220	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   505: invokevirtual 224	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   508: aload_1
    //   509: aconst_null
    //   510: aload 12
    //   512: invokestatic 309	com/android/camera/ImageManager:a	(Landroid/content/ContentResolver;Ljava/lang/String;JLandroid/location/Location;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;[B[I)Landroid/net/Uri;
    //   515: astore 19
    //   517: aload_0
    //   518: getfield 180	com/android/camera/CropImage:w	Z
    //   521: ifeq +16 -> 537
    //   524: aload_2
    //   525: ldc 182
    //   527: aload_0
    //   528: getfield 184	com/android/camera/CropImage:x	Landroid/net/Uri;
    //   531: invokevirtual 174	android/net/Uri:toString	()Ljava/lang/String;
    //   534: invokevirtual 178	android/os/Bundle:putString	(Ljava/lang/String;Ljava/lang/String;)V
    //   537: aload_2
    //   538: ldc 168
    //   540: aload 19
    //   542: invokevirtual 174	android/net/Uri:toString	()Ljava/lang/String;
    //   545: invokevirtual 178	android/os/Bundle:putString	(Ljava/lang/String;Ljava/lang/String;)V
    //   548: aload_0
    //   549: iconst_m1
    //   550: new 186	android/content/Intent
    //   553: dup
    //   554: invokespecial 310	android/content/Intent:<init>	()V
    //   557: aload 19
    //   559: invokevirtual 174	android/net/Uri:toString	()Ljava/lang/String;
    //   562: invokevirtual 314	android/content/Intent:setAction	(Ljava/lang/String;)Landroid/content/Intent;
    //   565: aload_2
    //   566: invokevirtual 193	android/content/Intent:putExtras	(Landroid/os/Bundle;)Landroid/content/Intent;
    //   569: invokevirtual 197	com/android/camera/CropImage:setResult	(ILandroid/content/Intent;)V
    //   572: goto -457 -> 115
    //   575: astore 9
    //   577: ldc 211
    //   579: ldc_w 316
    //   582: aload 9
    //   584: invokestatic 229	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   587: pop
    //   588: goto -473 -> 115
    //   591: new 269	java/io/File
    //   594: dup
    //   595: new 213	java/lang/StringBuilder
    //   598: dup
    //   599: invokespecial 214	java/lang/StringBuilder:<init>	()V
    //   602: getstatic 321	com/viber/voip/w:q	Ljava/lang/String;
    //   605: invokevirtual 220	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   608: ldc_w 289
    //   611: invokevirtual 220	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   614: invokestatic 326	java/lang/System:currentTimeMillis	()J
    //   617: ldc2_w 327
    //   620: ldiv
    //   621: invokevirtual 331	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   624: invokevirtual 224	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   627: invokespecial 270	java/io/File:<init>	(Ljava/lang/String;)V
    //   630: astore_3
    //   631: goto -329 -> 302
    //   634: iload 8
    //   636: istore 7
    //   638: goto -286 -> 352
    //   641: aload 6
    //   643: astore 14
    //   645: goto -199 -> 446
    //   648: invokestatic 326	java/lang/System:currentTimeMillis	()J
    //   651: lstore 15
    //   653: lload 15
    //   655: lstore 17
    //   657: goto -193 -> 464
    //   660: astore 22
    //   662: goto -477 -> 185
    //   665: astore 24
    //   667: goto -525 -> 142
    //   670: aload 5
    //   672: astore 6
    //   674: iconst_0
    //   675: istore 7
    //   677: goto -325 -> 352
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	680	0	this	CropImage
    //   0	680	1	paramBitmap	Bitmap
    //   243	323	2	localBundle1	Bundle
    //   301	330	3	localFile1	java.io.File
    //   313	159	4	localFile2	java.io.File
    //   319	352	5	str1	String
    //   347	326	6	str2	String
    //   350	326	7	i1	int
    //   356	279	8	i2	int
    //   575	8	9	localException	java.lang.Exception
    //   420	91	12	arrayOfInt	int[]
    //   426	39	13	localContentResolver	ContentResolver
    //   444	200	14	str3	String
    //   651	3	15	l1	long
    //   462	194	17	l2	long
    //   515	43	19	localUri	Uri
    //   216	7	20	localIOException1	java.io.IOException
    //   180	11	22	localObject1	java.lang.Object
    //   660	1	22	localObject2	java.lang.Object
    //   22	164	23	localOutputStream1	java.io.OutputStream
    //   137	30	24	localIOException2	java.io.IOException
    //   665	1	24	localIOException3	java.io.IOException
    //   54	54	26	localBundle2	Bundle
    //   18	3	27	localOutputStream2	java.io.OutputStream
    // Exception table:
    //   from	to	target	type
    //   7	20	137	java/io/IOException
    //   7	20	180	finally
    //   200	213	216	java/io/IOException
    //   417	446	575	java/lang/Exception
    //   446	464	575	java/lang/Exception
    //   464	537	575	java/lang/Exception
    //   537	572	575	java/lang/Exception
    //   648	653	575	java/lang/Exception
    //   29	42	660	finally
    //   142	172	660	finally
    //   29	42	665	java/io/IOException
  }
  
  private void b()
  {
    if (this.c == null) {}
    while (this.b) {
      return;
    }
    this.b = true;
    Bitmap localBitmap;
    if ((this.n != 0) && (this.o != 0) && (!this.p))
    {
      localBitmap = Bitmap.createBitmap(this.n, this.o, Bitmap.Config.RGB_565);
      Canvas localCanvas3 = new Canvas(localBitmap);
      Rect localRect3 = this.c.b();
      Rect localRect4 = new Rect(0, 0, this.n, this.o);
      int i4 = (localRect3.width() - localRect4.width()) / 2;
      int i5 = (localRect3.height() - localRect4.height()) / 2;
      localRect3.inset(Math.max(0, i4), Math.max(0, i5));
      localRect4.inset(Math.max(0, -i4), Math.max(0, -i5));
      localCanvas3.drawBitmap(this.t, localRect3, localRect4, null);
      this.r.a();
      this.t.recycle();
      this.r.a(localBitmap, true);
      this.r.a(true, true);
      this.r.a.clear();
      Bundle localBundle1 = getIntent().getExtras();
      if ((localBundle1 != null) && ((localBundle1.getParcelable("data") != null) || (localBundle1.getBoolean("return-data"))))
      {
        Bundle localBundle2 = new Bundle();
        localBundle2.putParcelable("data", localBitmap);
        setResult(-1, new Intent().setAction("inline-data").putExtras(localBundle2));
        finish();
      }
    }
    else
    {
      Rect localRect1 = this.c.b();
      int i1 = localRect1.width();
      int i2 = localRect1.height();
      localBitmap = Bitmap.createBitmap(i1, i2, e);
      if (this.w) {
        if ((this.n == 0) || (this.o == 0) || (!this.p)) {
          break label549;
        }
      }
      label549:
      for (boolean bool = true;; bool = false)
      {
        this.x = com.android.camera.b.a.a(this, this.t, localRect1, bool, this.q);
        Canvas localCanvas1 = new Canvas(localBitmap);
        Rect localRect2 = new Rect(0, 0, i1, i2);
        localCanvas1.drawBitmap(this.t, localRect1, localRect2, null);
        this.r.a();
        this.t.recycle();
        if (this.l)
        {
          Canvas localCanvas2 = new Canvas(localBitmap);
          Path localPath = new Path();
          localPath.addCircle(i1 / 2.0F, i2 / 2.0F, i1 / 2.0F, Path.Direction.CW);
          localCanvas2.clipPath(localPath, Region.Op.DIFFERENCE);
          localCanvas2.drawColor(0, PorterDuff.Mode.CLEAR);
        }
        if ((this.n == 0) || (this.o == 0) || (!this.p)) {
          break;
        }
        localBitmap = z.a(new Matrix(), localBitmap, this.n, this.o, this.q, true);
        break;
      }
    }
    if (this.h) {}
    for (int i3 = 2131494073;; i3 = 2131494074)
    {
      z.a(this, null, getResources().getString(i3), new i(this, localBitmap), this.m);
      return;
    }
  }
  
  @SuppressLint({"NewApi"})
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.y = 0;
    this.s = getContentResolver();
    requestWindowFeature(1);
    setContentView(2130903177);
    bc.a().a(com.viber.voip.a.a.f.a());
    this.r = ((CropImageView)findViewById(2131165296));
    if (Build.VERSION.SDK_INT >= 11) {
      this.r.setLayerType(1, null);
    }
    Intent localIntent = getIntent();
    Bundle localBundle = localIntent.getExtras();
    boolean bool;
    if (localBundle != null)
    {
      if (localBundle.getString("circleCrop") != null)
      {
        this.l = true;
        this.i = 1;
        this.j = 1;
      }
      this.g = ((Uri)localBundle.getParcelable("output"));
      if (this.g == null) {
        break label417;
      }
      String str = localBundle.getString("outputFormat");
      if (str != null) {
        this.f = Bitmap.CompressFormat.valueOf(str);
      }
      this.t = ((Bitmap)localBundle.getParcelable("data"));
      this.i = localBundle.getInt("aspectX");
      this.j = localBundle.getInt("aspectY");
      this.n = localBundle.getInt("outputX");
      this.o = localBundle.getInt("outputY");
      this.p = localBundle.getBoolean("scale", true);
      this.q = localBundle.getBoolean("scaleUpIfNeeded", true);
      this.w = localBundle.getBoolean("landscapeCutting", false);
      if (!localBundle.containsKey("noFaceDetection")) {
        break label438;
      }
      if (localBundle.getBoolean("noFaceDetection")) {
        break label432;
      }
      bool = true;
    }
    for (;;)
    {
      this.k = bool;
      if (this.t == null)
      {
        Uri localUri = localIntent.getData();
        this.u = ImageManager.a(this.s, localUri, 1);
        this.v = this.u.a(localUri);
        if (this.v != null)
        {
          this.y = h.a(localUri.getPath());
          this.t = this.v.a(true);
          this.t = h.a(this.t, this.y);
        }
      }
      if (this.t == null) {
        this.t = w.a(this, localIntent.getData(), false);
      }
      if (this.t != null) {
        break label444;
      }
      finish();
      return;
      label417:
      this.h = localBundle.getBoolean("setWallpaper");
      break;
      label432:
      bool = false;
      continue;
      label438:
      bool = false;
    }
    label444:
    getWindow().addFlags(1024);
    findViewById(2131165728).setOnClickListener(new e(this));
    findViewById(2131165555).setOnClickListener(new f(this));
    a();
  }
  
  protected void onDestroy()
  {
    if (this.u != null) {
      this.u.a();
    }
    super.onDestroy();
  }
  
  protected void onPause()
  {
    super.onPause();
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.android.camera.CropImage
 * JD-Core Version:    0.7.0.1
 */