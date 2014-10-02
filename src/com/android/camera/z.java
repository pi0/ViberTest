package com.android.camera;

import android.app.ProgressDialog;
import android.content.ContentResolver;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapFactory.Options;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.net.Uri;
import android.os.Handler;
import android.os.ParcelFileDescriptor;
import android.util.Log;
import java.io.Closeable;
import java.io.FileDescriptor;
import java.io.IOException;

public class z
{
  public static int a(BitmapFactory.Options paramOptions, int paramInt1, int paramInt2)
  {
    int i = b(paramOptions, paramInt1, paramInt2);
    if (i <= 8)
    {
      j = 1;
      while (j < i) {
        j <<= 1;
      }
    }
    int j = 8 * ((i + 7) / 8);
    return j;
  }
  
  public static Bitmap a(int paramInt1, int paramInt2, Uri paramUri, ContentResolver paramContentResolver, ParcelFileDescriptor paramParcelFileDescriptor, BitmapFactory.Options paramOptions)
  {
    if (paramParcelFileDescriptor == null) {}
    try
    {
      ParcelFileDescriptor localParcelFileDescriptor = a(paramUri, paramContentResolver);
      paramParcelFileDescriptor = localParcelFileDescriptor;
      if (paramParcelFileDescriptor == null) {
        return null;
      }
      if (paramOptions == null) {
        paramOptions = new BitmapFactory.Options();
      }
      FileDescriptor localFileDescriptor = paramParcelFileDescriptor.getFileDescriptor();
      paramOptions.inJustDecodeBounds = true;
      a.a().a(localFileDescriptor, paramOptions);
      if ((!paramOptions.mCancel) && (paramOptions.outWidth != -1))
      {
        int i = paramOptions.outHeight;
        if (i != -1) {}
      }
      else
      {
        return null;
      }
      paramOptions.inSampleSize = a(paramOptions, paramInt1, paramInt2);
      paramOptions.inJustDecodeBounds = false;
      paramOptions.inDither = false;
      paramOptions.inPreferredConfig = Bitmap.Config.ARGB_8888;
      Bitmap localBitmap = a.a().a(localFileDescriptor, paramOptions);
      return localBitmap;
    }
    catch (OutOfMemoryError localOutOfMemoryError)
    {
      Log.e("Util", "Got oom exception ", localOutOfMemoryError);
      return null;
    }
    finally
    {
      a(paramParcelFileDescriptor);
    }
  }
  
  /* Error */
  public static Bitmap a(int paramInt1, int paramInt2, Uri paramUri, ContentResolver paramContentResolver, boolean paramBoolean)
  {
    // Byte code:
    //   0: aload_3
    //   1: aload_2
    //   2: ldc 84
    //   4: invokevirtual 90	android/content/ContentResolver:openFileDescriptor	(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    //   7: astore 8
    //   9: aload 8
    //   11: astore 6
    //   13: iload 4
    //   15: ifeq +64 -> 79
    //   18: invokestatic 93	com/android/camera/z:a	()Landroid/graphics/BitmapFactory$Options;
    //   21: astore 9
    //   23: iload_0
    //   24: iload_1
    //   25: aload_2
    //   26: aload_3
    //   27: aload 6
    //   29: aload 9
    //   31: invokestatic 95	com/android/camera/z:a	(IILandroid/net/Uri;Landroid/content/ContentResolver;Landroid/os/ParcelFileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    //   34: astore 11
    //   36: aload 6
    //   38: invokestatic 18	com/android/camera/z:a	(Landroid/os/ParcelFileDescriptor;)V
    //   41: aload 11
    //   43: areturn
    //   44: astore 7
    //   46: aconst_null
    //   47: astore 6
    //   49: aload 6
    //   51: invokestatic 18	com/android/camera/z:a	(Landroid/os/ParcelFileDescriptor;)V
    //   54: aconst_null
    //   55: areturn
    //   56: astore 5
    //   58: aconst_null
    //   59: astore 6
    //   61: aload 6
    //   63: invokestatic 18	com/android/camera/z:a	(Landroid/os/ParcelFileDescriptor;)V
    //   66: aload 5
    //   68: athrow
    //   69: astore 5
    //   71: goto -10 -> 61
    //   74: astore 10
    //   76: goto -27 -> 49
    //   79: aconst_null
    //   80: astore 9
    //   82: goto -59 -> 23
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	85	0	paramInt1	int
    //   0	85	1	paramInt2	int
    //   0	85	2	paramUri	Uri
    //   0	85	3	paramContentResolver	ContentResolver
    //   0	85	4	paramBoolean	boolean
    //   56	11	5	localObject1	Object
    //   69	1	5	localObject2	Object
    //   11	51	6	localParcelFileDescriptor1	ParcelFileDescriptor
    //   44	1	7	localIOException1	IOException
    //   7	3	8	localParcelFileDescriptor2	ParcelFileDescriptor
    //   21	60	9	localOptions	BitmapFactory.Options
    //   74	1	10	localIOException2	IOException
    //   34	8	11	localBitmap	Bitmap
    // Exception table:
    //   from	to	target	type
    //   0	9	44	java/io/IOException
    //   0	9	56	finally
    //   18	23	69	finally
    //   23	36	69	finally
    //   18	23	74	java/io/IOException
    //   23	36	74	java/io/IOException
  }
  
