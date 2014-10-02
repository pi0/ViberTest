package com.viber.voip.messages.extras.image;

import android.content.ContentResolver;
import android.content.Context;
import android.content.UriMatcher;
import android.database.Cursor;
import android.database.sqlite.SQLiteException;
import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.graphics.BitmapFactory.Options;
import android.media.ThumbnailUtils;
import android.net.Uri;
import android.os.Build.VERSION;
import android.provider.MediaStore.Images.Media;
import android.provider.MediaStore.Video;
import android.provider.MediaStore.Video.Thumbnails;
import android.util.Log;
import com.viber.voip.ViberApplication;
import com.viber.voip.util.al;
import com.viber.voip.util.bj;
import com.viber.voip.w;
import java.io.IOException;
import java.io.OutputStream;

public class m
{
  public static final int a = a();
  private static Integer b = Integer.valueOf(0);
  
  public static int a()
  {
    try
    {
      if (b.intValue() == 0)
      {
        b = Integer.valueOf(Math.min(h.a(200.0F), 400));
        a("getLocalThumbnailMaxWidth in px: " + b);
      }
      int i = b.intValue();
      return i;
    }
    finally {}
  }
  
  public static long a(Context paramContext, Uri paramUri, String paramString)
  {
    int i = 1;
    ContentResolver localContentResolver = paramContext.getContentResolver();
    long l = 0L;
    if (("video".equals(paramString)) || ("animated_message".equals(paramString))) {
      if (w.C.match(paramUri) != -1) {
        if (i == 0) {
          break label110;
        }
      }
    }
    label110:
    do
    {
      try
      {
        Cursor localCursor = MediaStore.Video.query(localContentResolver, paramUri, new String[] { "duration" });
        if ((!al.b(localCursor)) && (localCursor.moveToFirst())) {
          l = localCursor.getLong(0);
        }
        al.a(localCursor);
        return l;
      }
      catch (SQLiteException localSQLiteException)
      {
        return b(paramContext, paramUri);
      }
      i = 0;
      break;
      return b(paramContext, paramUri);
      if (("image".equals(paramString)) || ("location".equals(paramString))) {
        return bj.a(paramContext, paramUri);
      }
    } while (!"sound".equals(paramString));
    return b(paramContext, paramUri);
  }
  
  public static a a(Context paramContext, Bitmap paramBitmap, Uri paramUri)
  {
    ContentResolver localContentResolver;
    if (paramBitmap != null) {
      localContentResolver = paramContext.getContentResolver();
    }
    for (;;)
    {
      try
      {
        OutputStream localOutputStream = localContentResolver.openOutputStream(paramUri);
        paramBitmap.compress(Bitmap.CompressFormat.JPEG, 80, localOutputStream);
        localOutputStream.flush();
        localOutputStream.close();
        locala = new a(paramUri, paramBitmap.getWidth(), paramBitmap.getHeight());
        h.c(paramBitmap);
        return locala;
      }
      catch (IOException localIOException)
      {
        localIOException.printStackTrace();
      }
      a locala = null;
    }
  }
  
  public static a a(Context paramContext, Uri paramUri)
  {
    return a(paramContext, paramUri, h.a(l.a, paramUri.toString()));
  }
  
  public static a a(Context paramContext, Uri paramUri, int paramInt)
  {
    return a(paramContext, paramUri, l.a, null, paramInt, paramInt, -1);
  }
  
  public static a a(Context paramContext, Uri paramUri, int paramInt1, int paramInt2)
  {
    return a(paramContext, paramUri, l.d, null, paramInt1, paramInt1, paramInt2);
  }
  
  public static a a(Context paramContext, Uri paramUri1, Uri paramUri2)
  {
    return a(paramContext, paramUri1, l.a, paramUri2, a, a, -1);
  }
  
