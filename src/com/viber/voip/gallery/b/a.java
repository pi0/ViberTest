package com.viber.voip.gallery.b;

import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.net.Uri;
import android.net.Uri.Builder;
import com.viber.voip.messages.extras.image.h;
import com.viber.voip.messages.extras.image.l;
import com.viber.voip.util.gj;
import com.viber.voip.util.upload.n;
import com.viber.voip.w;
import java.io.File;

public final class a
{
  public static Uri a(Bitmap paramBitmap, Uri paramUri)
  {
    if ((h.a()) && (h.c()) && (paramUri != null)) {
      return a(paramBitmap, e(paramUri), Bitmap.CompressFormat.JPEG);
    }
    return null;
  }
  
  /* Error */
  private static Uri a(Bitmap paramBitmap, File paramFile, Bitmap.CompressFormat paramCompressFormat)
  {
    // Byte code:
    //   0: aload_1
    //   1: ifnull +7 -> 8
    //   4: aload_0
    //   5: ifnonnull +5 -> 10
    //   8: aconst_null
    //   9: areturn
    //   10: aload_1
    //   11: invokevirtual 34	java/io/File:exists	()Z
    //   14: ifne +8 -> 22
    //   17: aload_1
    //   18: invokevirtual 37	java/io/File:createNewFile	()Z
    //   21: pop
    //   22: new 39	java/io/FileOutputStream
    //   25: dup
    //   26: aload_1
    //   27: invokespecial 43	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   30: astore 4
    //   32: aload_0
    //   33: aload_2
    //   34: bipush 80
    //   36: aload 4
    //   38: invokevirtual 49	android/graphics/Bitmap:compress	(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    //   41: pop
    //   42: aload_1
    //   43: invokestatic 55	android/net/Uri:fromFile	(Ljava/io/File;)Landroid/net/Uri;
    //   46: astore 9
    //   48: iconst_1
    //   49: anewarray 57	java/io/Flushable
    //   52: dup
    //   53: iconst_0
    //   54: aload 4
    //   56: aastore
    //   57: invokestatic 62	com/viber/voip/util/bu:a	([Ljava/io/Flushable;)V
    //   60: iconst_1
    //   61: anewarray 64	java/io/Closeable
    //   64: dup
    //   65: iconst_0
    //   66: aload 4
    //   68: aastore
    //   69: invokestatic 67	com/viber/voip/util/bu:a	([Ljava/io/Closeable;)V
    //   72: aload 9
    //   74: areturn
    //   75: astore 6
    //   77: aconst_null
    //   78: astore 4
    //   80: iconst_1
    //   81: anewarray 57	java/io/Flushable
    //   84: dup
    //   85: iconst_0
    //   86: aload 4
    //   88: aastore
    //   89: invokestatic 62	com/viber/voip/util/bu:a	([Ljava/io/Flushable;)V
    //   92: iconst_1
    //   93: anewarray 64	java/io/Closeable
    //   96: dup
    //   97: iconst_0
    //   98: aload 4
    //   100: aastore
    //   101: invokestatic 67	com/viber/voip/util/bu:a	([Ljava/io/Closeable;)V
    //   104: aconst_null
    //   105: areturn
    //   106: astore_3
    //   107: aconst_null
    //   108: astore 4
    //   110: aload_3
    //   111: astore 5
    //   113: iconst_1
    //   114: anewarray 57	java/io/Flushable
    //   117: dup
    //   118: iconst_0
    //   119: aload 4
    //   121: aastore
    //   122: invokestatic 62	com/viber/voip/util/bu:a	([Ljava/io/Flushable;)V
    //   125: iconst_1
    //   126: anewarray 64	java/io/Closeable
    //   129: dup
    //   130: iconst_0
    //   131: aload 4
    //   133: aastore
    //   134: invokestatic 67	com/viber/voip/util/bu:a	([Ljava/io/Closeable;)V
    //   137: aload 5
    //   139: athrow
    //   140: astore 5
    //   142: goto -29 -> 113
    //   145: astore 7
    //   147: goto -67 -> 80
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	150	0	paramBitmap	Bitmap
    //   0	150	1	paramFile	File
    //   0	150	2	paramCompressFormat	Bitmap.CompressFormat
    //   106	5	3	localObject1	Object
    //   30	102	4	localFileOutputStream	java.io.FileOutputStream
    //   111	27	5	localObject2	Object
    //   140	1	5	localObject3	Object
    //   75	1	6	localIOException1	java.io.IOException
    //   145	1	7	localIOException2	java.io.IOException
    //   46	27	9	localUri	Uri
    // Exception table:
    //   from	to	target	type
    //   10	22	75	java/io/IOException
    //   22	32	75	java/io/IOException
    //   10	22	106	finally
    //   22	32	106	finally
    //   32	48	140	finally
    //   32	48	145	java/io/IOException
  }
  
  private static File a(String paramString)
  {
    File localFile = new File(w.z);
    if (!localFile.exists()) {
      localFile.mkdirs();
    }
    return new File(localFile, paramString);
  }
  
  public static boolean a(Uri paramUri)
  {
    return (paramUri != null) && (h.a()) && (f(paramUri).exists());
  }
  
  public static Uri b(Bitmap paramBitmap, Uri paramUri)
  {
    if ((h.a()) && (h.c()) && (paramUri != null)) {
      return a(paramBitmap, f(paramUri), Bitmap.CompressFormat.PNG);
    }
    return null;
  }
  
  public static Uri b(Uri paramUri)
  {
    if (paramUri == null) {
      return null;
    }
    return Uri.fromFile(f(paramUri)).buildUpon().scheme("file").build();
  }
  
  public static void c(Uri paramUri)
  {
    if ((h.a()) && (paramUri != null))
    {
      String str = "DOOD-" + gj.a(paramUri.getPath());
      a(str + "-V.jpg").delete();
      a(str + "-D.png").delete();
    }
  }
  
  public static Uri d(Uri paramUri)
  {
    if ((h.a()) && (paramUri != null))
    {
      String str1 = "DOOD-" + gj.a(paramUri.getPath()) + "-V.jpg";
      File localFile1 = a(str1);
      if (localFile1.exists())
      {
        String str2 = "DOOD-" + gj.a(new StringBuilder().append(str1).append(System.currentTimeMillis()).toString()) + "-V.jpg";
        File localFile2 = new File(w.q, str2);
        if (localFile1.renameTo(localFile2))
        {
          Uri localUri1 = Uri.fromFile(localFile2).buildUpon().scheme("file").build();
          Uri localUri2 = n.a(localUri1, localUri1);
          File localFile3 = h.a(l.d, a(str1).toString(), false);
          if (localFile3.exists()) {
            localFile3.renameTo(h.a(l.d, localUri2.toString(), false));
          }
          return localUri2;
        }
      }
    }
    return null;
  }
  
  private static File e(Uri paramUri)
  {
    return a("DOOD-" + gj.a(paramUri.getPath()) + "-V.jpg");
  }
  
  private static File f(Uri paramUri)
  {
    return a("DOOD-" + gj.a(paramUri.getPath()) + "-D.png");
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.gallery.b.a
 * JD-Core Version:    0.7.0.1
 */