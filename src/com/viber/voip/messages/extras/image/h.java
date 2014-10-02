package com.viber.voip.messages.extras.image;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.Path;
import android.graphics.Point;
import android.graphics.PorterDuff.Mode;
import android.graphics.PorterDuffXfermode;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.media.ExifInterface;
import android.net.Uri;
import android.net.Uri.Builder;
import android.os.Build.VERSION;
import android.os.Environment;
import android.provider.MediaStore.Images.Media;
import android.util.DisplayMetrics;
import android.util.Log;
import android.util.TypedValue;
import android.view.Display;
import android.view.WindowManager;
import com.viber.dexshared.ZXing.BarcodeFormat;
import com.viber.dexshared.ZXing.BitMatrix;
import com.viber.dexshared.ZXing.Factory;
import com.viber.dexshared.ZXing.QRCodeWriter;
import com.viber.dexshared.ZXing.WriterException;
import com.viber.voip.ViberApplication;
import com.viber.voip.ViberEnv;
import com.viber.voip.util.bj;
import com.viber.voip.util.bu;
import com.viber.voip.util.gj;
import com.viber.voip.util.http.HttpRequest;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.lang.reflect.Method;
import java.net.URI;

public class h
{
  private static float b;
  private static final String c;
  
  static
  {
    if (!h.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      a = bool;
      b = 9.8F;
      c = h.class.getSimpleName();
      return;
    }
  }
  
  private h()
  {
    if (!a) {
      throw new AssertionError();
    }
  }
  
  public static int a(float paramFloat)
  {
    return a(ViberApplication.getInstance().getApplicationContext(), paramFloat);
  }
  
  public static int a(int paramInt1, int paramInt2)
  {
    if (paramInt1 == 3) {
      if (paramInt2 != 0) {}
    }
    do
    {
      do
      {
        return 2130838213;
        if (paramInt2 == 1) {
          return 2130838217;
        }
      } while (paramInt2 != 2);
      return 2130838216;
      if (paramInt2 == 0) {
        return 2130838215;
      }
      if (paramInt2 == 1) {
        return 2130838217;
      }
      if (paramInt2 == 2) {
        return 2130838214;
      }
    } while (paramInt2 != 3);
    return 2130838216;
  }
  
  public static int a(Context paramContext, float paramFloat)
  {
    return (int)TypedValue.applyDimension(1, paramFloat, paramContext.getResources().getDisplayMetrics());
  }
  
  public static int a(Context paramContext, j paramj)
  {
    Display localDisplay = ((WindowManager)paramContext.getSystemService("window")).getDefaultDisplay();
    int i;
    int j;
    if (Build.VERSION.SDK_INT >= 17)
    {
      DisplayMetrics localDisplayMetrics2 = a(localDisplay);
      i = localDisplayMetrics2.heightPixels;
      j = localDisplayMetrics2.widthPixels;
    }
    while (paramj == j.a)
    {
      return j;
      try
      {
        Method localMethod1 = Display.class.getMethod("getRawHeight", new Class[0]);
        Method localMethod2 = Display.class.getMethod("getRawWidth", new Class[0]);
        i = ((Integer)localMethod1.invoke(localDisplay, new Object[0])).intValue();
        int k = ((Integer)localMethod2.invoke(localDisplay, new Object[0])).intValue();
        j = k;
      }
      catch (Exception localException)
      {
        DisplayMetrics localDisplayMetrics1 = new DisplayMetrics();
        localDisplay.getMetrics(localDisplayMetrics1);
        i = localDisplayMetrics1.heightPixels;
        j = localDisplayMetrics1.widthPixels;
      }
    }
    return i;
  }
  
  public static int a(String paramString)
  {
    String str = paramString.replace("file://", "");
    try
    {
      localExifInterface = new ExifInterface(str);
      switch (localExifInterface.getAttributeInt("Orientation", 0))
      {
      case 4: 
      case 5: 
      case 7: 
      default: 
        return 0;
      }
    }
    catch (IOException localIOException)
    {
      for (;;)
      {
        localIOException.printStackTrace();
        ExifInterface localExifInterface = null;
      }
      return 90;
    }
    return 180;
    return 270;
  }
  
  public static Bitmap a(int paramInt1, Context paramContext, int paramInt2, int paramInt3, int paramInt4, Uri... paramVarArgs)
  {
    if ((paramVarArgs.length == 1) || (paramVarArgs.length == 2)) {
      return b(paramContext, paramVarArgs[0], paramInt2);
    }
    if (paramVarArgs.length > 2) {
      return a(paramContext, paramInt1, paramInt3, paramInt4, paramVarArgs);
    }
    return null;
  }
  
  public static Bitmap a(Context paramContext, int paramInt1, int paramInt2, int paramInt3, Uri[] paramArrayOfUri)
  {
    int i = paramArrayOfUri.length;
    Bitmap[] arrayOfBitmap = new Bitmap[i];
    for (int j = 0; j < i; j++)
    {
      arrayOfBitmap[j] = com.viber.voip.util.b.w.a(paramContext, paramArrayOfUri[j], false);
      if (arrayOfBitmap[j] == null) {
        arrayOfBitmap[j] = BitmapFactory.decodeResource(paramContext.getResources(), a(i, j));
      }
    }
    Bitmap localBitmap = Bitmap.createBitmap(paramInt2, paramInt3, Bitmap.Config.ARGB_8888);
    Canvas localCanvas = new Canvas(localBitmap);
    localCanvas.drawColor(paramContext.getResources().getColor(2131296328));
    if (i == 3)
    {
      arrayOfBitmap[0] = Bitmap.createScaledBitmap(arrayOfBitmap[0], paramInt2, paramInt3, true);
      arrayOfBitmap[0] = Bitmap.createBitmap(arrayOfBitmap[0], paramInt2 / 4, 0, paramInt2 / 2, paramInt3);
    }
    for (;;)
    {
      arrayOfBitmap[1] = Bitmap.createScaledBitmap(arrayOfBitmap[1], paramInt2 / 2, paramInt3 / 2, true);
      arrayOfBitmap[2] = Bitmap.createScaledBitmap(arrayOfBitmap[2], paramInt2 / 2, paramInt3 / 2, true);
      if (i != 3) {
        break;
      }
      localCanvas.drawBitmap(arrayOfBitmap[0], 0.0F, 0.0F, new Paint(1));
      localCanvas.drawBitmap(arrayOfBitmap[1], paramInt2 / 2, 0.0F, new Paint(1));
      localCanvas.drawBitmap(arrayOfBitmap[2], paramInt2 / 2, paramInt3 / 2, new Paint(1));
      return localBitmap;
      arrayOfBitmap[0] = Bitmap.createScaledBitmap(arrayOfBitmap[0], paramInt2 / 2, paramInt3 / 2, true);
      arrayOfBitmap[3] = Bitmap.createScaledBitmap(arrayOfBitmap[3], paramInt2 / 2, paramInt3 / 2, true);
    }
    localCanvas.drawBitmap(arrayOfBitmap[0], 0.0F, 0.0F, new Paint(1));
    localCanvas.drawBitmap(arrayOfBitmap[1], paramInt2 / 2, 0.0F, new Paint(1));
    localCanvas.drawBitmap(arrayOfBitmap[2], 0.0F, paramInt3 / 2, new Paint(1));
    localCanvas.drawBitmap(arrayOfBitmap[3], paramInt2 / 2, paramInt3 / 2, new Paint(1));
    return localBitmap;
  }
  
  public static Bitmap a(Context paramContext, Uri paramUri, int paramInt1, int paramInt2, boolean paramBoolean)
  {
    return a(paramContext, paramUri, null, paramInt1, paramInt2, paramBoolean);
  }
  