  public static Bitmap a(int paramInt1, int paramInt2, ParcelFileDescriptor paramParcelFileDescriptor, boolean paramBoolean)
  {
    if (paramBoolean) {}
    for (BitmapFactory.Options localOptions = a();; localOptions = null) {
      return a(paramInt1, paramInt2, null, null, paramParcelFileDescriptor, localOptions);
    }
  }
  
  public static Bitmap a(Bitmap paramBitmap, int paramInt)
  {
    Matrix localMatrix;
    if ((paramInt != 0) && (paramBitmap != null))
    {
      localMatrix = new Matrix();
      localMatrix.setRotate(paramInt, paramBitmap.getWidth() / 2.0F, paramBitmap.getHeight() / 2.0F);
    }
    try
    {
      int i = paramBitmap.getWidth();
      int j = paramBitmap.getHeight();
      Bitmap localBitmap = Bitmap.createBitmap(paramBitmap, 0, 0, i, j, localMatrix, true);
      if (paramBitmap != localBitmap)
      {
        paramBitmap.recycle();
        paramBitmap = localBitmap;
      }
      return paramBitmap;
    }
    catch (OutOfMemoryError localOutOfMemoryError) {}
    return paramBitmap;
  }
  
  public static Bitmap a(Matrix paramMatrix, Bitmap paramBitmap, int paramInt1, int paramInt2, boolean paramBoolean1, boolean paramBoolean2)
  {
    int i = paramBitmap.getWidth() - paramInt1;
    int j = paramBitmap.getHeight() - paramInt2;
    Bitmap localBitmap2;
    if ((!paramBoolean1) && ((i < 0) || (j < 0)))
    {
      Bitmap localBitmap3 = Bitmap.createBitmap(paramInt1, paramInt2, Bitmap.Config.ARGB_8888);
      Canvas localCanvas = new Canvas(localBitmap3);
      int n = Math.max(0, i / 2);
      int i1 = Math.max(0, j / 2);
      Rect localRect = new Rect(n, i1, n + Math.min(paramInt1, paramBitmap.getWidth()), i1 + Math.min(paramInt2, paramBitmap.getHeight()));
      int i2 = (paramInt1 - localRect.width()) / 2;
      int i3 = (paramInt2 - localRect.height()) / 2;
      localCanvas.drawBitmap(paramBitmap, localRect, new Rect(i2, i3, paramInt1 - i2, paramInt2 - i3), null);
      if (paramBoolean2) {
        paramBitmap.recycle();
      }
      localBitmap2 = localBitmap3;
      return localBitmap2;
    }
    float f1 = paramBitmap.getWidth();
    float f2 = paramBitmap.getHeight();
    label231:
    Matrix localMatrix;
    if (f1 / f2 > paramInt1 / paramInt2)
    {
      float f4 = paramInt2 / f2;
      if ((f4 < 0.9F) || (f4 > 1.0F))
      {
        paramMatrix.setScale(f4, f4);
        localMatrix = paramMatrix;
        label234:
        if (localMatrix == null) {
          break label389;
        }
      }
    }
    label389:
    for (Bitmap localBitmap1 = Bitmap.createBitmap(paramBitmap, 0, 0, paramBitmap.getWidth(), paramBitmap.getHeight(), localMatrix, true);; localBitmap1 = paramBitmap)
    {
      if ((paramBoolean2) && (localBitmap1 != paramBitmap)) {
        paramBitmap.recycle();
      }
      int k = Math.max(0, localBitmap1.getWidth() - paramInt1);
      int m = Math.max(0, localBitmap1.getHeight() - paramInt2);
      localBitmap2 = Bitmap.createBitmap(localBitmap1, k / 2, m / 2, paramInt1, paramInt2);
      if ((localBitmap2 == localBitmap1) || ((!paramBoolean2) && (localBitmap1 == paramBitmap))) {
        break;
      }
      localBitmap1.recycle();
      return localBitmap2;
      paramMatrix = null;
      break label231;
      float f3 = paramInt1 / f1;
      if ((f3 < 0.9F) || (f3 > 1.0F))
      {
        paramMatrix.setScale(f3, f3);
        localMatrix = paramMatrix;
        break label234;
      }
      localMatrix = null;
      break label234;
    }
  }
  