  private static a a(Context paramContext, Uri paramUri1, l paraml, Uri paramUri2, int paramInt1, int paramInt2, int paramInt3)
  {
    ViberApplication.log("createThumbnail mediaUri: " + paramUri1);
    String str = bj.b(paramUri1);
    if ((!h.a()) || (!h.c()) || (str == null) || (paramUri1 == null))
    {
      ViberApplication.log("return null");
      return null;
    }
    Object localObject;
    if (str.startsWith("video"))
    {
      Bitmap localBitmap = b(paramContext, paramUri1, paramInt1, paramInt2);
      if (paramUri2 == null) {
        paramUri2 = h.a(l.a, null);
      }
      localObject = a(paramContext, localBitmap, paramUri2);
    }
    for (;;)
    {
      ViberApplication.log("createThumbnail return: " + localObject);
      return localObject;
      if (str.startsWith("image"))
      {
        Uri localUri;
        if (paramUri2 != null) {
          localUri = paramUri2;
        }
        try
        {
          localObject = h.a(paramContext, paramUri1, localUri, paraml, paramInt1, paramInt2, true);
        }
        catch (Exception localException)
        {
          a locala;
          ViberApplication.log("createThumbnail error: " + Log.getStackTraceString(localException));
        }
        locala = h.a(paramContext, paramUri1, paraml, paramInt1, paramInt2, true, paramInt3);
        localObject = locala;
      }
      else
      {
        localObject = null;
      }
    }
  }
  
  public static a a(Context paramContext, byte[] paramArrayOfByte, String paramString)
  {
    Uri localUri = h.a(l.a, paramString);
    if (localUri != null) {
      try
      {
        OutputStream localOutputStream = paramContext.getContentResolver().openOutputStream(localUri);
        localOutputStream.write(paramArrayOfByte);
        localOutputStream.flush();
        localOutputStream.close();
        Bitmap localBitmap = MediaStore.Images.Media.getBitmap(paramContext.getContentResolver(), localUri);
        a locala = new a(localUri, localBitmap.getWidth(), localBitmap.getHeight());
        h.c(localBitmap);
        return locala;
      }
      catch (Exception localException)
      {
        a("saveThumbnailsBytes error: " + Log.getStackTraceString(localException));
      }
    }
    return null;
  }
  
  public static a a(Context paramContext, byte[] paramArrayOfByte, boolean paramBoolean)
  {
    return a(paramContext, paramArrayOfByte, paramBoolean, null);
  }
  
  public static a a(Context paramContext, byte[] paramArrayOfByte, boolean paramBoolean, String paramString)
  {
    boolean bool = true;
    if ((paramArrayOfByte != null) && (paramArrayOfByte.length > 0)) {}
    a locala1;
    a locala2;
    for (;;)
    {
      a("handleMediaMessage: thumbExist=" + bool);
      if (!bool) {
        break label246;
      }
      a("saveThumbnailMediaMessage: thumbExist=" + bool);
      locala1 = a(paramContext, paramArrayOfByte, paramString);
      a("saveThumbnailMediaMessage saveThumbnailsPhoto size:" + paramArrayOfByte.length + ", imageData: " + locala1);
      int i = a;
      if ((locala1 == null) || (!paramBoolean)) {
        break label243;
      }
      a("saveThumbnailMediaMessage try to resize");
      try
      {
        localUri = locala1.a;
        a locala3 = h.a(paramContext, locala1.a, l.a, i, i, true, -1);
        locala2 = locala3;
      }
      catch (Exception localException1)
      {
        Uri localUri;
        localException2 = localException1;
        locala2 = locala1;
      }
      try
      {
        a("saveThumbnailMediaMessage new imageData: " + locala2);
        h.c(paramContext, localUri);
        return locala2;
      }
      catch (Exception localException3)
      {
        break label209;
      }
      bool = false;
    }
    Exception localException2;
    label209:
    ViberApplication.log("createThumbnail error: " + Log.getStackTraceString(localException2));
    return locala2;
    label243:
    return locala1;
    label246:
    return null;
  }
  
  private static void a(String paramString) {}
  
