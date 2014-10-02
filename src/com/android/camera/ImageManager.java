package com.android.camera;

import android.content.ContentResolver;
import android.media.ExifInterface;
import android.net.Uri;
import android.os.Environment;
import android.provider.MediaStore.Images.Media;
import android.provider.MediaStore.Images.Thumbnails;
import android.util.Log;
import com.android.camera.a.b;
import com.android.camera.a.d;
import com.android.camera.a.f;
import com.android.camera.a.g;
import com.android.camera.a.o;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;

public class ImageManager
{
  public static final String a = Environment.getExternalStorageDirectory().toString() + "/DCIM/Camera";
  public static final String b = a(a);
  private static final Uri c = MediaStore.Images.Media.EXTERNAL_CONTENT_URI;
  private static final Uri d = MediaStore.Images.Thumbnails.EXTERNAL_CONTENT_URI;
  private static final Uri e = Uri.parse("content://media/external/video/media");
  
  /* Error */
  public static Uri a(ContentResolver paramContentResolver, String paramString1, long paramLong, android.location.Location paramLocation, String paramString2, String paramString3, android.graphics.Bitmap paramBitmap, byte[] paramArrayOfByte, int[] paramArrayOfInt)
  {
    // Byte code:
    //   0: new 37	java/lang/StringBuilder
    //   3: dup
    //   4: invokespecial 40	java/lang/StringBuilder:<init>	()V
    //   7: aload 5
    //   9: invokevirtual 56	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   12: ldc 73
    //   14: invokevirtual 56	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   17: aload 6
    //   19: invokevirtual 56	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   22: invokevirtual 59	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   25: astore 10
    //   27: new 48	java/io/File
    //   30: dup
    //   31: aload 5
    //   33: invokespecial 76	java/io/File:<init>	(Ljava/lang/String;)V
    //   36: astore 11
    //   38: aload 11
    //   40: invokevirtual 80	java/io/File:exists	()Z
    //   43: ifne +9 -> 52
    //   46: aload 11
    //   48: invokevirtual 83	java/io/File:mkdirs	()Z
    //   51: pop
    //   52: new 85	java/io/FileOutputStream
    //   55: dup
    //   56: new 48	java/io/File
    //   59: dup
    //   60: aload 5
    //   62: aload 6
    //   64: invokespecial 88	java/io/File:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   67: invokespecial 91	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   70: astore 13
    //   72: aload 7
    //   74: ifnull +142 -> 216
    //   77: aload 7
    //   79: getstatic 97	android/graphics/Bitmap$CompressFormat:JPEG	Landroid/graphics/Bitmap$CompressFormat;
    //   82: bipush 75
    //   84: aload 13
    //   86: invokevirtual 103	android/graphics/Bitmap:compress	(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    //   89: pop
    //   90: aload 9
    //   92: iconst_0
    //   93: iconst_0
    //   94: iastore
    //   95: aload 13
    //   97: invokestatic 108	com/android/camera/z:a	(Ljava/io/Closeable;)V
    //   100: new 110	android/content/ContentValues
    //   103: dup
    //   104: bipush 7
    //   106: invokespecial 113	android/content/ContentValues:<init>	(I)V
    //   109: astore 19
    //   111: aload 19
    //   113: ldc 115
    //   115: aload_1
    //   116: invokevirtual 118	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   119: aload 19
    //   121: ldc 120
    //   123: aload 6
    //   125: invokevirtual 118	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   128: aload 19
    //   130: ldc 122
    //   132: lload_2
    //   133: invokestatic 128	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   136: invokevirtual 131	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Long;)V
    //   139: aload 19
    //   141: ldc 133
    //   143: ldc 135
    //   145: invokevirtual 118	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   148: aload 19
    //   150: ldc 137
    //   152: aload 9
    //   154: iconst_0
    //   155: iaload
    //   156: invokestatic 142	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   159: invokevirtual 145	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Integer;)V
    //   162: aload 19
    //   164: ldc 147
    //   166: aload 10
    //   168: invokevirtual 118	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   171: aload 4
    //   173: ifnull +33 -> 206
    //   176: aload 19
    //   178: ldc 149
    //   180: aload 4
    //   182: invokevirtual 155	android/location/Location:getLatitude	()D
    //   185: invokestatic 160	java/lang/Double:valueOf	(D)Ljava/lang/Double;
    //   188: invokevirtual 163	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Double;)V
    //   191: aload 19
    //   193: ldc 165
    //   195: aload 4
    //   197: invokevirtual 168	android/location/Location:getLongitude	()D
    //   200: invokestatic 160	java/lang/Double:valueOf	(D)Ljava/lang/Double;
    //   203: invokevirtual 163	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Double;)V
    //   206: aload_0
    //   207: getstatic 20	com/android/camera/ImageManager:c	Landroid/net/Uri;
    //   210: aload 19
    //   212: invokevirtual 174	android/content/ContentResolver:insert	(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    //   215: areturn
    //   216: aload 13
    //   218: aload 8
    //   220: invokevirtual 180	java/io/OutputStream:write	([B)V
    //   223: aload 9
    //   225: iconst_0
    //   226: aload 10
    //   228: invokestatic 183	com/android/camera/ImageManager:c	(Ljava/lang/String;)I
    //   231: iastore
    //   232: goto -137 -> 95
    //   235: astore 12
    //   237: ldc 185
    //   239: aload 12
    //   241: invokestatic 191	android/util/Log:w	(Ljava/lang/String;Ljava/lang/Throwable;)I
    //   244: pop
    //   245: aload 13
    //   247: invokestatic 108	com/android/camera/z:a	(Ljava/io/Closeable;)V
    //   250: aconst_null
    //   251: areturn
    //   252: astore 17
    //   254: aconst_null
    //   255: astore 13
    //   257: ldc 185
    //   259: aload 17
    //   261: invokestatic 191	android/util/Log:w	(Ljava/lang/String;Ljava/lang/Throwable;)I
    //   264: pop
    //   265: aload 13
    //   267: invokestatic 108	com/android/camera/z:a	(Ljava/io/Closeable;)V
    //   270: aconst_null
    //   271: areturn
    //   272: astore 16
    //   274: aconst_null
    //   275: astore 13
    //   277: aload 16
    //   279: astore 14
    //   281: aload 13
    //   283: invokestatic 108	com/android/camera/z:a	(Ljava/io/Closeable;)V
    //   286: aload 14
    //   288: athrow
    //   289: astore 14
    //   291: goto -10 -> 281
    //   294: astore 17
    //   296: goto -39 -> 257
    //   299: astore 12
    //   301: aconst_null
    //   302: astore 13
    //   304: goto -67 -> 237
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	307	0	paramContentResolver	ContentResolver
    //   0	307	1	paramString1	String
    //   0	307	2	paramLong	long
    //   0	307	4	paramLocation	android.location.Location
    //   0	307	5	paramString2	String
    //   0	307	6	paramString3	String
    //   0	307	7	paramBitmap	android.graphics.Bitmap
    //   0	307	8	paramArrayOfByte	byte[]
    //   0	307	9	paramArrayOfInt	int[]
    //   25	202	10	str	String
    //   36	11	11	localFile	File
    //   235	5	12	localFileNotFoundException1	java.io.FileNotFoundException
    //   299	1	12	localFileNotFoundException2	java.io.FileNotFoundException
    //   70	233	13	localFileOutputStream	java.io.FileOutputStream
    //   279	8	14	localObject1	Object
    //   289	1	14	localObject2	Object
    //   272	6	16	localObject3	Object
    //   252	8	17	localIOException1	IOException
    //   294	1	17	localIOException2	IOException
    //   109	102	19	localContentValues	android.content.ContentValues
    // Exception table:
    //   from	to	target	type
    //   77	95	235	java/io/FileNotFoundException
    //   216	232	235	java/io/FileNotFoundException
    //   27	52	252	java/io/IOException
    //   52	72	252	java/io/IOException
    //   27	52	272	finally
    //   52	72	272	finally
    //   77	95	289	finally
    //   216	232	289	finally
    //   237	245	289	finally
    //   257	265	289	finally
    //   77	95	294	java/io/IOException
    //   216	232	294	java/io/IOException
    //   27	52	299	java/io/FileNotFoundException
    //   52	72	299	java/io/FileNotFoundException
  }
  