  /* Error */
  private static Bitmap a(Context paramContext, Uri paramUri, l paraml, int paramInt1, int paramInt2, boolean paramBoolean)
  {
    // Byte code:
    //   0: aload_1
    //   1: invokevirtual 242	android/net/Uri:getScheme	()Ljava/lang/String;
    //   4: ifnonnull +16 -> 20
    //   7: aload_1
    //   8: invokevirtual 246	android/net/Uri:buildUpon	()Landroid/net/Uri$Builder;
    //   11: ldc 248
    //   13: invokevirtual 254	android/net/Uri$Builder:scheme	(Ljava/lang/String;)Landroid/net/Uri$Builder;
    //   16: invokevirtual 258	android/net/Uri$Builder:build	()Landroid/net/Uri;
    //   19: astore_1
    //   20: iload 4
    //   22: bipush 254
    //   24: if_icmpne +325 -> 349
    //   27: iconst_1
    //   28: istore 6
    //   30: iload 6
    //   32: ifeq +8 -> 40
    //   35: sipush 400
    //   38: istore 4
    //   40: aload_0
    //   41: invokevirtual 262	android/content/Context:getContentResolver	()Landroid/content/ContentResolver;
    //   44: astore 7
    //   46: aload_0
    //   47: aload_1
    //   48: invokestatic 265	com/viber/voip/messages/extras/image/h:b	(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/BitmapFactory$Options;
    //   51: astore 8
    //   53: aload 8
    //   55: getfield 270	android/graphics/BitmapFactory$Options:outWidth	I
    //   58: istore 9
    //   60: aload 8
    //   62: getfield 273	android/graphics/BitmapFactory$Options:outHeight	I
    //   65: istore 10
    //   67: iconst_1
    //   68: istore 11
    //   70: aload_0
    //   71: aload_1
    //   72: invokestatic 276	com/viber/voip/messages/extras/image/h:a	(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    //   75: invokestatic 278	com/viber/voip/messages/extras/image/h:a	(Ljava/lang/String;)I
    //   78: istore 12
    //   80: iload 12
    //   82: bipush 90
    //   84: if_icmpeq +11 -> 95
    //   87: iload 12
    //   89: sipush 180
    //   92: if_icmpne +13 -> 105
    //   95: iload_3
    //   96: istore 13
    //   98: iload 4
    //   100: istore_3
    //   101: iload 13
    //   103: istore 4
    //   105: new 280	java/lang/StringBuilder
    //   108: dup
    //   109: invokespecial 281	java/lang/StringBuilder:<init>	()V
    //   112: ldc_w 283
    //   115: invokevirtual 287	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   118: aload 8
    //   120: getfield 270	android/graphics/BitmapFactory$Options:outWidth	I
    //   123: invokevirtual 290	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   126: ldc_w 292
    //   129: invokevirtual 287	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   132: aload 8
    //   134: getfield 273	android/graphics/BitmapFactory$Options:outHeight	I
    //   137: invokevirtual 290	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   140: ldc_w 294
    //   143: invokevirtual 287	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   146: iload_3
    //   147: invokevirtual 290	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   150: ldc_w 292
    //   153: invokevirtual 287	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   156: iload 4
    //   158: invokevirtual 290	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   161: invokevirtual 297	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   164: invokestatic 300	com/viber/voip/ViberApplication:log	(Ljava/lang/String;)V
    //   167: aload_2
    //   168: getstatic 305	com/viber/voip/messages/extras/image/l:a	Lcom/viber/voip/messages/extras/image/l;
    //   171: if_acmpne +184 -> 355
    //   174: iload 9
    //   176: iconst_2
    //   177: idiv
    //   178: iload_3
    //   179: if_icmplt +23 -> 202
    //   182: iload_3
    //   183: iconst_m1
    //   184: if_icmpeq +18 -> 202
    //   187: iload 10
    //   189: iconst_2
    //   190: idiv
    //   191: iload 4
    //   193: if_icmplt +9 -> 202
    //   196: iload 4
    //   198: iconst_m1
    //   199: if_icmpne +184 -> 383
    //   202: new 280	java/lang/StringBuilder
    //   205: dup
    //   206: invokespecial 281	java/lang/StringBuilder:<init>	()V
    //   209: ldc_w 307
    //   212: invokevirtual 287	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   215: iload 11
    //   217: invokevirtual 290	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   220: invokevirtual 297	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   223: invokestatic 300	com/viber/voip/ViberApplication:log	(Ljava/lang/String;)V
    //   226: new 267	android/graphics/BitmapFactory$Options
    //   229: dup
    //   230: invokespecial 308	android/graphics/BitmapFactory$Options:<init>	()V
    //   233: astore 14
    //   235: aload 14
    //   237: iload 11
    //   239: putfield 311	android/graphics/BitmapFactory$Options:inSampleSize	I
    //   242: aload 14
    //   244: iconst_0
    //   245: putfield 314	android/graphics/BitmapFactory$Options:inDither	Z
    //   248: aload 14
    //   250: iconst_1
    //   251: putfield 317	android/graphics/BitmapFactory$Options:inPurgeable	Z
    //   254: aload 14
    //   256: iconst_1
    //   257: putfield 320	android/graphics/BitmapFactory$Options:inInputShareable	Z
    //   260: aload 14
    //   262: getstatic 192	android/graphics/Bitmap$Config:ARGB_8888	Landroid/graphics/Bitmap$Config;
    //   265: putfield 323	android/graphics/BitmapFactory$Options:inPreferredConfig	Landroid/graphics/Bitmap$Config;
    //   268: aload_2
    //   269: ifnull +10 -> 279
    //   272: aload_2
    //   273: getstatic 305	com/viber/voip/messages/extras/image/l:a	Lcom/viber/voip/messages/extras/image/l;
    //   276: if_acmpeq +128 -> 404
    //   279: iconst_1
    //   280: istore 15
    //   282: iload 15
    //   284: ifeq +453 -> 737
    //   287: ldc_w 267
    //   290: ldc_w 325
    //   293: invokevirtual 329	java/lang/Class:getField	(Ljava/lang/String;)Ljava/lang/reflect/Field;
    //   296: aload 14
    //   298: iconst_1
    //   299: invokevirtual 335	java/lang/reflect/Field:setBoolean	(Ljava/lang/Object;Z)V
    //   302: iconst_0
    //   303: istore 27
    //   305: iload 27
    //   307: ifeq +404 -> 711
    //   310: aconst_null
    //   311: astore 30
    //   313: aload 7
    //   315: aload_1
    //   316: ldc_w 337
    //   319: invokevirtual 343	android/content/ContentResolver:openFileDescriptor	(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    //   322: astore 32
    //   324: aload 32
    //   326: astore 30
    //   328: aload 30
    //   330: ifnonnull +133 -> 463
    //   333: aconst_null
    //   334: astore 23
    //   336: aload 30
    //   338: ifnull +8 -> 346
    //   341: aload 30
    //   343: invokevirtual 348	android/os/ParcelFileDescriptor:close	()V
    //   346: aload 23
    //   348: areturn
    //   349: iconst_0
    //   350: istore 6
    //   352: goto -322 -> 30
    //   355: iload 9
    //   357: iconst_2
    //   358: idiv
    //   359: iload_3
    //   360: if_icmplt +8 -> 368
    //   363: iload_3
    //   364: iconst_m1
    //   365: if_icmpne +18 -> 383
    //   368: iload 10
    //   370: iconst_2
    //   371: idiv
    //   372: iload 4
    //   374: if_icmplt -172 -> 202
    //   377: iload 4
    //   379: iconst_m1
    //   380: if_icmpeq -178 -> 202
    //   383: iload 9
    //   385: iconst_2
    //   386: idiv
    //   387: istore 9
    //   389: iload 10
    //   391: iconst_2
    //   392: idiv
    //   393: istore 10
    //   395: iload 11
    //   397: iconst_2
    //   398: imul
    //   399: istore 11
    //   401: goto -234 -> 167
    //   404: iconst_0
    //   405: istore 15
    //   407: goto -125 -> 282
    //   410: astore 36
    //   412: aload 36
    //   414: invokevirtual 349	java/lang/IllegalArgumentException:printStackTrace	()V
    //   417: iconst_0
    //   418: istore 27
    //   420: goto -115 -> 305
    //   423: astore 35
    //   425: aload 35
    //   427: invokevirtual 350	java/lang/SecurityException:printStackTrace	()V
    //   430: iconst_0
    //   431: istore 27
    //   433: goto -128 -> 305
    //   436: astore 34
    //   438: aload 34
    //   440: invokevirtual 351	java/lang/IllegalAccessException:printStackTrace	()V
    //   443: iconst_0
    //   444: istore 27
    //   446: goto -141 -> 305
    //   449: astore 26
    //   451: iconst_1
    //   452: istore 27
    //   454: ldc_w 353
    //   457: invokestatic 355	com/viber/voip/messages/extras/image/h:b	(Ljava/lang/String;)V
    //   460: goto -155 -> 305
    //   463: aload 30
    //   465: invokevirtual 359	android/os/ParcelFileDescriptor:getFileDescriptor	()Ljava/io/FileDescriptor;
    //   468: aconst_null
    //   469: aload 14
    //   471: invokestatic 363	android/graphics/BitmapFactory:decodeFileDescriptor	(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    //   474: astore 33
    //   476: aload 33
    //   478: astore 29
    //   480: aload 30
    //   482: ifnull +8 -> 490
    //   485: aload 30
    //   487: invokevirtual 348	android/os/ParcelFileDescriptor:close	()V
    //   490: aload 29
    //   492: astore 18
    //   494: aload 18
    //   496: ifnull +55 -> 551
    //   499: new 280	java/lang/StringBuilder
    //   502: dup
    //   503: invokespecial 281	java/lang/StringBuilder:<init>	()V
    //   506: ldc_w 365
    //   509: invokevirtual 287	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   512: iload 9
    //   514: invokevirtual 290	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   517: ldc_w 367
    //   520: invokevirtual 287	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   523: aload 18
    //   525: invokevirtual 370	android/graphics/Bitmap:getWidth	()I
    //   528: invokevirtual 290	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   531: ldc_w 372
    //   534: invokevirtual 287	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   537: aload 18
    //   539: invokevirtual 375	android/graphics/Bitmap:getHeight	()I
    //   542: invokevirtual 290	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   545: invokevirtual 297	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   548: invokestatic 355	com/viber/voip/messages/extras/image/h:b	(Ljava/lang/String;)V
    //   551: aload 18
    //   553: ifnull +259 -> 812
    //   556: aload 18
    //   558: invokevirtual 375	android/graphics/Bitmap:getHeight	()I
    //   561: iload 4
    //   563: if_icmpgt +19 -> 582
    //   566: aload 18
    //   568: invokevirtual 370	android/graphics/Bitmap:getWidth	()I
    //   571: iload_3
    //   572: if_icmpgt +10 -> 582
    //   575: aload_2
    //   576: getstatic 305	com/viber/voip/messages/extras/image/l:a	Lcom/viber/voip/messages/extras/image/l;
    //   579: if_acmpne +233 -> 812
    //   582: iload 4
    //   584: iload_3
    //   585: invokestatic 380	java/lang/Math:max	(II)I
    //   588: istore 19
    //   590: iload 6
    //   592: ifeq +184 -> 776
    //   595: iload 4
    //   597: i2f
    //   598: aload 18
    //   600: invokevirtual 375	android/graphics/Bitmap:getHeight	()I
    //   603: i2f
    //   604: fdiv
    //   605: iload_3
    //   606: i2f
    //   607: aload 18
    //   609: invokevirtual 370	android/graphics/Bitmap:getWidth	()I
    //   612: i2f
    //   613: fdiv
    //   614: fcmpg
    //   615: ifge +152 -> 767
    //   618: iconst_4
    //   619: istore 24
    //   621: iload 4
    //   623: istore 25
    //   625: iload 24
    //   627: istore 20
    //   629: iload 25
    //   631: istore 21
    //   633: iload 5
    //   635: ifeq +177 -> 812
    //   638: aload_2
    //   639: getstatic 305	com/viber/voip/messages/extras/image/l:a	Lcom/viber/voip/messages/extras/image/l;
    //   642: if_acmpne +164 -> 806
    //   645: iconst_1
    //   646: istore 22
    //   648: aload 18
    //   650: iload 21
    //   652: iload 20
    //   654: iload 22
    //   656: iload 12
    //   658: invokestatic 383	com/viber/voip/messages/extras/image/h:a	(Landroid/graphics/Bitmap;IIZI)Landroid/graphics/Bitmap;
    //   661: astore 23
    //   663: aload_2
    //   664: getstatic 305	com/viber/voip/messages/extras/image/l:a	Lcom/viber/voip/messages/extras/image/l;
    //   667: if_acmpne +14 -> 681
    //   670: aload 23
    //   672: iload_3
    //   673: iload 4
    //   675: iconst_1
    //   676: invokestatic 385	com/viber/voip/messages/extras/image/h:a	(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    //   679: astore 23
    //   681: aload 18
    //   683: aload 23
    //   685: if_acmpeq -339 -> 346
    //   688: aload 18
    //   690: invokestatic 387	com/viber/voip/messages/extras/image/h:c	(Landroid/graphics/Bitmap;)V
    //   693: aload 23
    //   695: areturn
    //   696: astore 31
    //   698: aload 30
    //   700: ifnull +8 -> 708
    //   703: aload 30
    //   705: invokevirtual 348	android/os/ParcelFileDescriptor:close	()V
    //   708: aload 31
    //   710: athrow
    //   711: aload 7
    //   713: aload_1
    //   714: invokevirtual 391	android/content/ContentResolver:openInputStream	(Landroid/net/Uri;)Ljava/io/InputStream;
    //   717: astore 28
    //   719: aload 28
    //   721: aconst_null
    //   722: aload 14
    //   724: invokestatic 395	android/graphics/BitmapFactory:decodeStream	(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    //   727: astore 29
    //   729: aload 28
    //   731: invokevirtual 398	java/io/InputStream:close	()V
    //   734: goto -244 -> 490
    //   737: aload 7
    //   739: aload_1
    //   740: invokevirtual 391	android/content/ContentResolver:openInputStream	(Landroid/net/Uri;)Ljava/io/InputStream;
    //   743: astore 16
    //   745: aload 16
    //   747: aconst_null
    //   748: aload 14
    //   750: invokestatic 395	android/graphics/BitmapFactory:decodeStream	(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    //   753: astore 17
    //   755: aload 16
    //   757: invokevirtual 398	java/io/InputStream:close	()V
    //   760: aload 17
    //   762: astore 18
    //   764: goto -270 -> 494
    //   767: iconst_3
    //   768: istore 24
    //   770: iload_3
    //   771: istore 25
    //   773: goto -148 -> 625
    //   776: iload 4
    //   778: iconst_m1
    //   779: if_icmpne +12 -> 791
    //   782: iconst_3
    //   783: istore 20
    //   785: iload_3
    //   786: istore 21
    //   788: goto -155 -> 633
    //   791: iload_3
    //   792: iconst_m1
    //   793: if_icmpne +34 -> 827
    //   796: iconst_4
    //   797: istore 20
    //   799: iload 4
    //   801: istore 21
    //   803: goto -170 -> 633
    //   806: iconst_0
    //   807: istore 22
    //   809: goto -161 -> 648
    //   812: aload 18
    //   814: ifnull +11 -> 825
    //   817: aload 18
    //   819: iload 12
    //   821: invokestatic 401	com/viber/voip/messages/extras/image/h:a	(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    //   824: areturn
    //   825: aconst_null
    //   826: areturn
    //   827: iconst_2
    //   828: istore 20
    //   830: iload 19
    //   832: istore 21
    //   834: goto -201 -> 633
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	837	0	paramContext	Context
    //   0	837	1	paramUri	Uri
    //   0	837	2	paraml	l
    //   0	837	3	paramInt1	int
    //   0	837	4	paramInt2	int
    //   0	837	5	paramBoolean	boolean
    //   28	563	6	i	int
    //   44	694	7	localContentResolver	ContentResolver
    //   51	82	8	localOptions1	BitmapFactory.Options
    //   58	455	9	j	int
    //   65	329	10	k	int
    //   68	332	11	m	int
    //   78	742	12	n	int
    //   96	6	13	i1	int
    //   233	516	14	localOptions2	BitmapFactory.Options
    //   280	126	15	i2	int
    //   743	13	16	localInputStream1	InputStream
    //   753	8	17	localBitmap1	Bitmap
    //   492	326	18	localObject1	Object
    //   588	243	19	i3	int
    //   627	202	20	i4	int
    //   631	202	21	i5	int
    //   646	162	22	bool	boolean
    //   334	360	23	localBitmap2	Bitmap
    //   619	150	24	i6	int
    //   623	149	25	i7	int
    //   449	1	26	localNoSuchFieldException	java.lang.NoSuchFieldException
    //   303	150	27	i8	int
    //   717	13	28	localInputStream2	InputStream
    //   478	250	29	localBitmap3	Bitmap
    //   311	393	30	localObject2	Object
    //   696	13	31	localObject3	Object
    //   322	3	32	localParcelFileDescriptor	android.os.ParcelFileDescriptor
    //   474	3	33	localBitmap4	Bitmap
    //   436	3	34	localIllegalAccessException	java.lang.IllegalAccessException
    //   423	3	35	localSecurityException	java.lang.SecurityException
    //   410	3	36	localIllegalArgumentException	IllegalArgumentException
    // Exception table:
    //   from	to	target	type
    //   287	302	410	java/lang/IllegalArgumentException
    //   287	302	423	java/lang/SecurityException
    //   287	302	436	java/lang/IllegalAccessException
    //   287	302	449	java/lang/NoSuchFieldException
    //   313	324	696	finally
    //   463	476	696	finally
  }
  