  public static byte[][] a(Context paramContext, String paramString)
  {
    byte[][] arrayOfByte = new byte[2][];
    if (paramString == null)
    {
      arrayOfByte[0] = new byte[0];
      arrayOfByte[1] = new byte[0];
      return arrayOfByte;
    }
    Uri localUri = Uri.parse(paramString);
    a locala1 = a(paramContext, localUri, 150, 4096);
    if (locala1 != null)
    {
      a("CREATE OUTGOING SMALL THUMBNAIL: " + locala1);
      arrayOfByte[0] = b(paramContext, locala1.a, 4096);
      h.c(paramContext, locala1.a);
    }
    for (;;)
    {
      a locala2 = a(paramContext, localUri, 400, 10240);
      if (locala2 == null) {
        break;
      }
      a("CREATE OUTGOING LARGE THUMBNAIL: " + locala2);
      arrayOfByte[1] = b(paramContext, locala2.a, 10240);
      h.c(paramContext, locala2.a);
      return arrayOfByte;
      arrayOfByte[0] = new byte[0];
    }
    arrayOfByte[1] = new byte[0];
    return arrayOfByte;
  }
  
  /* Error */
  private static long b(Context paramContext, Uri paramUri)
  {
    // Byte code:
    //   0: new 303	android/media/MediaPlayer
    //   3: dup
    //   4: invokespecial 304	android/media/MediaPlayer:<init>	()V
    //   7: astore_2
    //   8: aload_2
    //   9: aload_0
    //   10: aload_1
    //   11: invokevirtual 308	android/media/MediaPlayer:setDataSource	(Landroid/content/Context;Landroid/net/Uri;)V
    //   14: aload_2
    //   15: invokevirtual 311	android/media/MediaPlayer:prepare	()V
    //   18: aload_2
    //   19: invokevirtual 314	android/media/MediaPlayer:getDuration	()I
    //   22: istore 7
    //   24: iload 7
    //   26: i2l
    //   27: lstore 4
    //   29: aload_2
    //   30: invokevirtual 317	android/media/MediaPlayer:release	()V
    //   33: lload 4
    //   35: lreturn
    //   36: astore_3
    //   37: lconst_0
    //   38: lstore 4
    //   40: aload_3
    //   41: astore 6
    //   43: aload 6
    //   45: invokevirtual 176	java/io/IOException:printStackTrace	()V
    //   48: lload 4
    //   50: lreturn
    //   51: astore 6
    //   53: goto -10 -> 43
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	56	0	paramContext	Context
    //   0	56	1	paramUri	Uri
    //   7	23	2	localMediaPlayer	android.media.MediaPlayer
    //   36	5	3	localIOException1	IOException
    //   27	22	4	l	long
    //   41	3	6	localIOException2	IOException
    //   51	1	6	localIOException3	IOException
    //   22	3	7	i	int
    // Exception table:
    //   from	to	target	type
    //   8	24	36	java/io/IOException
    //   29	33	51	java/io/IOException
  }
  
  private static Bitmap b(Context paramContext, Uri paramUri, int paramInt1, int paramInt2)
  {
    label226:
    label229:
    label235:
    label245:
    for (int i = 1;; i = 0)
    {
      Bitmap localBitmap2;
      for (;;)
      {
        Bitmap localBitmap1;
        try
        {
          if (w.C.match(paramUri) == -1) {
            break label245;
          }
          if (i != 0)
          {
            ContentResolver localContentResolver = paramContext.getContentResolver();
            int j = Integer.parseInt(paramUri.getLastPathSegment());
            BitmapFactory.Options localOptions = new BitmapFactory.Options();
            localOptions.inSampleSize = 1;
            localBitmap1 = MediaStore.Video.Thumbnails.getThumbnail(localContentResolver, j, 1, localOptions);
            if ((localBitmap1 != null) || (Build.VERSION.SDK_INT <= 7)) {
              break label235;
            }
            localBitmap1 = ThumbnailUtils.createVideoThumbnail(paramUri.getPath(), 1);
            break label235;
            if (localObject == null) {
              break label226;
            }
            k = 2;
            if (paramInt2 == -2)
            {
              if (400.0F / ((Bitmap)localObject).getHeight() < paramInt1 / ((Bitmap)localObject).getWidth())
              {
                k = 4;
                paramInt1 = 400;
              }
            }
            else
            {
              localBitmap2 = h.a(h.b((Bitmap)localObject, paramInt1, k, true), paramInt1, paramInt1, true);
              if (localBitmap2 == localObject) {
                break;
              }
              h.c((Bitmap)localObject);
              return localBitmap2;
            }
          }
          else
          {
            if (Build.VERSION.SDK_INT <= 7) {
              break label229;
            }
            Bitmap localBitmap3 = ThumbnailUtils.createVideoThumbnail(paramUri.getPath(), 1);
            localObject = localBitmap3;
            continue;
          }
          int k = 3;
          continue;
          return localObject;
        }
        catch (Exception localException)
        {
          ViberApplication.log("getVideoThumbnails : " + Log.getStackTraceString(localException));
          return null;
        }
        Object localObject = null;
        continue;
        localObject = localBitmap1;
      }
      return localBitmap2;
    }
  }
  