  public static BitmapFactory.Options a()
  {
    return new BitmapFactory.Options();
  }
  
  private static ParcelFileDescriptor a(Uri paramUri, ContentResolver paramContentResolver)
  {
    try
    {
      ParcelFileDescriptor localParcelFileDescriptor = paramContentResolver.openFileDescriptor(paramUri, "r");
      return localParcelFileDescriptor;
    }
    catch (IOException localIOException) {}
    return null;
  }
  
  public static void a(ParcelFileDescriptor paramParcelFileDescriptor)
  {
    if (paramParcelFileDescriptor == null) {
      return;
    }
    try
    {
      paramParcelFileDescriptor.close();
      return;
    }
    catch (Throwable localThrowable) {}
  }
  
  public static void a(MonitoredActivity paramMonitoredActivity, String paramString1, String paramString2, Runnable paramRunnable, Handler paramHandler)
  {
    new Thread(new aa(paramMonitoredActivity, paramRunnable, ProgressDialog.show(paramMonitoredActivity, paramString1, paramString2, true, false), paramHandler)).start();
  }
  
  public static void a(Closeable paramCloseable)
  {
    if (paramCloseable == null) {
      return;
    }
    try
    {
      paramCloseable.close();
      return;
    }
    catch (Throwable localThrowable) {}
  }
  
  public static boolean a(String paramString1, String paramString2)
  {
    return (paramString1 == paramString2) || (paramString1.equals(paramString2));
  }
  
  private static int b(BitmapFactory.Options paramOptions, int paramInt1, int paramInt2)
  {
    double d1 = paramOptions.outWidth;
    double d2 = paramOptions.outHeight;
    int i;
    int j;
    if (paramInt2 == -1)
    {
      i = 1;
      if (paramInt1 != -1) {
        break label60;
      }
      j = 128;
      label31:
      if (j >= i) {
        break label84;
      }
    }
    label60:
    label84:
    do
    {
      return i;
      i = (int)Math.ceil(Math.sqrt(d1 * d2 / paramInt2));
      break;
      j = (int)Math.min(Math.floor(d1 / paramInt1), Math.floor(d2 / paramInt1));
      break label31;
      if ((paramInt2 == -1) && (paramInt1 == -1)) {
        return 1;
      }
    } while (paramInt1 == -1);
    return j;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.android.camera.z
 * JD-Core Version:    0.7.0.1
 */