  public static Bitmap a(Bitmap paramBitmap)
  {
    if (paramBitmap != null) {}
    for (;;)
    {
      try
      {
        Object localObject;
        if (paramBitmap.getWidth() > paramBitmap.getHeight())
        {
          int k = (paramBitmap.getWidth() - paramBitmap.getHeight()) / 2;
          int m = 0;
          if (k > 0) {
            m = k - 1;
          }
          Bitmap localBitmap2 = Bitmap.createBitmap(paramBitmap, m, 0, paramBitmap.getHeight(), paramBitmap.getHeight());
          localObject = localBitmap2;
          if (localObject != paramBitmap) {
            c(paramBitmap);
          }
          return localObject;
        }
        if (paramBitmap.getHeight() > paramBitmap.getWidth())
        {
          int i = (paramBitmap.getHeight() - paramBitmap.getWidth()) / 2;
          int j = 0;
          if (i > 0) {
            j = i - 1;
          }
          Bitmap localBitmap1 = Bitmap.createBitmap(paramBitmap, 0, j, paramBitmap.getWidth(), paramBitmap.getWidth());
          localObject = localBitmap1;
        }
        else
        {
          localObject = paramBitmap;
        }
      }
      catch (Exception localException)
      {
        b("Occur exception " + localException.getMessage());
      }
    }
  }
  
