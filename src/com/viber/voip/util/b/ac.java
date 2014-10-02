package com.viber.voip.util.b;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.os.Build.VERSION;
import com.viber.voip.util.gl;
import java.io.FileDescriptor;
import java.lang.reflect.Field;

public abstract class ac
  extends ad
{
  public ac(Context paramContext)
  {
    super(paramContext);
  }
  
  public static int a(BitmapFactory.Options paramOptions, int paramInt1, int paramInt2)
  {
    int i = paramOptions.outHeight;
    int j = paramOptions.outWidth;
    int k = 1;
    if (((paramInt2 > 0) && (i > paramInt2)) || ((paramInt1 > 0) && (j > paramInt1)))
    {
      int m = i / 2;
      int n = j / 2;
      while ((m / k > paramInt2) && (n / k > paramInt1)) {
        k *= 2;
      }
    }
    return k;
  }
  
  /* Error */
  static Bitmap a(android.net.Uri paramUri, x paramx, s params, Context paramContext)
  {
    // Byte code:
    //   0: aload_1
    //   1: aload_3
    //   2: invokevirtual 26	com/viber/voip/util/b/x:e	(Landroid/content/Context;)I
    //   5: istore 4
    //   7: aload_1
    //   8: aload_3
    //   9: invokevirtual 29	com/viber/voip/util/b/x:f	(Landroid/content/Context;)I
    //   12: istore 5
    //   14: new 12	android/graphics/BitmapFactory$Options
    //   17: dup
    //   18: invokespecial 32	android/graphics/BitmapFactory$Options:<init>	()V
    //   21: astore 6
    //   23: aload 6
    //   25: iconst_1
    //   26: putfield 36	android/graphics/BitmapFactory$Options:inJustDecodeBounds	Z
    //   29: aload_3
    //   30: aload_0
    //   31: aload_1
    //   32: getfield 39	com/viber/voip/util/b/x:c	Z
    //   35: invokestatic 45	com/viber/voip/util/b/w:b	(Landroid/content/Context;Landroid/net/Uri;Z)Ljava/io/InputStream;
    //   38: astore 7
    //   40: aload 7
    //   42: ifnull +15 -> 57
    //   45: aload 7
    //   47: invokevirtual 51	java/io/InputStream:available	()I
    //   50: istore 9
    //   52: iload 9
    //   54: ifgt +17 -> 71
    //   57: iconst_1
    //   58: anewarray 53	java/io/Closeable
    //   61: dup
    //   62: iconst_0
    //   63: aload 7
    //   65: aastore
    //   66: invokestatic 58	com/viber/voip/util/bu:a	([Ljava/io/Closeable;)V
    //   69: aconst_null
    //   70: areturn
    //   71: aload 7
    //   73: aconst_null
    //   74: aload 6
    //   76: invokestatic 64	android/graphics/BitmapFactory:decodeStream	(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    //   79: pop
    //   80: iconst_1
    //   81: anewarray 53	java/io/Closeable
    //   84: dup
    //   85: iconst_0
    //   86: aload 7
    //   88: aastore
    //   89: invokestatic 58	com/viber/voip/util/bu:a	([Ljava/io/Closeable;)V
    //   92: aload 6
    //   94: aload 6
    //   96: iload 4
    //   98: iload 5
    //   100: invokestatic 66	com/viber/voip/util/b/ac:a	(Landroid/graphics/BitmapFactory$Options;II)I
    //   103: putfield 69	android/graphics/BitmapFactory$Options:inSampleSize	I
    //   106: aload 6
    //   108: iconst_0
    //   109: putfield 36	android/graphics/BitmapFactory$Options:inJustDecodeBounds	Z
    //   112: invokestatic 74	com/viber/voip/util/gl:b	()Z
    //   115: ifeq +9 -> 124
    //   118: aload 6
    //   120: aload_2
    //   121: invokestatic 77	com/viber/voip/util/b/ac:a	(Landroid/graphics/BitmapFactory$Options;Lcom/viber/voip/util/b/s;)V
    //   124: getstatic 82	android/os/Build$VERSION:SDK_INT	I
    //   127: bipush 11
    //   129: if_icmpge +8 -> 137
    //   132: aload 6
    //   134: invokestatic 85	com/viber/voip/util/b/ac:a	(Landroid/graphics/BitmapFactory$Options;)V
    //   137: aload_3
    //   138: aload_0
    //   139: aload_1
    //   140: getfield 39	com/viber/voip/util/b/x:c	Z
    //   143: invokestatic 45	com/viber/voip/util/b/w:b	(Landroid/content/Context;Landroid/net/Uri;Z)Ljava/io/InputStream;
    //   146: astore 11
    //   148: aload 11
    //   150: ifnull +15 -> 165
    //   153: aload 11
    //   155: invokevirtual 51	java/io/InputStream:available	()I
    //   158: istore 13
    //   160: iload 13
    //   162: ifgt +34 -> 196
    //   165: iconst_1
    //   166: anewarray 53	java/io/Closeable
    //   169: dup
    //   170: iconst_0
    //   171: aload 11
    //   173: aastore
    //   174: invokestatic 58	com/viber/voip/util/bu:a	([Ljava/io/Closeable;)V
    //   177: aconst_null
    //   178: areturn
    //   179: astore 8
    //   181: iconst_1
    //   182: anewarray 53	java/io/Closeable
    //   185: dup
    //   186: iconst_0
    //   187: aload 7
    //   189: aastore
    //   190: invokestatic 58	com/viber/voip/util/bu:a	([Ljava/io/Closeable;)V
    //   193: aload 8
    //   195: athrow
    //   196: aload 11
    //   198: aconst_null
    //   199: aload 6
    //   201: invokestatic 64	android/graphics/BitmapFactory:decodeStream	(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    //   204: astore 14
    //   206: iconst_1
    //   207: anewarray 53	java/io/Closeable
    //   210: dup
    //   211: iconst_0
    //   212: aload 11
    //   214: aastore
    //   215: invokestatic 58	com/viber/voip/util/bu:a	([Ljava/io/Closeable;)V
    //   218: aload 14
    //   220: areturn
    //   221: astore 12
    //   223: iconst_1
    //   224: anewarray 53	java/io/Closeable
    //   227: dup
    //   228: iconst_0
    //   229: aload 11
    //   231: aastore
    //   232: invokestatic 58	com/viber/voip/util/bu:a	([Ljava/io/Closeable;)V
    //   235: aload 12
    //   237: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	238	0	paramUri	android.net.Uri
    //   0	238	1	paramx	x
    //   0	238	2	params	s
    //   0	238	3	paramContext	Context
    //   5	92	4	i	int
    //   12	87	5	j	int
    //   21	179	6	localOptions	BitmapFactory.Options
    //   38	150	7	localInputStream1	java.io.InputStream
    //   179	15	8	localObject1	java.lang.Object
    //   50	3	9	k	int
    //   146	84	11	localInputStream2	java.io.InputStream
    //   221	15	12	localObject2	java.lang.Object
    //   158	3	13	m	int
    //   204	15	14	localBitmap	Bitmap
    // Exception table:
    //   from	to	target	type
    //   45	52	179	finally
    //   71	80	179	finally
    //   153	160	221	finally
    //   196	206	221	finally
  }
  
  public static Bitmap a(FileDescriptor paramFileDescriptor, int paramInt1, int paramInt2, s params)
  {
    BitmapFactory.Options localOptions = new BitmapFactory.Options();
    localOptions.inJustDecodeBounds = true;
    BitmapFactory.decodeFileDescriptor(paramFileDescriptor, null, localOptions);
    localOptions.inSampleSize = a(localOptions, paramInt1, paramInt2);
    localOptions.inJustDecodeBounds = false;
    if (gl.b()) {
      a(localOptions, params);
    }
    if (Build.VERSION.SDK_INT < 11) {
      a(localOptions);
    }
    return BitmapFactory.decodeFileDescriptor(paramFileDescriptor, null, localOptions);
  }
  
  private static void a(BitmapFactory.Options paramOptions)
  {
    try
    {
      BitmapFactory.Options.class.getField("inNativeAlloc").setBoolean(paramOptions, true);
      return;
    }
    catch (NoSuchFieldException localNoSuchFieldException) {}catch (IllegalAccessException localIllegalAccessException) {}catch (SecurityException localSecurityException) {}catch (IllegalArgumentException localIllegalArgumentException) {}
  }
  
  @TargetApi(11)
  private static void a(BitmapFactory.Options paramOptions, s params)
  {
    paramOptions.inMutable = true;
    if (params != null)
    {
      Bitmap localBitmap = params.a(paramOptions);
      if (localBitmap != null) {
        paramOptions.inBitmap = localBitmap;
      }
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.util.b.ac
 * JD-Core Version:    0.7.0.1
 */