  /* Error */
  private static byte[] b(Context paramContext, Uri paramUri, int paramInt)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_3
    //   2: new 40	java/lang/StringBuilder
    //   5: dup
    //   6: invokespecial 43	java/lang/StringBuilder:<init>	()V
    //   9: ldc_w 362
    //   12: invokevirtual 49	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   15: aload_1
    //   16: invokevirtual 52	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   19: ldc_w 364
    //   22: invokevirtual 49	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   25: iload_2
    //   26: invokevirtual 273	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   29: invokevirtual 56	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   32: invokestatic 59	com/viber/voip/messages/extras/image/m:a	(Ljava/lang/String;)V
    //   35: iconst_0
    //   36: newarray byte
    //   38: astore 4
    //   40: aload_1
    //   41: ifnonnull +6 -> 47
    //   44: aload 4
    //   46: areturn
    //   47: aload_0
    //   48: invokevirtual 68	android/content/Context:getContentResolver	()Landroid/content/ContentResolver;
    //   51: aload_1
    //   52: invokevirtual 368	android/content/ContentResolver:openInputStream	(Landroid/net/Uri;)Ljava/io/InputStream;
    //   55: astore 13
    //   57: aload 13
    //   59: astore_3
    //   60: aload_3
    //   61: invokevirtual 373	java/io/InputStream:available	()I
    //   64: istore 15
    //   66: new 40	java/lang/StringBuilder
    //   69: dup
    //   70: invokespecial 43	java/lang/StringBuilder:<init>	()V
    //   73: ldc_w 375
    //   76: invokevirtual 49	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   79: aload_3
    //   80: invokevirtual 373	java/io/InputStream:available	()I
    //   83: invokevirtual 273	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   86: invokevirtual 56	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   89: invokestatic 59	com/viber/voip/messages/extras/image/m:a	(Ljava/lang/String;)V
    //   92: iload 15
    //   94: iload_2
    //   95: if_icmple +266 -> 361
    //   98: new 326	android/graphics/BitmapFactory$Options
    //   101: dup
    //   102: invokespecial 327	android/graphics/BitmapFactory$Options:<init>	()V
    //   105: astore 16
    //   107: aload 16
    //   109: getstatic 381	android/graphics/Bitmap$Config:ALPHA_8	Landroid/graphics/Bitmap$Config;
    //   112: putfield 384	android/graphics/BitmapFactory$Options:inPreferredConfig	Landroid/graphics/Bitmap$Config;
    //   115: aload_3
    //   116: aconst_null
    //   117: aload 16
    //   119: invokestatic 390	android/graphics/BitmapFactory:decodeStream	(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    //   122: astore 17
    //   124: new 392	java/io/ByteArrayOutputStream
    //   127: dup
    //   128: invokespecial 393	java/io/ByteArrayOutputStream:<init>	()V
    //   131: astore 18
    //   133: aload 17
    //   135: getstatic 144	android/graphics/Bitmap$CompressFormat:JPEG	Landroid/graphics/Bitmap$CompressFormat;
    //   138: bipush 70
    //   140: aload 18
    //   142: invokevirtual 150	android/graphics/Bitmap:compress	(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    //   145: pop
    //   146: new 40	java/lang/StringBuilder
    //   149: dup
    //   150: invokespecial 43	java/lang/StringBuilder:<init>	()V
    //   153: ldc_w 395
    //   156: invokevirtual 49	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   159: aload 18
    //   161: invokevirtual 398	java/io/ByteArrayOutputStream:size	()I
    //   164: invokevirtual 273	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   167: ldc_w 400
    //   170: invokevirtual 49	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   173: bipush 70
    //   175: invokevirtual 273	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   178: invokevirtual 56	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   181: invokestatic 59	com/viber/voip/messages/extras/image/m:a	(Ljava/lang/String;)V
    //   184: ldc2_w 401
    //   187: iload_2
    //   188: i2d
    //   189: aload 18
    //   191: invokevirtual 398	java/io/ByteArrayOutputStream:size	()I
    //   194: i2d
    //   195: ddiv
    //   196: dmul
    //   197: d2i
    //   198: istore 20
    //   200: new 40	java/lang/StringBuilder
    //   203: dup
    //   204: invokespecial 43	java/lang/StringBuilder:<init>	()V
    //   207: ldc_w 404
    //   210: invokevirtual 49	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   213: iload 20
    //   215: invokevirtual 273	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   218: invokevirtual 56	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   221: invokestatic 59	com/viber/voip/messages/extras/image/m:a	(Ljava/lang/String;)V
    //   224: iload 20
    //   226: ifle +63 -> 289
    //   229: aload 17
    //   231: getstatic 144	android/graphics/Bitmap$CompressFormat:JPEG	Landroid/graphics/Bitmap$CompressFormat;
    //   234: iload 20
    //   236: aload 18
    //   238: invokevirtual 150	android/graphics/Bitmap:compress	(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    //   241: pop
    //   242: new 40	java/lang/StringBuilder
    //   245: dup
    //   246: invokespecial 43	java/lang/StringBuilder:<init>	()V
    //   249: ldc_w 406
    //   252: invokevirtual 49	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   255: iload 20
    //   257: invokevirtual 273	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   260: ldc_w 408
    //   263: invokevirtual 49	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   266: aload 18
    //   268: invokevirtual 398	java/io/ByteArrayOutputStream:size	()I
    //   271: invokevirtual 273	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   274: invokevirtual 56	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   277: invokestatic 59	com/viber/voip/messages/extras/image/m:a	(Ljava/lang/String;)V
    //   280: aload 18
    //   282: invokevirtual 398	java/io/ByteArrayOutputStream:size	()I
    //   285: iload_2
    //   286: if_icmpge +64 -> 350
    //   289: aload 18
    //   291: invokevirtual 412	java/io/ByteArrayOutputStream:toByteArray	()[B
    //   294: astore 22
    //   296: aload 22
    //   298: astore 23
    //   300: aload 17
    //   302: invokestatic 173	com/viber/voip/messages/extras/image/h:c	(Landroid/graphics/Bitmap;)V
    //   305: aload 18
    //   307: invokevirtual 413	java/io/ByteArrayOutputStream:close	()V
    //   310: aload 23
    //   312: astore 4
    //   314: aload_3
    //   315: ifnull +7 -> 322
    //   318: aload_3
    //   319: invokevirtual 414	java/io/InputStream:close	()V
    //   322: new 40	java/lang/StringBuilder
    //   325: dup
    //   326: invokespecial 43	java/lang/StringBuilder:<init>	()V
    //   329: ldc_w 416
    //   332: invokevirtual 49	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   335: aload 4
    //   337: arraylength
    //   338: invokevirtual 273	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   341: invokevirtual 56	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   344: invokestatic 59	com/viber/voip/messages/extras/image/m:a	(Ljava/lang/String;)V
    //   347: aload 4
    //   349: areturn
    //   350: aload 18
    //   352: invokevirtual 419	java/io/ByteArrayOutputStream:reset	()V
    //   355: iinc 20 255
    //   358: goto -134 -> 224
    //   361: aload_3
    //   362: invokevirtual 373	java/io/InputStream:available	()I
    //   365: newarray byte
    //   367: astore 23
    //   369: aload_3
    //   370: aload 23
    //   372: invokevirtual 423	java/io/InputStream:read	([B)I
    //   375: pop
    //   376: aload 23
    //   378: astore 4
    //   380: goto -66 -> 314
    //   383: astore 11
    //   385: iconst_0
    //   386: newarray byte
    //   388: astore 4
    //   390: aload_3
    //   391: ifnull -347 -> 44
    //   394: aload_3
    //   395: invokevirtual 414	java/io/InputStream:close	()V
    //   398: aload 4
    //   400: areturn
    //   401: astore 12
    //   403: aload 4
    //   405: areturn
    //   406: astore 7
    //   408: aconst_null
    //   409: astore 8
    //   411: aload 7
    //   413: astore 9
    //   415: aload 9
    //   417: invokevirtual 176	java/io/IOException:printStackTrace	()V
    //   420: aload 8
    //   422: ifnull -100 -> 322
    //   425: aload 8
    //   427: invokevirtual 414	java/io/InputStream:close	()V
    //   430: goto -108 -> 322
    //   433: astore 10
    //   435: goto -113 -> 322
    //   438: astore 5
    //   440: aload_3
    //   441: ifnull +7 -> 448
    //   444: aload_3
    //   445: invokevirtual 414	java/io/InputStream:close	()V
    //   448: aload 5
    //   450: athrow
    //   451: astore 25
    //   453: goto -131 -> 322
    //   456: astore 6
    //   458: goto -10 -> 448
    //   461: astore 5
    //   463: aload 8
    //   465: astore_3
    //   466: goto -26 -> 440
    //   469: astore 14
    //   471: aload_3
    //   472: astore 8
    //   474: aload 14
    //   476: astore 9
    //   478: goto -63 -> 415
    //   481: astore 24
    //   483: aload 23
    //   485: astore 4
    //   487: aload_3
    //   488: astore 8
    //   490: aload 24
    //   492: astore 9
    //   494: goto -79 -> 415
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	497	0	paramContext	Context
    //   0	497	1	paramUri	Uri
    //   0	497	2	paramInt	int
    //   1	487	3	localObject1	Object
    //   38	448	4	localObject2	Object
    //   438	11	5	localObject3	Object
    //   461	1	5	localObject4	Object
    //   456	1	6	localIOException1	IOException
    //   406	6	7	localIOException2	IOException
    //   409	80	8	localObject5	Object
    //   413	80	9	localObject6	Object
    //   433	1	10	localIOException3	IOException
    //   383	1	11	localFileNotFoundException	java.io.FileNotFoundException
    //   401	1	12	localIOException4	IOException
    //   55	3	13	localInputStream	java.io.InputStream
    //   469	6	14	localIOException5	IOException
    //   64	32	15	i	int
    //   105	13	16	localOptions	BitmapFactory.Options
    //   122	179	17	localBitmap	Bitmap
    //   131	220	18	localByteArrayOutputStream	java.io.ByteArrayOutputStream
    //   198	158	20	j	int
    //   294	3	22	arrayOfByte1	byte[]
    //   298	186	23	arrayOfByte2	byte[]
    //   481	10	24	localIOException6	IOException
    //   451	1	25	localIOException7	IOException
    // Exception table:
    //   from	to	target	type
    //   47	57	383	java/io/FileNotFoundException
    //   60	92	383	java/io/FileNotFoundException
    //   98	224	383	java/io/FileNotFoundException
    //   229	289	383	java/io/FileNotFoundException
    //   289	296	383	java/io/FileNotFoundException
    //   300	310	383	java/io/FileNotFoundException
    //   350	355	383	java/io/FileNotFoundException
    //   361	369	383	java/io/FileNotFoundException
    //   369	376	383	java/io/FileNotFoundException
    //   394	398	401	java/io/IOException
    //   47	57	406	java/io/IOException
    //   425	430	433	java/io/IOException
    //   47	57	438	finally
    //   60	92	438	finally
    //   98	224	438	finally
    //   229	289	438	finally
    //   289	296	438	finally
    //   300	310	438	finally
    //   350	355	438	finally
    //   361	369	438	finally
    //   369	376	438	finally
    //   385	390	438	finally
    //   318	322	451	java/io/IOException
    //   444	448	456	java/io/IOException
    //   415	420	461	finally
    //   60	92	469	java/io/IOException
    //   98	224	469	java/io/IOException
    //   229	289	469	java/io/IOException
    //   289	296	469	java/io/IOException
    //   350	355	469	java/io/IOException
    //   361	369	469	java/io/IOException
    //   300	310	481	java/io/IOException
    //   369	376	481	java/io/IOException
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.extras.image.m
 * JD-Core Version:    0.7.0.1
 */