  public static Bitmap a(Bitmap paramBitmap, int paramInt)
  {
    if ((paramInt == 0) || (paramBitmap == null)) {
      return paramBitmap;
    }
    Matrix localMatrix = new Matrix();
    localMatrix.postRotate(paramInt);
    for (;;)
    {
      try
      {
        Bitmap localBitmap2 = Bitmap.createBitmap(paramBitmap, 0, 0, paramBitmap.getWidth(), paramBitmap.getHeight(), localMatrix, true);
        localBitmap1 = localBitmap2;
        if (localBitmap1 == paramBitmap) {}
      }
      catch (OutOfMemoryError localOutOfMemoryError1)
      {
        try
        {
          c(paramBitmap);
          System.gc();
          if (localBitmap1 == null) {
            break;
          }
          return localBitmap1;
        }
        catch (OutOfMemoryError localOutOfMemoryError3)
        {
          Bitmap localBitmap1;
          OutOfMemoryError localOutOfMemoryError2;
          break label77;
        }
        localOutOfMemoryError1 = localOutOfMemoryError1;
        localOutOfMemoryError2 = localOutOfMemoryError1;
        localBitmap1 = null;
      }
      label77:
      b(Log.getStackTraceString(localOutOfMemoryError2));
    }
  }
  
  public static Bitmap a(Bitmap paramBitmap, int paramInt1, int paramInt2, boolean paramBoolean)
  {
    if (paramBitmap != null)
    {
      if ((paramBoolean) && (paramBitmap.getWidth() > paramInt1)) {}
      for (int i = (paramBitmap.getWidth() - paramInt1) / 2;; i = 0)
      {
        int j = 0;
        if (paramBoolean)
        {
          int k = paramBitmap.getHeight();
          j = 0;
          if (k > paramInt2) {
            j = (paramBitmap.getHeight() - paramInt2) / 2;
          }
        }
        Bitmap localBitmap = Bitmap.createBitmap(paramBitmap, i, j, paramInt1, paramInt2);
        if ((localBitmap != null) && (localBitmap != paramBitmap)) {
          c(paramBitmap);
        }
        return localBitmap;
      }
    }
    return null;
  }
  
  public static Bitmap a(Bitmap paramBitmap, int paramInt1, int paramInt2, boolean paramBoolean, int paramInt3)
  {
    Bitmap localBitmap;
    if (paramBitmap == null)
    {
      localBitmap = null;
      return localBitmap;
    }
    int i = paramBitmap.getWidth();
    int j = paramBitmap.getHeight();
    if (a(i, j, paramInt2)) {}
    for (float f = paramInt1 / j;; f = paramInt1 / i)
    {
      if ((f >= 1.0F) && (!paramBoolean)) {
        break label128;
      }
      Matrix localMatrix = new Matrix();
      localMatrix.postScale(f, f);
      if (paramInt3 != 0) {
        localMatrix.postRotate(paramInt3);
      }
      localBitmap = Bitmap.createBitmap(paramBitmap, 0, 0, paramBitmap.getWidth(), paramBitmap.getHeight(), localMatrix, true);
      if (paramBitmap == localBitmap) {
        break;
      }
      c(paramBitmap);
      return localBitmap;
    }
    label128:
    return a(paramBitmap, paramInt3);
  }
  
  public static Bitmap a(Bitmap paramBitmap, int paramInt, Path paramPath)
  {
    int i = paramBitmap.getWidth();
    int j = paramBitmap.getHeight();
    Bitmap localBitmap = Bitmap.createBitmap(i + paramInt * 2, j + paramInt * 2, Bitmap.Config.ARGB_8888);
    Canvas localCanvas = new Canvas(localBitmap);
    if (paramPath == null) {
      paramPath = b(i, j);
    }
    Paint localPaint = new Paint(1);
    localPaint.setStyle(Paint.Style.FILL);
    localCanvas.drawPath(paramPath, localPaint);
    localPaint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
    localCanvas.drawBitmap(paramBitmap, 0.0F, 0.0F, localPaint);
    paramBitmap.recycle();
    if (paramInt > 0) {}
    return localBitmap;
  }
  
  public static Bitmap a(Bitmap paramBitmap, Path paramPath)
  {
    return a(paramBitmap, 0, paramPath);
  }
  
  public static Bitmap a(Drawable paramDrawable)
  {
    boolean bool = paramDrawable instanceof BitmapDrawable;
    Bitmap localBitmap = null;
    if (bool) {
      localBitmap = ((BitmapDrawable)paramDrawable).getBitmap();
    }
    return localBitmap;
  }
  
  public static Bitmap a(String paramString, int paramInt)
  {
    Bitmap localBitmap = null;
    int i;
    int j;
    int k;
    int n;
    int m;
    int i2;
    for (;;)
    {
      try
      {
        localBitMatrix = ViberEnv.getZXingFactory().newQRCodeWriter().encode(paramString, ZXing.BarcodeFormat.QR_CODE, paramInt, paramInt);
        i = localBitMatrix.getWidth();
        j = localBitMatrix.getHeight();
        arrayOfInt = new int[i * j];
        k = 0;
      }
      catch (OutOfMemoryError localOutOfMemoryError)
      {
        ZXing.BitMatrix localBitMatrix;
        int[] arrayOfInt;
        int i1;
        return localBitmap;
      }
      catch (ZXing.WriterException localWriterException)
      {
        label89:
        return localBitmap;
      }
      if (n >= i) {
        break label163;
      }
      i1 = m + n;
      if (!localBitMatrix.get(n, k)) {
        break label157;
      }
      i2 = -16777216;
      arrayOfInt[i1] = i2;
      n++;
    }
    label157:
    label163:
    label167:
    for (;;)
    {
      localBitmap = Bitmap.createBitmap(i, j, Bitmap.Config.ARGB_8888);
      localBitmap.setPixels(arrayOfInt, 0, i, 0, 0, i, j);
      return localBitmap;
      for (;;)
      {
        if (k >= j) {
          break label167;
        }
        m = k * i;
        n = 0;
        break;
        i2 = 0;
        break label89;
        k++;
      }
    }
  }
  
  public static Bitmap a(String paramString1, String paramString2, int paramInt1, int paramInt2)
  {
    String str = paramString2 + ".tmp" + (int)(1000000.0D * Math.random());
    Bitmap localBitmap = b(paramString1, str, paramInt1, paramInt2);
    if (localBitmap != null)
    {
      File localFile = new File(str);
      if (!localFile.renameTo(new File(paramString2))) {
        localFile.delete();
      }
    }
    return localBitmap;
  }
  
  public static BitmapFactory.Options a(Context paramContext, Uri paramUri, int paramInt)
  {
    return c(paramContext, paramUri, paramInt);
  }
  
  public static Uri a(long paramLong)
  {
    return MediaStore.Images.Media.EXTERNAL_CONTENT_URI.buildUpon().appendPath(String.valueOf(paramLong)).build();
  }
  
