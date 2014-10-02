package com.viber.voip.util;

import android.net.Uri;
import com.viber.voip.messages.extras.image.h;
import java.io.Closeable;
import java.io.File;
import java.io.Flushable;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

public final class bu
{
  public static void a(Uri paramUri1, Uri paramUri2)
  {
    if ((paramUri2 == null) || (paramUri1 == null) || (!h.b(paramUri2)) || (!h.b(paramUri1))) {}
    File localFile1;
    do
    {
      return;
      localFile1 = new File(paramUri1.getPath());
    } while (!localFile1.exists());
    File localFile2 = new File(paramUri2.getPath());
    if (!localFile2.exists()) {
      localFile2.createNewFile();
    }
    a(localFile1, localFile2);
  }
  
  /* Error */
  public static void a(File paramFile1, File paramFile2)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: aload_1
    //   3: ifnull +7 -> 10
    //   6: aload_0
    //   7: ifnonnull +4 -> 11
    //   10: return
    //   11: new 36	java/io/BufferedOutputStream
    //   14: dup
    //   15: new 38	java/io/FileOutputStream
    //   18: dup
    //   19: aload_1
    //   20: invokespecial 41	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   23: invokespecial 44	java/io/BufferedOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   26: astore_3
    //   27: new 46	java/io/BufferedInputStream
    //   30: dup
    //   31: new 48	java/io/FileInputStream
    //   34: dup
    //   35: aload_0
    //   36: invokespecial 49	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   39: invokespecial 52	java/io/BufferedInputStream:<init>	(Ljava/io/InputStream;)V
    //   42: astore 4
    //   44: aload 4
    //   46: aload_3
    //   47: invokestatic 55	com/viber/voip/util/bu:a	(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    //   50: iconst_2
    //   51: anewarray 57	java/io/Closeable
    //   54: dup
    //   55: iconst_0
    //   56: aload 4
    //   58: aastore
    //   59: dup
    //   60: iconst_1
    //   61: aload_3
    //   62: aastore
    //   63: invokestatic 60	com/viber/voip/util/bu:a	([Ljava/io/Closeable;)V
    //   66: return
    //   67: astore 5
    //   69: aconst_null
    //   70: astore 4
    //   72: iconst_2
    //   73: anewarray 57	java/io/Closeable
    //   76: dup
    //   77: iconst_0
    //   78: aload 4
    //   80: aastore
    //   81: dup
    //   82: iconst_1
    //   83: aload_2
    //   84: aastore
    //   85: invokestatic 60	com/viber/voip/util/bu:a	([Ljava/io/Closeable;)V
    //   88: aload 5
    //   90: athrow
    //   91: astore 5
    //   93: aload_3
    //   94: astore_2
    //   95: aconst_null
    //   96: astore 4
    //   98: goto -26 -> 72
    //   101: astore 5
    //   103: aload_3
    //   104: astore_2
    //   105: goto -33 -> 72
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	108	0	paramFile1	File
    //   0	108	1	paramFile2	File
    //   1	104	2	localObject1	Object
    //   26	78	3	localBufferedOutputStream	java.io.BufferedOutputStream
    //   42	55	4	localBufferedInputStream	java.io.BufferedInputStream
    //   67	22	5	localObject2	Object
    //   91	1	5	localObject3	Object
    //   101	1	5	localObject4	Object
    // Exception table:
    //   from	to	target	type
    //   11	27	67	finally
    //   27	44	91	finally
    //   44	50	101	finally
  }
  
  public static void a(InputStream paramInputStream, OutputStream paramOutputStream)
  {
    byte[] arrayOfByte = new byte[1024];
    for (;;)
    {
      int i = paramInputStream.read(arrayOfByte);
      if (i == -1) {
        break;
      }
      paramOutputStream.write(arrayOfByte, 0, i);
    }
  }
  
  public static void a(Closeable... paramVarArgs)
  {
    int i = paramVarArgs.length;
    int j = 0;
    for (;;)
    {
      if (j < i)
      {
        Closeable localCloseable = paramVarArgs[j];
        if (localCloseable != null) {}
        try
        {
          localCloseable.close();
          label24:
          j++;
        }
        catch (IOException localIOException)
        {
          break label24;
        }
      }
    }
  }
  
  public static void a(Flushable... paramVarArgs)
  {
    int i = paramVarArgs.length;
    int j = 0;
    for (;;)
    {
      if (j < i)
      {
        Flushable localFlushable = paramVarArgs[j];
        if (localFlushable != null) {}
        try
        {
          localFlushable.flush();
          label24:
          j++;
        }
        catch (IOException localIOException)
        {
          break label24;
        }
      }
    }
  }
  
  public static boolean a(Uri paramUri)
  {
    return (h.b(paramUri)) && (new File(paramUri.getPath()).exists());
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.util.bu
 * JD-Core Version:    0.7.0.1
 */