  public static ImageManager.ImageListParam a(Uri paramUri)
  {
    ImageManager.ImageListParam localImageListParam = new ImageManager.ImageListParam();
    localImageListParam.e = paramUri;
    return localImageListParam;
  }
  
  public static ImageManager.ImageListParam a(p paramp, int paramInt1, int paramInt2, String paramString)
  {
    ImageManager.ImageListParam localImageListParam = new ImageManager.ImageListParam();
    localImageListParam.a = paramp;
    localImageListParam.b = paramInt1;
    localImageListParam.c = paramInt2;
    localImageListParam.d = paramString;
    return localImageListParam;
  }
  
  public static d a(ContentResolver paramContentResolver, Uri paramUri)
  {
    return a(paramContentResolver, a(paramUri));
  }
  
  public static d a(ContentResolver paramContentResolver, Uri paramUri, int paramInt)
  {
    if (paramUri != null) {}
    for (String str1 = paramUri.toString(); str1.startsWith("content://drm"); str1 = "") {
      return a(paramContentResolver, p.d, 2, paramInt, null);
    }
    if (str1.startsWith("content://media/external/video")) {
      return a(paramContentResolver, p.c, 4, paramInt, null);
    }
    if (d(str1)) {
      return a(paramContentResolver, paramUri);
    }
    String str2 = paramUri.getQueryParameter("bucketId");
    return a(paramContentResolver, p.d, 1, paramInt, str2);
  }
  