  /* Error */
  public static Uri a(Context paramContext, Uri paramUri, String paramString)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_3
    //   2: aload_1
    //   3: invokestatic 565	com/viber/voip/messages/extras/image/h:a	(Landroid/net/Uri;)Z
    //   6: istore 4
    //   8: iload 4
    //   10: ifeq +388 -> 398
    //   13: aload_1
    //   14: invokevirtual 566	android/net/Uri:toString	()Ljava/lang/String;
    //   17: ldc_w 568
    //   20: invokevirtual 572	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   23: ifeq +375 -> 398
    //   26: aload_1
    //   27: invokevirtual 566	android/net/Uri:toString	()Ljava/lang/String;
    //   30: ldc_w 568
    //   33: ldc_w 574
    //   36: invokevirtual 150	java/lang/String:replace	(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    //   39: invokestatic 578	android/net/Uri:parse	(Ljava/lang/String;)Landroid/net/Uri;
    //   42: astore 5
    //   44: aload 5
    //   46: ifnull +166 -> 212
    //   49: iload 4
    //   51: ifne +31 -> 82
    //   54: aload 5
    //   56: invokevirtual 566	android/net/Uri:toString	()Ljava/lang/String;
    //   59: ldc_w 580
    //   62: invokevirtual 572	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   65: ifne +17 -> 82
    //   68: aload 5
    //   70: invokevirtual 566	android/net/Uri:toString	()Ljava/lang/String;
    //   73: ldc_w 582
    //   76: invokevirtual 572	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   79: ifeq +133 -> 212
    //   82: aload_0
    //   83: invokevirtual 262	android/content/Context:getContentResolver	()Landroid/content/ContentResolver;
    //   86: aload 5
    //   88: invokevirtual 391	android/content/ContentResolver:openInputStream	(Landroid/net/Uri;)Ljava/io/InputStream;
    //   91: astore 14
    //   93: aload 14
    //   95: astore 9
    //   97: getstatic 585	com/viber/voip/messages/extras/image/l:d	Lcom/viber/voip/messages/extras/image/l;
    //   100: astore 15
    //   102: iload 4
    //   104: ifeq +22 -> 126
    //   107: aload_2
    //   108: ifnull +18 -> 126
    //   111: aload_2
    //   112: ldc_w 587
    //   115: invokevirtual 591	java/lang/String:contains	(Ljava/lang/CharSequence;)Z
    //   118: ifeq +97 -> 215
    //   121: getstatic 594	com/viber/voip/messages/extras/image/l:e	Lcom/viber/voip/messages/extras/image/l;
    //   124: astore 15
    //   126: aload 15
    //   128: aconst_null
    //   129: invokestatic 597	com/viber/voip/messages/extras/image/h:b	(Lcom/viber/voip/messages/extras/image/l;Ljava/lang/String;)Ljava/io/File;
    //   132: astore 16
    //   134: new 599	java/io/FileOutputStream
    //   137: dup
    //   138: aload 16
    //   140: invokespecial 602	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   143: astore 17
    //   145: sipush 1024
    //   148: newarray byte
    //   150: astore 18
    //   152: aload 9
    //   154: aload 18
    //   156: invokevirtual 606	java/io/InputStream:read	([B)I
    //   159: istore 19
    //   161: iload 19
    //   163: iconst_m1
    //   164: if_icmpeq +69 -> 233
    //   167: aload 17
    //   169: aload 18
    //   171: iconst_0
    //   172: iload 19
    //   174: invokevirtual 612	java/io/OutputStream:write	([BII)V
    //   177: goto -25 -> 152
    //   180: astore 6
    //   182: aload 17
    //   184: astore_3
    //   185: aload 9
    //   187: astore 7
    //   189: aload 6
    //   191: invokevirtual 164	java/io/IOException:printStackTrace	()V
    //   194: aload 7
    //   196: ifnull +8 -> 204
    //   199: aload 7
    //   201: invokevirtual 398	java/io/InputStream:close	()V
    //   204: aload_3
    //   205: ifnull +7 -> 212
    //   208: aload_3
    //   209: invokevirtual 613	java/io/OutputStream:close	()V
    //   212: aload 5
    //   214: areturn
    //   215: aload_2
    //   216: ldc_w 615
    //   219: invokevirtual 591	java/lang/String:contains	(Ljava/lang/CharSequence;)Z
    //   222: ifeq -96 -> 126
    //   225: getstatic 618	com/viber/voip/messages/extras/image/l:f	Lcom/viber/voip/messages/extras/image/l;
    //   228: astore 15
    //   230: goto -104 -> 126
    //   233: aload 16
    //   235: invokestatic 622	android/net/Uri:fromFile	(Ljava/io/File;)Landroid/net/Uri;
    //   238: astore 20
    //   240: aload 20
    //   242: astore 5
    //   244: aload 9
    //   246: ifnull +8 -> 254
    //   249: aload 9
    //   251: invokevirtual 398	java/io/InputStream:close	()V
    //   254: aload 17
    //   256: ifnull -44 -> 212
    //   259: aload 17
    //   261: invokevirtual 613	java/io/OutputStream:close	()V
    //   264: aload 5
    //   266: areturn
    //   267: astore 21
    //   269: aload 21
    //   271: invokevirtual 164	java/io/IOException:printStackTrace	()V
    //   274: aload 5
    //   276: areturn
    //   277: astore 22
    //   279: aload 22
    //   281: invokevirtual 164	java/io/IOException:printStackTrace	()V
    //   284: goto -30 -> 254
    //   287: astore 13
    //   289: aload 13
    //   291: invokevirtual 164	java/io/IOException:printStackTrace	()V
    //   294: goto -90 -> 204
    //   297: astore 12
    //   299: aload 12
    //   301: invokevirtual 164	java/io/IOException:printStackTrace	()V
    //   304: aload 5
    //   306: areturn
    //   307: astore 8
    //   309: aconst_null
    //   310: astore 9
    //   312: aload 9
    //   314: ifnull +8 -> 322
    //   317: aload 9
    //   319: invokevirtual 398	java/io/InputStream:close	()V
    //   322: aload_3
    //   323: ifnull +7 -> 330
    //   326: aload_3
    //   327: invokevirtual 613	java/io/OutputStream:close	()V
    //   330: aload 8
    //   332: athrow
    //   333: astore 11
    //   335: aload 11
    //   337: invokevirtual 164	java/io/IOException:printStackTrace	()V
    //   340: goto -18 -> 322
    //   343: astore 10
    //   345: aload 10
    //   347: invokevirtual 164	java/io/IOException:printStackTrace	()V
    //   350: goto -20 -> 330
    //   353: astore 8
    //   355: aconst_null
    //   356: astore_3
    //   357: goto -45 -> 312
    //   360: astore 8
    //   362: aload 17
    //   364: astore_3
    //   365: goto -53 -> 312
    //   368: astore 8
    //   370: aload 7
    //   372: astore 9
    //   374: goto -62 -> 312
    //   377: astore 6
    //   379: aconst_null
    //   380: astore_3
    //   381: aconst_null
    //   382: astore 7
    //   384: goto -195 -> 189
    //   387: astore 6
    //   389: aload 9
    //   391: astore 7
    //   393: aconst_null
    //   394: astore_3
    //   395: goto -206 -> 189
    //   398: aload_1
    //   399: astore 5
    //   401: goto -357 -> 44
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	404	0	paramContext	Context
    //   0	404	1	paramUri	Uri
    //   0	404	2	paramString	String
    //   1	394	3	localObject1	Object
    //   6	97	4	bool	boolean
    //   42	358	5	localObject2	Object
    //   180	10	6	localIOException1	IOException
    //   377	1	6	localIOException2	IOException
    //   387	1	6	localIOException3	IOException
    //   187	205	7	localObject3	Object
    //   307	24	8	localObject4	Object
    //   353	1	8	localObject5	Object
    //   360	1	8	localObject6	Object
    //   368	1	8	localObject7	Object
    //   95	295	9	localObject8	Object
    //   343	3	10	localIOException4	IOException
    //   333	3	11	localIOException5	IOException
    //   297	3	12	localIOException6	IOException
    //   287	3	13	localIOException7	IOException
    //   91	3	14	localInputStream	InputStream
    //   100	129	15	locall	l
    //   132	102	16	localFile	File
    //   143	220	17	localFileOutputStream	FileOutputStream
    //   150	20	18	arrayOfByte	byte[]
    //   159	14	19	i	int
    //   238	3	20	localUri	Uri
    //   267	3	21	localIOException8	IOException
    //   277	3	22	localIOException9	IOException
    // Exception table:
    //   from	to	target	type
    //   145	152	180	java/io/IOException
    //   152	161	180	java/io/IOException
    //   167	177	180	java/io/IOException
    //   233	240	180	java/io/IOException
    //   259	264	267	java/io/IOException
    //   249	254	277	java/io/IOException
    //   199	204	287	java/io/IOException
    //   208	212	297	java/io/IOException
    //   82	93	307	finally
    //   317	322	333	java/io/IOException
    //   326	330	343	java/io/IOException
    //   97	102	353	finally
    //   111	126	353	finally
    //   126	145	353	finally
    //   215	230	353	finally
    //   145	152	360	finally
    //   152	161	360	finally
    //   167	177	360	finally
    //   233	240	360	finally
    //   189	194	368	finally
    //   82	93	377	java/io/IOException
    //   97	102	387	java/io/IOException
    //   111	126	387	java/io/IOException
    //   126	145	387	java/io/IOException
    //   215	230	387	java/io/IOException
  }
  
  public static Uri a(Context paramContext, String paramString)
  {
    if (paramString == null) {
      return null;
    }
    try
    {
      Uri localUri = a(paramContext, Uri.parse(paramString), l.d, 1280, 1280, true, -1).a;
      return localUri;
    }
    catch (Exception localException) {}
    return null;
  }
  
  public static Uri a(Bitmap paramBitmap, l paraml)
  {
    return a(paramBitmap, b(paraml, null));
  }
  
  public static Uri a(Bitmap paramBitmap, File paramFile)
  {
    return a(paramBitmap, paramFile, 80);
  }
  
  public static Uri a(Bitmap paramBitmap, File paramFile, int paramInt)
  {
    return a(paramBitmap, paramFile, paramInt, true);
  }
  
  public static Uri a(Bitmap paramBitmap, File paramFile, int paramInt, Bitmap.CompressFormat paramCompressFormat, boolean paramBoolean)
  {
    Object localObject1;
    if ((paramFile == null) || (paramBitmap == null)) {
      localObject1 = null;
    }
    for (;;)
    {
      return localObject1;
      for (;;)
      {
        try
        {
          if (!paramFile.exists()) {
            paramFile.createNewFile();
          }
          localFileOutputStream = new FileOutputStream(paramFile);
        }
        finally
        {
          Uri localUri;
          Object localObject2;
          FileOutputStream localFileOutputStream = null;
          continue;
        }
        try
        {
          paramBitmap.compress(paramCompressFormat, paramInt, localFileOutputStream);
          localUri = Uri.fromFile(paramFile);
          localObject1 = localUri;
          if (localFileOutputStream == null) {}
        }
        finally {}
      }
      try
      {
        localFileOutputStream.flush();
        localFileOutputStream.close();
        if (paramBoolean)
        {
          c(paramBitmap);
          return localObject1;
        }
      }
      catch (IOException localIOException)
      {
        return null;
      }
    }
    if (localFileOutputStream != null)
    {
      localFileOutputStream.flush();
      localFileOutputStream.close();
    }
    if (paramBoolean) {
      c(paramBitmap);
    }
    throw localObject2;
  }
  
  public static Uri a(Bitmap paramBitmap, File paramFile, int paramInt, boolean paramBoolean)
  {
    return a(paramBitmap, paramFile, paramInt, Bitmap.CompressFormat.JPEG, paramBoolean);
  }
  
  public static Uri a(l paraml, String paramString)
  {
    File localFile = b(paraml, paramString);
    if (localFile != null) {
      return Uri.fromFile(localFile);
    }
    return null;
  }
  
  public static Uri a(File paramFile)
  {
    File localFile = b(l.b, null);
    if (localFile == null) {
      return null;
    }
    try
    {
      bu.a(paramFile, localFile);
      Uri localUri = Uri.parse(localFile.toURI().toString());
      return localUri;
    }
    catch (IOException localIOException)
    {
      Log.e(c, "Unable to copy source image to temp file.", localIOException);
    }
    return null;
  }
  
  @TargetApi(17)
  public static DisplayMetrics a(Display paramDisplay)
  {
    DisplayMetrics localDisplayMetrics = new DisplayMetrics();
    paramDisplay.getRealMetrics(localDisplayMetrics);
    return localDisplayMetrics;
  }
  
  public static a a(Context paramContext, Uri paramUri1, Uri paramUri2, l paraml, int paramInt1, int paramInt2, boolean paramBoolean)
  {
    return a(paramContext, paramUri1, paramUri2, paraml, paramInt1, paramInt2, paramBoolean, 80);
  }
  
  public static a a(Context paramContext, Uri paramUri1, Uri paramUri2, l paraml, int paramInt1, int paramInt2, boolean paramBoolean, int paramInt3)
  {
    Bitmap localBitmap = a(paramContext, paramUri1, paraml, paramInt1, paramInt2, paramBoolean);
    if (localBitmap != null)
    {
      a(localBitmap, new File(paramUri2.getPath()), paramInt3);
      return new a(paramUri2, localBitmap.getWidth(), localBitmap.getHeight());
    }
    return null;
  }
  
  public static a a(Context paramContext, Uri paramUri, l paraml, int paramInt1, int paramInt2, boolean paramBoolean, int paramInt3)
  {
    Bitmap localBitmap = a(paramContext, paramUri, paraml, paramInt1, paramInt2, paramBoolean);
    Uri localUri;
    if (localBitmap != null)
    {
      localUri = a(paraml, paramUri.toString());
      if (localUri != null) {}
    }
    else
    {
      return null;
    }
    OutputStream localOutputStream = paramContext.getContentResolver().openOutputStream(localUri);
    localOutputStream.write(a(paramContext, localBitmap, paramInt3));
    localOutputStream.flush();
    localOutputStream.close();
    c(localBitmap);
    a locala = new a(localUri, localBitmap.getWidth(), localBitmap.getHeight());
    b("resizeImage:" + locala);
    return locala;
  }
  
  public static File a(l paraml, String paramString, boolean paramBoolean)
  {
    boolean bool1 = a();
    Object localObject = null;
    String str1;
    if (bool1)
    {
      boolean bool2 = c();
      localObject = null;
      if (bool2)
      {
        if (paramString == null) {
          break label151;
        }
        str1 = gj.a(Uri.parse(paramString).getPath());
      }
    }
    for (;;)
    {
      String str2;
      label99:
      File localFile;
      switch (i.a[paraml.ordinal()])
      {
      default: 
        str2 = null;
        if (!((File)localObject).exists()) {
          ((File)localObject).mkdirs();
        }
        localFile = new File((File)localObject, str2);
        if ((!paramBoolean) || (localFile.exists())) {
          break;
        }
      }
      try
      {
        localFile.createNewFile();
        localObject = localFile;
        return localObject;
        label151:
        str1 = String.valueOf(System.currentTimeMillis());
        continue;
        str2 = "IMG-" + str1 + "-V.jpg";
        localObject = new File(com.viber.voip.w.v);
        break label99;
        str2 = "IMG-" + str1 + "-V.jpg";
        localObject = new File(com.viber.voip.w.z);
        break label99;
        localObject = new File(com.viber.voip.w.z);
        str2 = "PCSIMG-" + str1 + ".jpg";
        break label99;
        str2 = "PCSVID-" + str1 + ".mp4";
        localObject = new File(com.viber.voip.w.z);
        break label99;
        str2 = "video-" + str1 + "-V.mp4";
        localObject = new File(com.viber.voip.w.r);
        break label99;
        str2 = "IMG-" + str1 + "-V.jpg";
        localObject = new File(com.viber.voip.w.q);
        break label99;
        str2 = "IMG-" + str1 + "-V.jpg";
        localObject = new File(com.viber.voip.w.A);
        break label99;
        str2 = "QR-" + str1 + ".png";
        localObject = new File(com.viber.voip.w.z);
      }
      catch (IOException localIOException)
      {
        for (;;)
        {
          localIOException.printStackTrace();
        }
      }
    }
  }
  
  public static String a(Context paramContext, Uri paramUri)
  {
    if (new File(paramUri.getPath()).exists()) {
      return paramUri.getPath();
    }
    String[] arrayOfString = { "_data" };
    Cursor localCursor = paramContext.getContentResolver().query(paramUri, arrayOfString, null, null, null);
    if (localCursor != null)
    {
      if (localCursor.moveToFirst()) {}
      for (String str = localCursor.getString(localCursor.getColumnIndexOrThrow("_data"));; str = "")
      {
        localCursor.close();
        return str;
      }
    }
    return "";
  }
  
  public static void a(float paramFloat1, float paramFloat2, Path paramPath)
  {
    paramPath.reset();
    paramPath.moveTo(0.888708F * paramFloat1, 0.114021F * paramFloat2);
    paramPath.rCubicTo(-0.025918F * paramFloat1, -0.025721F * paramFloat2, -0.114267F * paramFloat1, -0.113152F * paramFloat2, -0.386941F * paramFloat1, -0.114014F * paramFloat2);
    paramPath.cubicTo(0.500629F * paramFloat1, 3.E-006F * paramFloat2, 0.499487F * paramFloat1, 0.0F, 0.498341F * paramFloat1, 0.0F);
    paramPath.rCubicTo(-0.001179F * paramFloat1, 0.0F, -0.002355F * paramFloat1, 3.E-006F * paramFloat2, -0.003531F * paramFloat1, 7.E-006F * paramFloat2);
    paramPath.cubicTo(0.222248F * paramFloat1, 0.000889F * paramFloat2, 0.137474F * paramFloat1, 0.088303F * paramFloat2, 0.11156F * paramFloat1, 0.114021F * paramFloat2);
    paramPath.cubicTo(0.042877F * paramFloat1, 0.178277F * paramFloat2, -0.003507F * paramFloat1, 0.30588F * paramFloat2, 0.000213F * paramFloat1, 0.501685F * paramFloat2);
    paramPath.rCubicTo(-0.003724F * paramFloat1, 0.192179F * paramFloat2, 0.041928F * paramFloat1, 0.321163F * paramFloat2, 0.110685F * paramFloat1, 0.385415F * paramFloat2);
    paramPath.rCubicTo(0.025992F * paramFloat1, 0.025768F * paramFloat2, 0.112139F * paramFloat1, 0.112364F * paramFloat2, 0.384122F * paramFloat1, 0.112896F * paramFloat2);
    paramPath.rLineTo(0.0F, 0.0F);
    paramPath.rCubicTo(-0.001867F * paramFloat1, 3.E-006F * paramFloat2, 0.001139F * paramFloat1, 0.0F, 0.003321F * paramFloat1, 0.0F);
    paramPath.rCubicTo(0.001155F * paramFloat1, 0.0F, 0.003321F * paramFloat1, 0.0F, 0.003321F * paramFloat1, 0.0F);
    paramPath.rCubicTo(0.271983F * paramFloat1, -0.000532F * paramFloat2, 0.361715F * paramFloat1, -0.087132F * paramFloat2, 0.38771F * paramFloat1, -0.112896F * paramFloat2);
    paramPath.rCubicTo(0.068757F * paramFloat1, -0.064256F * paramFloat2, 0.114138F * paramFloat1, -0.193236F * paramFloat2, 0.110418F * paramFloat1, -0.385415F * paramFloat2);
    paramPath.rLineTo(0.0F, 0.0F);
    paramPath.cubicTo(1.003507F * paramFloat1, 0.30588F * paramFloat2, 0.957391F * paramFloat1, 0.178277F * paramFloat2, 0.888708F * paramFloat1, 0.114021F * paramFloat2);
    paramPath.close();
  }
  
  public static boolean a()
  {
    return Environment.getExternalStorageState().equals("mounted");
  }
  
  private static boolean a(int paramInt1, int paramInt2, int paramInt3)
  {
    if (paramInt3 == 1) {
      if (paramInt1 >= paramInt2) {}
    }
    do
    {
      do
      {
        return true;
        return false;
        if (paramInt3 != 2) {
          break;
        }
      } while (paramInt1 > paramInt2);
      return false;
      if (paramInt3 == 3) {
        return false;
      }
    } while (paramInt3 == 4);
    return false;
  }
  
  public static boolean a(Uri paramUri)
  {
    return (paramUri != null) && ((paramUri.toString().contains("provider/picasa")) || (e(paramUri)) || (paramUri.toString().startsWith("content://com.android.providers.media.documents/document/")));
  }
  
  public static boolean a(boolean paramBoolean)
  {
    if (bj.a() > 25165824L) {
      return true;
    }
    if (paramBoolean)
    {
      Intent localIntent = new Intent("com.viber.voip.action.ACTION_LOW_STORAGE_SPACE");
      localIntent.setFlags(268435456);
      ViberApplication.getInstance().startActivity(localIntent);
    }
    return false;
  }
  
  private static byte[] a(Context paramContext, Bitmap paramBitmap, int paramInt)
  {
    int i = 0;
    int j = 100;
    b("maxImageSize = " + paramInt);
    ByteArrayOutputStream localByteArrayOutputStream;
    int k;
    int m;
    int n;
    if (paramBitmap != null)
    {
      localByteArrayOutputStream = new ByteArrayOutputStream();
      if (paramInt != -1)
      {
        k = j;
        m = 0;
        if (k >= m) {
          n = m + k;
        }
      }
    }
    for (;;)
    {
      int i2;
      try
      {
        i1 = n / 2;
        if (i1 == j)
        {
          paramBitmap.compress(Bitmap.CompressFormat.JPEG, j, localByteArrayOutputStream);
          byte[] arrayOfByte = localByteArrayOutputStream.toByteArray();
          c(paramBitmap);
          localByteArrayOutputStream.close();
          return arrayOfByte;
        }
        paramBitmap.compress(Bitmap.CompressFormat.JPEG, i1, localByteArrayOutputStream);
        b("compression:compression quality = " + i1 + ", bitmap size = " + localByteArrayOutputStream.size());
        if (localByteArrayOutputStream.size() > paramInt) {
          break label266;
        }
        i2 = i1 + 1;
        if (i >= localByteArrayOutputStream.size()) {
          break label248;
        }
        i3 = localByteArrayOutputStream.size();
        i4 = k;
        i5 = i2;
        localByteArrayOutputStream.reset();
        m = i5;
        k = i4;
        i = i3;
        j = i1;
      }
      catch (IOException localIOException)
      {
        localIOException.printStackTrace();
      }
      paramBitmap.compress(Bitmap.CompressFormat.JPEG, 100, localByteArrayOutputStream);
      continue;
      return null;
      label248:
      int i1 = j;
      int i3 = i;
      int i4 = k;
      int i5 = i2;
      continue;
      label266:
      int i6 = i1 - 1;
      i5 = m;
      int i7 = i;
      i4 = i6;
      i1 = j;
      i3 = i7;
    }
  }
  
  public static byte[] a(Bitmap paramBitmap, Bitmap.CompressFormat paramCompressFormat)
  {
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    paramBitmap.compress(paramCompressFormat, 100, localByteArrayOutputStream);
    return localByteArrayOutputStream.toByteArray();
  }
  
  public static int[] a(Context paramContext)
  {
    if (paramContext == null) {
      return null;
    }
    int[] arrayOfInt = new int[2];
    Display localDisplay = ((WindowManager)paramContext.getSystemService("window")).getDefaultDisplay();
    int j;
    int i;
    if (Build.VERSION.SDK_INT >= 17)
    {
      DisplayMetrics localDisplayMetrics2 = a(localDisplay);
      j = localDisplayMetrics2.heightPixels;
      i = localDisplayMetrics2.widthPixels;
    }
    for (;;)
    {
      if ((j == 0) || (i == 0)) {}
      try
      {
        Method localMethod1 = Display.class.getMethod("getRawHeight", new Class[0]);
        Method localMethod2 = Display.class.getMethod("getRawWidth", new Class[0]);
        j = ((Integer)localMethod1.invoke(localDisplay, new Object[0])).intValue();
        int k = ((Integer)localMethod2.invoke(localDisplay, new Object[0])).intValue();
        i = k;
      }
      catch (Exception localException)
      {
        for (;;)
        {
          DisplayMetrics localDisplayMetrics1;
          i = 0;
          j = 0;
          continue;
          arrayOfInt[1] = j;
          arrayOfInt[0] = i;
        }
      }
      if ((j == 0) || (i == 0))
      {
        localDisplayMetrics1 = new DisplayMetrics();
        localDisplay.getMetrics(localDisplayMetrics1);
        j = localDisplayMetrics1.heightPixels;
        i = localDisplayMetrics1.widthPixels;
      }
      if (j < i)
      {
        arrayOfInt[0] = j;
        arrayOfInt[1] = i;
        return arrayOfInt;
      }
      i = 0;
      j = 0;
    }
  }
  
  public static int b(Context paramContext)
  {
    TypedValue localTypedValue = new TypedValue();
    if (Build.VERSION.SDK_INT >= 11)
    {
      boolean bool = paramContext.getTheme().resolveAttribute(16843499, localTypedValue, true);
      int i = 0;
      if (bool) {
        i = TypedValue.complexToDimensionPixelSize(localTypedValue.data, paramContext.getResources().getDisplayMetrics());
      }
      return i;
    }
    return TypedValue.complexToDimensionPixelSize(localTypedValue.data, paramContext.getResources().getDisplayMetrics());
  }
  
  public static Bitmap b(Context paramContext, Uri paramUri, int paramInt)
  {
    b("getBitmapFromUri photoUri = " + paramUri);
    Bitmap localBitmap;
    if ((paramUri == null) && (paramInt <= 0)) {
      localBitmap = null;
    }
    do
    {
      return localBitmap;
      if (paramUri == null) {
        BitmapFactory.decodeResource(paramContext.getResources(), paramInt);
      }
      localBitmap = com.viber.voip.util.b.w.a(paramContext, paramUri, false);
    } while (localBitmap != null);
    return BitmapFactory.decodeResource(paramContext.getResources(), paramInt);
  }
  
  public static Bitmap b(Bitmap paramBitmap, int paramInt)
  {
    if (paramBitmap == null) {
      return null;
    }
    if (paramBitmap.isMutable()) {}
    for (;;)
    {
      new Canvas(paramBitmap).drawColor((paramInt & 0xFF) << 24, PorterDuff.Mode.DST_IN);
      return paramBitmap;
      paramBitmap = paramBitmap.copy(Bitmap.Config.ARGB_8888, true);
    }
  }
  
  public static Bitmap b(Bitmap paramBitmap, int paramInt1, int paramInt2, boolean paramBoolean)
  {
    return a(paramBitmap, paramInt1, paramInt2, paramBoolean, 0);
  }
  
  private static Bitmap b(String paramString1, String paramString2, int paramInt1, int paramInt2)
  {
    int i = 1;
    if (paramString1.charAt(0) != '/') {}
    while ((i != 0) || (new File(paramString1).exists()))
    {
      AssetManager localAssetManager = ViberApplication.getInstance().getAssets();
      Object localObject1;
      if (i != 0) {
        localObject1 = localAssetManager.open(paramString1);
      }
      try
      {
        label53:
        Bitmap localBitmap1 = BitmapFactory.decodeStream((InputStream)localObject1);
        if (localBitmap1 != null) {}
        for (Bitmap localBitmap2 = Bitmap.createScaledBitmap(localBitmap1, paramInt1, paramInt2, true);; localBitmap2 = null)
        {
          if (localBitmap2 != null)
          {
            FileOutputStream localFileOutputStream = new FileOutputStream(paramString2);
            localBitmap2.compress(Bitmap.CompressFormat.PNG, 100, localFileOutputStream);
            ((InputStream)localObject1).close();
            localFileOutputStream.close();
          }
          return localBitmap2;
          i = 0;
          break;
          localObject1 = new FileInputStream(paramString1);
          break label53;
        }
        return null;
      }
      catch (Exception localException)
      {
        return null;
      }
      finally
      {
        if (localObject1 != null) {
          ((InputStream)localObject1).close();
        }
      }
    }
  }
  
  /* Error */
  public static BitmapFactory.Options b(Context paramContext, Uri paramUri)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: aload_0
    //   3: invokevirtual 262	android/content/Context:getContentResolver	()Landroid/content/ContentResolver;
    //   6: astore_3
    //   7: new 267	android/graphics/BitmapFactory$Options
    //   10: dup
    //   11: invokespecial 308	android/graphics/BitmapFactory$Options:<init>	()V
    //   14: astore 4
    //   16: aload 4
    //   18: iconst_1
    //   19: putfield 998	android/graphics/BitmapFactory$Options:inJustDecodeBounds	Z
    //   22: aload_3
    //   23: aload_1
    //   24: invokevirtual 391	android/content/ContentResolver:openInputStream	(Landroid/net/Uri;)Ljava/io/InputStream;
    //   27: astore_2
    //   28: aload_2
    //   29: aconst_null
    //   30: aload 4
    //   32: invokestatic 395	android/graphics/BitmapFactory:decodeStream	(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    //   35: pop
    //   36: aload_2
    //   37: ifnull +7 -> 44
    //   40: aload_2
    //   41: invokevirtual 398	java/io/InputStream:close	()V
    //   44: aload 4
    //   46: areturn
    //   47: astore 7
    //   49: aload 7
    //   51: invokevirtual 999	java/io/FileNotFoundException:printStackTrace	()V
    //   54: new 280	java/lang/StringBuilder
    //   57: dup
    //   58: invokespecial 281	java/lang/StringBuilder:<init>	()V
    //   61: ldc_w 1001
    //   64: invokevirtual 287	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   67: aload_1
    //   68: invokevirtual 695	android/net/Uri:getPath	()Ljava/lang/String;
    //   71: invokevirtual 287	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   74: invokevirtual 297	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   77: invokestatic 355	com/viber/voip/messages/extras/image/h:b	(Ljava/lang/String;)V
    //   80: aload_2
    //   81: ifnull -37 -> 44
    //   84: aload_2
    //   85: invokevirtual 398	java/io/InputStream:close	()V
    //   88: aload 4
    //   90: areturn
    //   91: astore 8
    //   93: aload 4
    //   95: areturn
    //   96: astore 5
    //   98: aload_2
    //   99: ifnull +7 -> 106
    //   102: aload_2
    //   103: invokevirtual 398	java/io/InputStream:close	()V
    //   106: aload 5
    //   108: athrow
    //   109: astore 10
    //   111: aload 4
    //   113: areturn
    //   114: astore 6
    //   116: goto -10 -> 106
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	119	0	paramContext	Context
    //   0	119	1	paramUri	Uri
    //   1	102	2	localInputStream	InputStream
    //   6	17	3	localContentResolver	ContentResolver
    //   14	98	4	localOptions	BitmapFactory.Options
    //   96	11	5	localObject	Object
    //   114	1	6	localIOException1	IOException
    //   47	3	7	localFileNotFoundException	java.io.FileNotFoundException
    //   91	1	8	localIOException2	IOException
    //   109	1	10	localIOException3	IOException
    // Exception table:
    //   from	to	target	type
    //   22	36	47	java/io/FileNotFoundException
    //   84	88	91	java/io/IOException
    //   22	36	96	finally
    //   49	80	96	finally
    //   40	44	109	java/io/IOException
    //   102	106	114	java/io/IOException
  }
  
  public static Path b(int paramInt1, int paramInt2)
  {
    Path localPath = new Path();
    a(paramInt1, paramInt2, localPath);
    return localPath;
  }
  
  @TargetApi(13)
  public static Point b(Display paramDisplay)
  {
    Point localPoint = new Point();
    paramDisplay.getSize(localPoint);
    return localPoint;
  }
  
  public static File b(l paraml, String paramString)
  {
    return a(paraml, paramString, true);
  }
  
  private static void b(String paramString)
  {
    ViberApplication.log(3, c, paramString);
  }
  
  public static boolean b()
  {
    String str = Environment.getExternalStorageState();
    return (str.equals("mounted")) || (str.equals("mounted_ro"));
  }
  
  public static boolean b(Uri paramUri)
  {
    boolean bool1 = false;
    if (paramUri != null)
    {
      String str = paramUri.getScheme();
      if (str != null)
      {
        boolean bool2 = str.equals("file");
        bool1 = false;
        if (!bool2) {}
      }
      else
      {
        bool1 = true;
      }
    }
    return bool1;
  }
  
  private static boolean b(File paramFile)
  {
    return paramFile.getAbsolutePath().startsWith(com.viber.voip.w.z);
  }
  
  public static byte[] b(Bitmap paramBitmap)
  {
    return a(paramBitmap, Bitmap.CompressFormat.JPEG);
  }
  
  private static BitmapFactory.Options c(Context paramContext, Uri paramUri, int paramInt)
  {
    BitmapFactory.Options localOptions = b(paramContext, paramUri);
    if (localOptions == null) {
      return null;
    }
    int i = localOptions.outWidth;
    int j = localOptions.outHeight;
    if (paramInt > 0) {}
    for (;;)
    {
      if ((i / 2 < paramInt) && (j / 2 < paramInt))
      {
        int k = a(a(paramContext, paramUri));
        if ((k == 90) || (k == 270))
        {
          int m = i;
          i = j;
          j = m;
        }
        localOptions.outHeight = j;
        localOptions.outWidth = i;
        return localOptions;
      }
      j /= 2;
      i /= 2;
    }
  }
  
  public static void c(Bitmap paramBitmap)
  {
    if (paramBitmap != null) {
      paramBitmap.recycle();
    }
  }
  
  public static boolean c()
  {
    return a(true);
  }
  
  public static boolean c(Context paramContext, Uri paramUri)
  {
    boolean bool1 = false;
    boolean bool2;
    if (paramUri != null)
    {
      bool2 = a(paramUri);
      File localFile1 = new File(paramUri.getPath());
      if ((!localFile1.exists()) || (!b(localFile1))) {
        break label75;
      }
      bool1 = localFile1.delete();
    }
    for (;;)
    {
      if ((!paramUri.toString().startsWith("file://")) && (!bool2)) {}
      try
      {
        paramContext.getContentResolver().delete(paramUri, null, null);
        return bool1;
      }
      catch (IllegalArgumentException localIllegalArgumentException)
      {
        label75:
        File localFile2;
        boolean bool3;
        localIllegalArgumentException.printStackTrace();
        return bool1;
      }
      catch (UnsupportedOperationException localUnsupportedOperationException) {}
      bool1 = false;
      if (!bool2)
      {
        localFile2 = new File(a(paramContext, paramUri));
        bool3 = localFile2.exists();
        bool1 = false;
        if (bool3) {
          bool1 = localFile2.delete();
        }
      }
    }
    return bool1;
  }
  
  public static boolean c(Uri paramUri)
  {
    if (paramUri != null)
    {
      String str = paramUri.toString();
      if ((str.contains("googleusercontent.com")) && ((str.startsWith("https://")) || (str.startsWith("http://")))) {
        return true;
      }
    }
    return false;
  }
  
  @SuppressLint({"NewApi"})
  public static int d(Bitmap paramBitmap)
  {
    if (Build.VERSION.SDK_INT >= 12) {
      return paramBitmap.getByteCount();
    }
    return paramBitmap.getRowBytes() * paramBitmap.getHeight();
  }
  
  public static Uri d(Context paramContext, Uri paramUri)
  {
    try
    {
      Bitmap localBitmap = BitmapFactory.decodeStream(ViberEnv.newHttpRequest(paramUri.toString()).getInputStream());
      if (localBitmap == null) {
        return null;
      }
      Uri localUri = a(localBitmap, l.b);
      return localUri;
    }
    catch (IOException localIOException) {}
    return null;
  }
  
  public static Uri d(Uri paramUri)
  {
    if (!b(paramUri)) {
      throw new IllegalArgumentException("Uri for copy must be an absolute Uri to file");
    }
    return a(new File(URI.create(paramUri.toString())));
  }
  
  public static Bitmap e(Bitmap paramBitmap)
  {
    return a(paramBitmap, 0, null);
  }
  
  private static boolean e(Uri paramUri)
  {
    if (paramUri != null)
    {
      String str = paramUri.toString();
      if ((str.contains("googleusercontent.com")) && (str.startsWith("content://"))) {
        return true;
      }
    }
    return false;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.extras.image.h
 * JD-Core Version:    0.7.0.1
 */