package com.viber.voip.util.b;

import android.annotation.SuppressLint;
import android.content.ContentResolver;
import android.content.Context;
import android.graphics.Bitmap;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.net.Uri.Builder;
import android.provider.ContactsContract.Contacts;
import android.util.Log;
import com.viber.voip.util.gj;
import com.viber.voip.util.gl;
import com.viber.voip.util.hv;
import com.viber.voip.util.hw;
import com.viber.voip.util.upload.aa;
import com.viber.voip.util.upload.ab;
import com.viber.voip.util.upload.d;
import com.viber.voip.util.upload.l;
import com.viber.voip.util.upload.n;
import com.viber.voip.util.upload.s;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class w
  extends ac
{
  public w(Context paramContext)
  {
    super(paramContext);
    b(paramContext);
  }
  
  /* Error */
  public static Bitmap a(Context paramContext, Uri paramUri, boolean paramBoolean)
  {
    // Byte code:
    //   0: aload_0
    //   1: aload_1
    //   2: iload_2
    //   3: invokestatic 24	com/viber/voip/util/b/w:b	(Landroid/content/Context;Landroid/net/Uri;Z)Ljava/io/InputStream;
    //   6: astore 12
    //   8: aload 12
    //   10: astore 4
    //   12: aload 4
    //   14: ifnull +33 -> 47
    //   17: aload 4
    //   19: invokevirtual 30	java/io/InputStream:available	()I
    //   22: ifle +25 -> 47
    //   25: aload 4
    //   27: invokestatic 36	android/graphics/BitmapFactory:decodeStream	(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    //   30: astore 15
    //   32: iconst_1
    //   33: anewarray 38	java/io/Closeable
    //   36: dup
    //   37: iconst_0
    //   38: aload 4
    //   40: aastore
    //   41: invokestatic 43	com/viber/voip/util/bu:a	([Ljava/io/Closeable;)V
    //   44: aload 15
    //   46: areturn
    //   47: iconst_1
    //   48: anewarray 38	java/io/Closeable
    //   51: dup
    //   52: iconst_0
    //   53: aload 4
    //   55: aastore
    //   56: invokestatic 43	com/viber/voip/util/bu:a	([Ljava/io/Closeable;)V
    //   59: aconst_null
    //   60: areturn
    //   61: astore 10
    //   63: aconst_null
    //   64: astore 4
    //   66: ldc 45
    //   68: new 47	java/lang/StringBuilder
    //   71: dup
    //   72: invokespecial 50	java/lang/StringBuilder:<init>	()V
    //   75: ldc 52
    //   77: invokevirtual 56	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   80: aload_1
    //   81: invokevirtual 59	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   84: invokevirtual 63	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   87: aload 10
    //   89: invokestatic 69	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   92: pop
    //   93: iconst_1
    //   94: anewarray 38	java/io/Closeable
    //   97: dup
    //   98: iconst_0
    //   99: aload 4
    //   101: aastore
    //   102: invokestatic 43	com/viber/voip/util/bu:a	([Ljava/io/Closeable;)V
    //   105: aconst_null
    //   106: areturn
    //   107: astore 8
    //   109: aconst_null
    //   110: astore 4
    //   112: ldc 45
    //   114: ldc 71
    //   116: aload 8
    //   118: invokestatic 69	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   121: pop
    //   122: iconst_1
    //   123: anewarray 38	java/io/Closeable
    //   126: dup
    //   127: iconst_0
    //   128: aload 4
    //   130: aastore
    //   131: invokestatic 43	com/viber/voip/util/bu:a	([Ljava/io/Closeable;)V
    //   134: aconst_null
    //   135: areturn
    //   136: astore 7
    //   138: aconst_null
    //   139: astore 4
    //   141: invokestatic 76	java/lang/System:gc	()V
    //   144: iconst_1
    //   145: anewarray 38	java/io/Closeable
    //   148: dup
    //   149: iconst_0
    //   150: aload 4
    //   152: aastore
    //   153: invokestatic 43	com/viber/voip/util/bu:a	([Ljava/io/Closeable;)V
    //   156: aconst_null
    //   157: areturn
    //   158: astore 6
    //   160: aconst_null
    //   161: astore 4
    //   163: iconst_1
    //   164: anewarray 38	java/io/Closeable
    //   167: dup
    //   168: iconst_0
    //   169: aload 4
    //   171: aastore
    //   172: invokestatic 43	com/viber/voip/util/bu:a	([Ljava/io/Closeable;)V
    //   175: aconst_null
    //   176: areturn
    //   177: astore_3
    //   178: aconst_null
    //   179: astore 4
    //   181: aload_3
    //   182: astore 5
    //   184: iconst_1
    //   185: anewarray 38	java/io/Closeable
    //   188: dup
    //   189: iconst_0
    //   190: aload 4
    //   192: aastore
    //   193: invokestatic 43	com/viber/voip/util/bu:a	([Ljava/io/Closeable;)V
    //   196: aload 5
    //   198: athrow
    //   199: astore 5
    //   201: goto -17 -> 184
    //   204: astore 14
    //   206: goto -43 -> 163
    //   209: astore 13
    //   211: goto -70 -> 141
    //   214: astore 8
    //   216: goto -104 -> 112
    //   219: astore 10
    //   221: goto -155 -> 66
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	224	0	paramContext	Context
    //   0	224	1	paramUri	Uri
    //   0	224	2	paramBoolean	boolean
    //   177	5	3	localObject1	Object
    //   10	181	4	localInputStream1	InputStream
    //   182	15	5	localObject2	Object
    //   199	1	5	localObject3	Object
    //   158	1	6	localRuntimeException1	RuntimeException
    //   136	1	7	localOutOfMemoryError1	OutOfMemoryError
    //   107	10	8	localIOException1	IOException
    //   214	1	8	localIOException2	IOException
    //   61	27	10	localFileNotFoundException1	FileNotFoundException
    //   219	1	10	localFileNotFoundException2	FileNotFoundException
    //   6	3	12	localInputStream2	InputStream
    //   209	1	13	localOutOfMemoryError2	OutOfMemoryError
    //   204	1	14	localRuntimeException2	RuntimeException
    //   30	15	15	localBitmap	Bitmap
    // Exception table:
    //   from	to	target	type
    //   0	8	61	java/io/FileNotFoundException
    //   0	8	107	java/io/IOException
    //   0	8	136	java/lang/OutOfMemoryError
    //   0	8	158	java/lang/RuntimeException
    //   0	8	177	finally
    //   17	32	199	finally
    //   66	93	199	finally
    //   112	122	199	finally
    //   141	144	199	finally
    //   17	32	204	java/lang/RuntimeException
    //   17	32	209	java/lang/OutOfMemoryError
    //   17	32	214	java/io/IOException
    //   17	32	219	java/io/FileNotFoundException
  }
  
  /* Error */
  public static Bitmap a(Uri paramUri, boolean paramBoolean1, boolean paramBoolean2, int paramInt1, int paramInt2)
  {
    // Byte code:
    //   0: aload_0
    //   1: iload_1
    //   2: iload_2
    //   3: iload_3
    //   4: iload 4
    //   6: invokestatic 80	com/viber/voip/util/b/w:b	(Landroid/net/Uri;ZZII)Ljava/io/InputStream;
    //   9: astore 11
    //   11: aload 11
    //   13: astore 6
    //   15: aload 6
    //   17: ifnull +25 -> 42
    //   20: aload 6
    //   22: invokestatic 36	android/graphics/BitmapFactory:decodeStream	(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    //   25: astore 15
    //   27: iconst_1
    //   28: anewarray 38	java/io/Closeable
    //   31: dup
    //   32: iconst_0
    //   33: aload 6
    //   35: aastore
    //   36: invokestatic 43	com/viber/voip/util/bu:a	([Ljava/io/Closeable;)V
    //   39: aload 15
    //   41: areturn
    //   42: iconst_1
    //   43: anewarray 38	java/io/Closeable
    //   46: dup
    //   47: iconst_0
    //   48: aload 6
    //   50: aastore
    //   51: invokestatic 43	com/viber/voip/util/bu:a	([Ljava/io/Closeable;)V
    //   54: aconst_null
    //   55: areturn
    //   56: astore 10
    //   58: aconst_null
    //   59: astore 6
    //   61: iconst_1
    //   62: anewarray 38	java/io/Closeable
    //   65: dup
    //   66: iconst_0
    //   67: aload 6
    //   69: aastore
    //   70: invokestatic 43	com/viber/voip/util/bu:a	([Ljava/io/Closeable;)V
    //   73: aconst_null
    //   74: areturn
    //   75: astore 9
    //   77: aconst_null
    //   78: astore 6
    //   80: invokestatic 76	java/lang/System:gc	()V
    //   83: iconst_1
    //   84: anewarray 38	java/io/Closeable
    //   87: dup
    //   88: iconst_0
    //   89: aload 6
    //   91: aastore
    //   92: invokestatic 43	com/viber/voip/util/bu:a	([Ljava/io/Closeable;)V
    //   95: aconst_null
    //   96: areturn
    //   97: astore 8
    //   99: aconst_null
    //   100: astore 6
    //   102: iconst_1
    //   103: anewarray 38	java/io/Closeable
    //   106: dup
    //   107: iconst_0
    //   108: aload 6
    //   110: aastore
    //   111: invokestatic 43	com/viber/voip/util/bu:a	([Ljava/io/Closeable;)V
    //   114: aconst_null
    //   115: areturn
    //   116: astore 5
    //   118: aconst_null
    //   119: astore 6
    //   121: aload 5
    //   123: astore 7
    //   125: iconst_1
    //   126: anewarray 38	java/io/Closeable
    //   129: dup
    //   130: iconst_0
    //   131: aload 6
    //   133: aastore
    //   134: invokestatic 43	com/viber/voip/util/bu:a	([Ljava/io/Closeable;)V
    //   137: aload 7
    //   139: athrow
    //   140: astore 7
    //   142: goto -17 -> 125
    //   145: astore 14
    //   147: goto -45 -> 102
    //   150: astore 13
    //   152: goto -72 -> 80
    //   155: astore 12
    //   157: goto -96 -> 61
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	160	0	paramUri	Uri
    //   0	160	1	paramBoolean1	boolean
    //   0	160	2	paramBoolean2	boolean
    //   0	160	3	paramInt1	int
    //   0	160	4	paramInt2	int
    //   116	6	5	localObject1	Object
    //   13	119	6	localInputStream1	InputStream
    //   123	15	7	localObject2	Object
    //   140	1	7	localObject3	Object
    //   97	1	8	localRuntimeException1	RuntimeException
    //   75	1	9	localOutOfMemoryError1	OutOfMemoryError
    //   56	1	10	localFileNotFoundException1	FileNotFoundException
    //   9	3	11	localInputStream2	InputStream
    //   155	1	12	localFileNotFoundException2	FileNotFoundException
    //   150	1	13	localOutOfMemoryError2	OutOfMemoryError
    //   145	1	14	localRuntimeException2	RuntimeException
    //   25	15	15	localBitmap	Bitmap
    // Exception table:
    //   from	to	target	type
    //   0	11	56	java/io/FileNotFoundException
    //   0	11	75	java/lang/OutOfMemoryError
    //   0	11	97	java/lang/RuntimeException
    //   0	11	116	finally
    //   20	27	140	finally
    //   80	83	140	finally
    //   20	27	145	java/lang/RuntimeException
    //   20	27	150	java/lang/OutOfMemoryError
    //   20	27	155	java/io/FileNotFoundException
  }
  
  public static w a(Context paramContext)
  {
    w localw = (w)paramContext.getApplicationContext().getSystemService("image_fetcher");
    if (localw == null) {
      throw new AssertionError("ImageFetcher not found.");
    }
    return localw;
  }
  
  public static String a(Uri paramUri)
  {
    return c(paramUri, false, false, 0, 0);
  }
  
  private static boolean a(String paramString1, String paramString2, Uri paramUri)
  {
    return !new File(paramString1).exists();
  }
  
  @SuppressLint({"NewApi"})
  public static InputStream b(Context paramContext, Uri paramUri, boolean paramBoolean)
  {
    if (paramUri == null) {
      return null;
    }
    if (paramUri.getScheme() == null) {
      paramUri = paramUri.buildUpon().scheme("file").build();
    }
    if (paramUri.getScheme().startsWith("http")) {
      return c(paramUri);
    }
    if (paramUri.toString().startsWith(ContactsContract.Contacts.CONTENT_URI.toString()))
    {
      if ((paramBoolean) && (gl.e())) {
        return ContactsContract.Contacts.openContactPhotoInputStream(paramContext.getContentResolver(), paramUri, true);
      }
      return ContactsContract.Contacts.openContactPhotoInputStream(paramContext.getContentResolver(), paramUri);
    }
    return paramContext.getContentResolver().openInputStream(paramUri);
  }
  
  private static InputStream b(Uri paramUri, boolean paramBoolean1, boolean paramBoolean2, int paramInt1, int paramInt2)
  {
    String str = c(paramUri, paramBoolean1, paramBoolean2, paramInt1, paramInt2);
    if (gj.c(str)) {
      return null;
    }
    return new FileInputStream(new File(str));
  }
  
  private void b(Context paramContext)
  {
    c(paramContext);
  }
  
  private static InputStream c(Uri paramUri)
  {
    return b(paramUri, true, true, -2, -2);
  }
  
  private static String c(Uri paramUri, boolean paramBoolean1, boolean paramBoolean2, int paramInt1, int paramInt2)
  {
    Object localObject1 = com.viber.voip.w.z + gj.a(paramUri.toString());
    Object localObject2 = (String)localObject1 + ".tmp";
    Object localObject3;
    if (paramUri.toString().contains("maps.google.com/maps/api/staticmap"))
    {
      String str2 = com.viber.voip.w.v + gj.a(paramUri.toString());
      String str3 = str2 + ".tmp";
      localObject3 = new l(paramUri.toString(), str2, str3, paramBoolean2, paramBoolean1, paramInt1, paramInt2);
      localObject2 = str3;
      localObject1 = str2;
    }
    for (;;)
    {
      File localFile = new File((String)localObject1).getParentFile();
      if (!localFile.exists()) {
        localFile.mkdirs();
      }
      if (a((String)localObject1, (String)localObject2, paramUri)) {}
      try
      {
        ((d)localObject3).d();
        return localObject1;
      }
      catch (com.viber.voip.util.upload.e locale) {}
      if (paramUri.toString().contains("stickers/icons"))
      {
        Matcher localMatcher = Pattern.compile("\\d+").matcher(paramUri.getLastPathSegment());
        if (localMatcher.find())
        {
          localObject1 = com.viber.voip.stickers.c.e.e(Integer.valueOf(localMatcher.group()).intValue());
          localObject2 = (String)localObject1 + ".tmp";
          localObject3 = new d(paramUri.toString(), (String)localObject1, (String)localObject2);
        }
        else
        {
          return null;
        }
      }
      else if (hv.a(paramUri))
      {
        hw localhw = hv.b(paramUri);
        localObject3 = new ab(localhw.b, localhw.c, localhw.a, localhw.d, (String)localObject1, (String)localObject2);
      }
      else if (paramUri.toString().startsWith(s.b))
      {
        String str1 = n.a("image");
        localObject3 = new aa(s.b, (String)localObject1, (String)localObject2, paramUri.getLastPathSegment(), str1);
      }
      else
      {
        localObject3 = new d(paramUri.toString(), (String)localObject1, (String)localObject2);
      }
    }
    return null;
  }
  
  private void c(Context paramContext)
  {
    NetworkInfo localNetworkInfo = ((ConnectivityManager)paramContext.getSystemService("connectivity")).getActiveNetworkInfo();
    if ((localNetworkInfo == null) || (!localNetworkInfo.isConnectedOrConnecting())) {
      Log.e("ImageFetcher", "checkConnection - no connection found");
    }
  }
  
  protected Bitmap a(Uri paramUri, x paramx)
  {
    try
    {
      Bitmap localBitmap = a(paramUri, paramx, b(), this.c);
      return localBitmap;
    }
    catch (FileNotFoundException localFileNotFoundException)
    {
      Log.e("ImageFetcher", "File can't be found by the given Uri " + paramUri, localFileNotFoundException);
      return null;
    }
    catch (IOException localIOException)
    {
      Log.e("ImageFetcher", "Unable to read bitmap from the stream.", localIOException);
      return null;
    }
    catch (OutOfMemoryError localOutOfMemoryError)
    {
      Log.e("ImageFetcher", "Not enough memory to allocate bitmap.", localOutOfMemoryError);
      return null;
    }
    catch (RuntimeException localRuntimeException)
    {
      Log.e("ImageFetcher", "Unexpected error on loading bitmap from the stream. Nobody is perfect.", localRuntimeException);
    }
    return null;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.util.b.w
 * JD-Core Version:    0.7.0.1
 */