  public static d a(ContentResolver paramContentResolver, ImageManager.ImageListParam paramImageListParam)
  {
    p localp = paramImageListParam.a;
    int i = paramImageListParam.b;
    int j = paramImageListParam.c;
    String str = paramImageListParam.d;
    Uri localUri = paramImageListParam.e;
    if ((paramImageListParam.f) || (paramContentResolver == null)) {
      return new q(null);
    }
    if (localUri != null) {
      return new o(paramContentResolver, localUri);
    }
    boolean bool = a(false);
    ArrayList localArrayList = new ArrayList();
    if ((bool) && (localp != p.b) && ((i & 0x1) != 0)) {
      localArrayList.add(new f(paramContentResolver, c, j, str));
    }
    if (((localp == p.b) || (localp == p.d)) && ((i & 0x1) != 0)) {
      localArrayList.add(new f(paramContentResolver, MediaStore.Images.Media.INTERNAL_CONTENT_URI, j, str));
    }
    Iterator localIterator = localArrayList.iterator();
    while (localIterator.hasNext())
    {
      b localb = (b)localIterator.next();
      if (localb.c())
      {
        localb.a();
        localIterator.remove();
      }
    }
    if (localArrayList.size() == 1) {
      return (b)localArrayList.get(0);
    }
    return new g((d[])localArrayList.toArray(new d[localArrayList.size()]), j);
  }
  
  public static d a(ContentResolver paramContentResolver, p paramp, int paramInt1, int paramInt2, String paramString)
  {
    return a(paramContentResolver, a(paramp, paramInt1, paramInt2, paramString));
  }
  
  public static String a(String paramString)
  {
    return String.valueOf(paramString.toLowerCase().hashCode());
  }
  
  private static boolean a()
  {
    String str = Environment.getExternalStorageDirectory().toString() + "/DCIM";
    File localFile1 = new File(str);
    if ((!localFile1.isDirectory()) && (!localFile1.mkdirs())) {}
    for (;;)
    {
      return false;
      File localFile2 = new File(str, ".probe");
      try
      {
        if (localFile2.exists()) {
          localFile2.delete();
        }
        if (localFile2.createNewFile())
        {
          localFile2.delete();
          return true;
        }
      }
      catch (IOException localIOException) {}
    }
    return false;
  }
  
  public static boolean a(boolean paramBoolean)
  {
    boolean bool = true;
    String str = Environment.getExternalStorageState();
    if ("mounted".equals(str)) {
      if (paramBoolean) {
        bool = a();
      }
    }
    while ((!paramBoolean) && ("mounted_ro".equals(str))) {
      return bool;
    }
    return false;
  }
  
  public static boolean b(String paramString)
  {
    return paramString.startsWith("image/");
  }
  
  public static int c(String paramString)
  {
    try
    {
      localExifInterface = new ExifInterface(paramString);
      int i;
      if (localExifInterface != null)
      {
        i = localExifInterface.getAttributeInt("Orientation", -1);
        if (i == -1) {}
      }
      switch (i)
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
        Log.e("ImageManager", "cannot read exif", localIOException);
        ExifInterface localExifInterface = null;
      }
      return 90;
    }
    return 180;
    return 270;
  }
  
  static boolean d(String paramString)
  {
    return (!paramString.startsWith(MediaStore.Images.Media.EXTERNAL_CONTENT_URI.toString())) && (!paramString.startsWith(MediaStore.Images.Media.INTERNAL_CONTENT_URI.toString()));
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.android.camera.ImageManager
 * JD-Core Version:    0.7.0.1
 */