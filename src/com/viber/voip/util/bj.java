package com.viber.voip.util;

import android.annotation.SuppressLint;
import android.content.ContentResolver;
import android.content.Context;
import android.content.DialogInterface.OnClickListener;
import android.database.Cursor;
import android.net.Uri;
import android.os.Environment;
import android.os.StatFs;
import android.webkit.MimeTypeMap;
import com.viber.voip.ViberApplication;
import com.viber.voip.a.a;
import com.viber.voip.a.bc;
import com.viber.voip.a.u;
import com.viber.voip.messages.extras.image.h;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Arrays;
import java.util.Date;
import java.util.HashSet;
import java.util.Locale;
import java.util.concurrent.locks.ReentrantLock;

public class bj
{
  private static final String a = bj.class.getSimpleName();
  private static HashSet<String> b = new HashSet(Arrays.asList(new String[] { "3G2A", "3GE6", "3GE7", "3GG6", "3GP1", "3GP2", "3GP3", "3GP4", "3GP5", "3GP6", "3GR6", "3GS6", "3GS7", "AVC1", "F4V", "F4P", "F4A", "F4B", "ISO2", "ISOM", "MMP4", "MP41", "MP42", "MSNV", "MSNV", "NDSC", "NDSH", "NDSM", "NDSP", "NDSS", "NDXC", "NDXH", "NDXM", "NDXP", "NDXS" }));
  
  public static int a(Uri paramUri)
  {
    String str = c(paramUri);
    if (str != null)
    {
      if (str.startsWith("image")) {
        return 2;
      }
      if (str.startsWith("video")) {
        return 1;
      }
      if (str.startsWith("sound")) {
        return 3;
      }
    }
    return -1;
  }
  
  public static long a()
  {
    try
    {
      StatFs localStatFs = new StatFs(Environment.getExternalStorageDirectory().getPath());
      localStatFs.restat(Environment.getExternalStorageDirectory().getPath());
      long l = localStatFs.getAvailableBlocks();
      int i = localStatFs.getBlockSize();
      return l * i;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return -1L;
  }
  
  public static long a(Context paramContext, Uri paramUri)
  {
    try
    {
      InputStream localInputStream = paramContext.getContentResolver().openInputStream(paramUri);
      int i = localInputStream.available();
      l = i;
      Exception localException2;
      localException2.printStackTrace();
    }
    catch (Exception localException1)
    {
      try
      {
        localInputStream.close();
        return l;
      }
      catch (Exception localException3)
      {
        long l;
        break label34;
      }
      localException1 = localException1;
      l = 0L;
      localException2 = localException1;
    }
    label34:
    return l;
  }
  
  public static long a(String paramString)
  {
    long l = 0L;
    File localFile = new File(paramString);
    if ((localFile.exists()) && (localFile.isDirectory()))
    {
      File[] arrayOfFile = localFile.listFiles();
      if (arrayOfFile != null) {
        for (int i = 0; i < arrayOfFile.length; i++) {
          l += arrayOfFile[i].length();
        }
      }
    }
    return l;
  }
  
  private static String a(byte[] paramArrayOfByte, int paramInt)
  {
    String str = "";
    if (paramInt >= -4 + paramArrayOfByte.length) {
      return str;
    }
    for (int i = 0; i < 4; i++) {
      if (paramArrayOfByte[(paramInt + i)] > 32) {
        str = str + (char)paramArrayOfByte[(paramInt + i)];
      }
    }
    return str.toUpperCase();
  }
  
  public static void a(Context paramContext, DialogInterface.OnClickListener paramOnClickListener)
  {
    bc localbc = bc.a();
    u localu = a.z;
    a.z.getClass();
    localbc.a(localu.b("306"));
    at.a(paramContext, "", paramContext.getString(2131493974), null, true);
  }
  
  public static void a(Uri paramUri1, Uri paramUri2)
  {
    if ((paramUri1 == null) || (paramUri2 == null)) {
      return;
    }
    File localFile1 = new File(paramUri1.getPath());
    if (!localFile1.exists())
    {
      i("copyFile srcFile:" + paramUri1 + " not exist");
      return;
    }
    File localFile2 = new File(paramUri2.getPath());
    try
    {
      if (!localFile2.exists()) {
        localFile2.createNewFile();
      }
      i("copyFile srcFile:" + paramUri1 + ",dstUri:" + paramUri2);
      a(localFile1, localFile2);
      localFile1.delete();
      return;
    }
    catch (IOException localIOException)
    {
      localIOException.printStackTrace();
      i("copyFile srcFile:" + paramUri1 + ",dstUri:" + paramUri2 + " IOException: " + localIOException);
    }
  }
  
  public static void a(File paramFile1, File paramFile2)
  {
    FileInputStream localFileInputStream = new FileInputStream(paramFile1);
    FileOutputStream localFileOutputStream = new FileOutputStream(paramFile2);
    byte[] arrayOfByte = new byte[1024];
    for (;;)
    {
      int i = localFileInputStream.read(arrayOfByte);
      if (i <= 0) {
        break;
      }
      localFileOutputStream.write(arrayOfByte, 0, i);
    }
    localFileInputStream.close();
    localFileOutputStream.flush();
    localFileOutputStream.close();
  }
  
  /* Error */
  public static void a(String paramString, Object paramObject, ReentrantLock paramReentrantLock)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_3
    //   2: aload_2
    //   3: ifnull +7 -> 10
    //   6: aload_2
    //   7: invokevirtual 304	java/util/concurrent/locks/ReentrantLock:lock	()V
    //   10: new 133	java/io/File
    //   13: dup
    //   14: new 196	java/lang/StringBuilder
    //   17: dup
    //   18: invokespecial 197	java/lang/StringBuilder:<init>	()V
    //   21: aload_0
    //   22: invokevirtual 201	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   25: ldc_w 306
    //   28: invokevirtual 201	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   31: invokevirtual 207	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   34: invokespecial 177	java/io/File:<init>	(Ljava/lang/String;)V
    //   37: astore 4
    //   39: aload 4
    //   41: invokevirtual 181	java/io/File:exists	()Z
    //   44: ifeq +9 -> 53
    //   47: aload 4
    //   49: invokevirtual 273	java/io/File:delete	()Z
    //   52: pop
    //   53: new 308	java/io/ObjectOutputStream
    //   56: dup
    //   57: new 283	java/io/FileOutputStream
    //   60: dup
    //   61: new 196	java/lang/StringBuilder
    //   64: dup
    //   65: invokespecial 197	java/lang/StringBuilder:<init>	()V
    //   68: aload_0
    //   69: invokevirtual 201	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   72: ldc_w 306
    //   75: invokevirtual 201	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   78: invokevirtual 207	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   81: invokespecial 309	java/io/FileOutputStream:<init>	(Ljava/lang/String;)V
    //   84: invokespecial 312	java/io/ObjectOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   87: astore 6
    //   89: aload 6
    //   91: aload_1
    //   92: invokevirtual 316	java/io/ObjectOutputStream:writeObject	(Ljava/lang/Object;)V
    //   95: aload 6
    //   97: invokevirtual 317	java/io/ObjectOutputStream:flush	()V
    //   100: new 133	java/io/File
    //   103: dup
    //   104: aload_0
    //   105: invokespecial 177	java/io/File:<init>	(Ljava/lang/String;)V
    //   108: astore 10
    //   110: aload 10
    //   112: invokevirtual 181	java/io/File:exists	()Z
    //   115: ifeq +9 -> 124
    //   118: aload 10
    //   120: invokevirtual 273	java/io/File:delete	()Z
    //   123: pop
    //   124: aload 4
    //   126: aload 10
    //   128: invokevirtual 321	java/io/File:renameTo	(Ljava/io/File;)Z
    //   131: pop
    //   132: iconst_1
    //   133: anewarray 323	java/io/Closeable
    //   136: dup
    //   137: iconst_0
    //   138: aload 6
    //   140: aastore
    //   141: invokestatic 328	com/viber/voip/util/bu:a	([Ljava/io/Closeable;)V
    //   144: aload_2
    //   145: ifnull +7 -> 152
    //   148: aload_2
    //   149: invokevirtual 331	java/util/concurrent/locks/ReentrantLock:unlock	()V
    //   152: return
    //   153: astore 8
    //   155: iconst_1
    //   156: anewarray 323	java/io/Closeable
    //   159: dup
    //   160: iconst_0
    //   161: aload_3
    //   162: aastore
    //   163: invokestatic 328	com/viber/voip/util/bu:a	([Ljava/io/Closeable;)V
    //   166: aload_2
    //   167: ifnull -15 -> 152
    //   170: aload_2
    //   171: invokevirtual 331	java/util/concurrent/locks/ReentrantLock:unlock	()V
    //   174: return
    //   175: astore 5
    //   177: aconst_null
    //   178: astore 6
    //   180: aload 5
    //   182: astore 7
    //   184: iconst_1
    //   185: anewarray 323	java/io/Closeable
    //   188: dup
    //   189: iconst_0
    //   190: aload 6
    //   192: aastore
    //   193: invokestatic 328	com/viber/voip/util/bu:a	([Ljava/io/Closeable;)V
    //   196: aload_2
    //   197: ifnull +7 -> 204
    //   200: aload_2
    //   201: invokevirtual 331	java/util/concurrent/locks/ReentrantLock:unlock	()V
    //   204: aload 7
    //   206: athrow
    //   207: astore 7
    //   209: goto -25 -> 184
    //   212: astore 9
    //   214: aload 6
    //   216: astore_3
    //   217: goto -62 -> 155
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	220	0	paramString	String
    //   0	220	1	paramObject	Object
    //   0	220	2	paramReentrantLock	ReentrantLock
    //   1	216	3	localObject1	Object
    //   37	88	4	localFile1	File
    //   175	6	5	localObject2	Object
    //   87	128	6	localObjectOutputStream	java.io.ObjectOutputStream
    //   182	23	7	localObject3	Object
    //   207	1	7	localObject4	Object
    //   153	1	8	localIOException1	IOException
    //   212	1	9	localIOException2	IOException
    //   108	19	10	localFile2	File
    // Exception table:
    //   from	to	target	type
    //   6	10	153	java/io/IOException
    //   10	53	153	java/io/IOException
    //   53	89	153	java/io/IOException
    //   6	10	175	finally
    //   10	53	175	finally
    //   53	89	175	finally
    //   89	124	207	finally
    //   124	132	207	finally
    //   89	124	212	java/io/IOException
    //   124	132	212	java/io/IOException
  }
  
  private static void a(String paramString, Throwable paramThrowable) {}
  
  /* Error */
  public static void a(String paramString, java.util.Map<String, Object> paramMap, ReentrantLock paramReentrantLock)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_3
    //   2: aload_2
    //   3: ifnull +7 -> 10
    //   6: aload_2
    //   7: invokevirtual 304	java/util/concurrent/locks/ReentrantLock:lock	()V
    //   10: aload_1
    //   11: invokeinterface 342 1 0
    //   16: new 133	java/io/File
    //   19: dup
    //   20: aload_0
    //   21: invokespecial 177	java/io/File:<init>	(Ljava/lang/String;)V
    //   24: invokevirtual 181	java/io/File:exists	()Z
    //   27: istore 9
    //   29: aconst_null
    //   30: astore_3
    //   31: iload 9
    //   33: ifeq +274 -> 307
    //   36: new 344	java/io/ObjectInputStream
    //   39: dup
    //   40: new 278	java/io/FileInputStream
    //   43: dup
    //   44: aload_0
    //   45: invokespecial 345	java/io/FileInputStream:<init>	(Ljava/lang/String;)V
    //   48: invokespecial 348	java/io/ObjectInputStream:<init>	(Ljava/io/InputStream;)V
    //   51: astore 10
    //   53: aload 10
    //   55: invokevirtual 351	java/io/ObjectInputStream:readUTF	()Ljava/lang/String;
    //   58: astore 15
    //   60: aload 15
    //   62: astore 12
    //   64: aload 12
    //   66: ifnull +37 -> 103
    //   69: aload_1
    //   70: aload 12
    //   72: aload 10
    //   74: invokevirtual 355	java/io/ObjectInputStream:readObject	()Ljava/lang/Object;
    //   77: invokeinterface 359 3 0
    //   82: pop
    //   83: goto -30 -> 53
    //   86: astore 16
    //   88: aload 12
    //   90: ifnull +13 -> 103
    //   93: aload_1
    //   94: aload 12
    //   96: aconst_null
    //   97: invokeinterface 359 3 0
    //   102: pop
    //   103: aload 10
    //   105: ifnull +8 -> 113
    //   108: aload 10
    //   110: invokevirtual 360	java/io/ObjectInputStream:close	()V
    //   113: aload_2
    //   114: ifnull +7 -> 121
    //   117: aload_2
    //   118: invokevirtual 331	java/util/concurrent/locks/ReentrantLock:unlock	()V
    //   121: return
    //   122: astore 13
    //   124: aload_2
    //   125: ifnull +7 -> 132
    //   128: aload_2
    //   129: invokevirtual 331	java/util/concurrent/locks/ReentrantLock:unlock	()V
    //   132: new 362	java/lang/RuntimeException
    //   135: dup
    //   136: aload 13
    //   138: invokevirtual 365	java/io/IOException:getMessage	()Ljava/lang/String;
    //   141: invokespecial 366	java/lang/RuntimeException:<init>	(Ljava/lang/String;)V
    //   144: athrow
    //   145: astore 7
    //   147: aload 7
    //   149: invokevirtual 274	java/io/IOException:printStackTrace	()V
    //   152: aload_3
    //   153: ifnull +7 -> 160
    //   156: aload_3
    //   157: invokevirtual 360	java/io/ObjectInputStream:close	()V
    //   160: aload_2
    //   161: ifnull -40 -> 121
    //   164: aload_2
    //   165: invokevirtual 331	java/util/concurrent/locks/ReentrantLock:unlock	()V
    //   168: return
    //   169: astore 8
    //   171: aload_2
    //   172: ifnull +7 -> 179
    //   175: aload_2
    //   176: invokevirtual 331	java/util/concurrent/locks/ReentrantLock:unlock	()V
    //   179: new 362	java/lang/RuntimeException
    //   182: dup
    //   183: aload 8
    //   185: invokevirtual 365	java/io/IOException:getMessage	()Ljava/lang/String;
    //   188: invokespecial 366	java/lang/RuntimeException:<init>	(Ljava/lang/String;)V
    //   191: athrow
    //   192: astore 6
    //   194: aload 6
    //   196: invokevirtual 367	java/lang/ClassNotFoundException:printStackTrace	()V
    //   199: new 362	java/lang/RuntimeException
    //   202: dup
    //   203: new 196	java/lang/StringBuilder
    //   206: dup
    //   207: invokespecial 197	java/lang/StringBuilder:<init>	()V
    //   210: ldc_w 369
    //   213: invokevirtual 201	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   216: aload 6
    //   218: invokevirtual 370	java/lang/ClassNotFoundException:getMessage	()Ljava/lang/String;
    //   221: invokevirtual 201	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   224: invokevirtual 207	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   227: invokespecial 366	java/lang/RuntimeException:<init>	(Ljava/lang/String;)V
    //   230: athrow
    //   231: astore 4
    //   233: aload_3
    //   234: ifnull +7 -> 241
    //   237: aload_3
    //   238: invokevirtual 360	java/io/ObjectInputStream:close	()V
    //   241: aload_2
    //   242: ifnull +7 -> 249
    //   245: aload_2
    //   246: invokevirtual 331	java/util/concurrent/locks/ReentrantLock:unlock	()V
    //   249: aload 4
    //   251: athrow
    //   252: astore 5
    //   254: aload_2
    //   255: ifnull +7 -> 262
    //   258: aload_2
    //   259: invokevirtual 331	java/util/concurrent/locks/ReentrantLock:unlock	()V
    //   262: new 362	java/lang/RuntimeException
    //   265: dup
    //   266: aload 5
    //   268: invokevirtual 365	java/io/IOException:getMessage	()Ljava/lang/String;
    //   271: invokespecial 366	java/lang/RuntimeException:<init>	(Ljava/lang/String;)V
    //   274: athrow
    //   275: astore 4
    //   277: aload 10
    //   279: astore_3
    //   280: goto -47 -> 233
    //   283: astore 6
    //   285: aload 10
    //   287: astore_3
    //   288: goto -94 -> 194
    //   291: astore 7
    //   293: aload 10
    //   295: astore_3
    //   296: goto -149 -> 147
    //   299: astore 11
    //   301: aconst_null
    //   302: astore 12
    //   304: goto -216 -> 88
    //   307: aconst_null
    //   308: astore 10
    //   310: goto -207 -> 103
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	313	0	paramString	String
    //   0	313	1	paramMap	java.util.Map<String, Object>
    //   0	313	2	paramReentrantLock	ReentrantLock
    //   1	295	3	localObject1	Object
    //   231	19	4	localObject2	Object
    //   275	1	4	localObject3	Object
    //   252	15	5	localIOException1	IOException
    //   192	25	6	localClassNotFoundException1	java.lang.ClassNotFoundException
    //   283	1	6	localClassNotFoundException2	java.lang.ClassNotFoundException
    //   145	3	7	localIOException2	IOException
    //   291	1	7	localIOException3	IOException
    //   169	15	8	localIOException4	IOException
    //   27	5	9	bool	boolean
    //   51	258	10	localObjectInputStream	java.io.ObjectInputStream
    //   299	1	11	localEOFException1	java.io.EOFException
    //   62	241	12	str1	String
    //   122	15	13	localIOException5	IOException
    //   58	3	15	str2	String
    //   86	1	16	localEOFException2	java.io.EOFException
    // Exception table:
    //   from	to	target	type
    //   69	83	86	java/io/EOFException
    //   108	113	122	java/io/IOException
    //   6	10	145	java/io/IOException
    //   10	29	145	java/io/IOException
    //   36	53	145	java/io/IOException
    //   156	160	169	java/io/IOException
    //   6	10	192	java/lang/ClassNotFoundException
    //   10	29	192	java/lang/ClassNotFoundException
    //   36	53	192	java/lang/ClassNotFoundException
    //   6	10	231	finally
    //   10	29	231	finally
    //   36	53	231	finally
    //   147	152	231	finally
    //   194	231	231	finally
    //   237	241	252	java/io/IOException
    //   53	60	275	finally
    //   69	83	275	finally
    //   93	103	275	finally
    //   53	60	283	java/lang/ClassNotFoundException
    //   69	83	283	java/lang/ClassNotFoundException
    //   93	103	283	java/lang/ClassNotFoundException
    //   53	60	291	java/io/IOException
    //   69	83	291	java/io/IOException
    //   93	103	291	java/io/IOException
    //   53	60	299	java/io/EOFException
  }
  
  public static void a(String paramString, ReentrantLock paramReentrantLock)
  {
    if (paramReentrantLock != null) {
      paramReentrantLock.lock();
    }
    File localFile = new File(paramString);
    if (localFile.exists()) {
      localFile.delete();
    }
    if (paramReentrantLock != null) {
      paramReentrantLock.unlock();
    }
  }
  
  public static boolean a(Context paramContext, String paramString)
  {
    if (paramString != null) {
      return new File(b(paramContext, Uri.parse(paramString)).getPath()).exists();
    }
    return false;
  }
  
  public static boolean a(File paramFile)
  {
    return a(paramFile, true);
  }
  
  public static boolean a(File paramFile, boolean paramBoolean)
  {
    if (paramFile.exists())
    {
      File[] arrayOfFile = paramFile.listFiles();
      if (arrayOfFile == null) {
        return true;
      }
      int i = 0;
      if (i < arrayOfFile.length)
      {
        if (arrayOfFile[i].isDirectory()) {
          a(arrayOfFile[i], paramBoolean);
        }
        for (;;)
        {
          i++;
          break;
          arrayOfFile[i].delete();
        }
      }
    }
    if (paramBoolean) {}
    for (boolean bool = paramFile.delete();; bool = true) {
      return bool;
    }
  }
  
  public static long b(String paramString)
  {
    return new File(paramString).length();
  }
  
  private static Uri b(Context paramContext, Uri paramUri)
  {
    if ((paramUri.getScheme() != null) && ("content".equals(paramUri.getScheme().toString())))
    {
      Cursor localCursor = paramContext.getContentResolver().query(paramUri, null, null, null, null);
      if ((localCursor != null) && (localCursor.moveToFirst())) {
        paramUri = Uri.parse(localCursor.getString(localCursor.getColumnIndexOrThrow("_data")));
      }
      al.a(localCursor);
    }
    return paramUri;
  }
  
  /* Error */
  public static Object b(String paramString, ReentrantLock paramReentrantLock)
  {
    // Byte code:
    //   0: aload_1
    //   1: ifnull +7 -> 8
    //   4: aload_1
    //   5: invokevirtual 304	java/util/concurrent/locks/ReentrantLock:lock	()V
    //   8: new 133	java/io/File
    //   11: dup
    //   12: aload_0
    //   13: invokespecial 177	java/io/File:<init>	(Ljava/lang/String;)V
    //   16: invokevirtual 181	java/io/File:exists	()Z
    //   19: ifeq +218 -> 237
    //   22: new 344	java/io/ObjectInputStream
    //   25: dup
    //   26: new 278	java/io/FileInputStream
    //   29: dup
    //   30: aload_0
    //   31: invokespecial 345	java/io/FileInputStream:<init>	(Ljava/lang/String;)V
    //   34: invokespecial 348	java/io/ObjectInputStream:<init>	(Ljava/io/InputStream;)V
    //   37: astore 4
    //   39: aload 4
    //   41: invokevirtual 355	java/io/ObjectInputStream:readObject	()Ljava/lang/Object;
    //   44: astore 13
    //   46: aload 13
    //   48: astore 9
    //   50: aload 4
    //   52: ifnull +8 -> 60
    //   55: aload 4
    //   57: invokevirtual 360	java/io/ObjectInputStream:close	()V
    //   60: aload_1
    //   61: ifnull +7 -> 68
    //   64: aload_1
    //   65: invokevirtual 331	java/util/concurrent/locks/ReentrantLock:unlock	()V
    //   68: aload 9
    //   70: areturn
    //   71: astore 12
    //   73: aload_1
    //   74: ifnull -14 -> 60
    //   77: aload_1
    //   78: invokevirtual 331	java/util/concurrent/locks/ReentrantLock:unlock	()V
    //   81: goto -21 -> 60
    //   84: astore 8
    //   86: aconst_null
    //   87: astore 4
    //   89: aload 8
    //   91: invokevirtual 274	java/io/IOException:printStackTrace	()V
    //   94: aload 4
    //   96: ifnull +8 -> 104
    //   99: aload 4
    //   101: invokevirtual 360	java/io/ObjectInputStream:close	()V
    //   104: aconst_null
    //   105: astore 9
    //   107: aload_1
    //   108: ifnull -40 -> 68
    //   111: aload_1
    //   112: invokevirtual 331	java/util/concurrent/locks/ReentrantLock:unlock	()V
    //   115: aconst_null
    //   116: areturn
    //   117: astore 10
    //   119: aload_1
    //   120: ifnull -16 -> 104
    //   123: aload_1
    //   124: invokevirtual 331	java/util/concurrent/locks/ReentrantLock:unlock	()V
    //   127: goto -23 -> 104
    //   130: astore 6
    //   132: aconst_null
    //   133: astore 4
    //   135: aload 6
    //   137: astore 7
    //   139: aload 7
    //   141: invokevirtual 367	java/lang/ClassNotFoundException:printStackTrace	()V
    //   144: new 362	java/lang/RuntimeException
    //   147: dup
    //   148: new 196	java/lang/StringBuilder
    //   151: dup
    //   152: invokespecial 197	java/lang/StringBuilder:<init>	()V
    //   155: ldc_w 369
    //   158: invokevirtual 201	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   161: aload 7
    //   163: invokevirtual 370	java/lang/ClassNotFoundException:getMessage	()Ljava/lang/String;
    //   166: invokevirtual 201	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   169: invokevirtual 207	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   172: invokespecial 366	java/lang/RuntimeException:<init>	(Ljava/lang/String;)V
    //   175: athrow
    //   176: astore_3
    //   177: aload 4
    //   179: ifnull +8 -> 187
    //   182: aload 4
    //   184: invokevirtual 360	java/io/ObjectInputStream:close	()V
    //   187: aload_1
    //   188: ifnull +7 -> 195
    //   191: aload_1
    //   192: invokevirtual 331	java/util/concurrent/locks/ReentrantLock:unlock	()V
    //   195: aload_3
    //   196: athrow
    //   197: astore 5
    //   199: aload_1
    //   200: ifnull -13 -> 187
    //   203: aload_1
    //   204: invokevirtual 331	java/util/concurrent/locks/ReentrantLock:unlock	()V
    //   207: goto -20 -> 187
    //   210: astore 11
    //   212: aconst_null
    //   213: astore 9
    //   215: goto -165 -> 50
    //   218: astore_2
    //   219: aload_2
    //   220: astore_3
    //   221: aconst_null
    //   222: astore 4
    //   224: goto -47 -> 177
    //   227: astore 7
    //   229: goto -90 -> 139
    //   232: astore 8
    //   234: goto -145 -> 89
    //   237: aconst_null
    //   238: astore 9
    //   240: aconst_null
    //   241: astore 4
    //   243: goto -193 -> 50
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	246	0	paramString	String
    //   0	246	1	paramReentrantLock	ReentrantLock
    //   218	2	2	localObject1	Object
    //   176	20	3	localObject2	Object
    //   220	1	3	localObject3	Object
    //   37	205	4	localObjectInputStream	java.io.ObjectInputStream
    //   197	1	5	localIOException1	IOException
    //   130	6	6	localClassNotFoundException1	java.lang.ClassNotFoundException
    //   137	25	7	localClassNotFoundException2	java.lang.ClassNotFoundException
    //   227	1	7	localClassNotFoundException3	java.lang.ClassNotFoundException
    //   84	6	8	localIOException2	IOException
    //   232	1	8	localIOException3	IOException
    //   48	191	9	localObject4	Object
    //   117	1	10	localIOException4	IOException
    //   210	1	11	localEOFException	java.io.EOFException
    //   71	1	12	localIOException5	IOException
    //   44	3	13	localObject5	Object
    // Exception table:
    //   from	to	target	type
    //   55	60	71	java/io/IOException
    //   4	8	84	java/io/IOException
    //   8	39	84	java/io/IOException
    //   99	104	117	java/io/IOException
    //   4	8	130	java/lang/ClassNotFoundException
    //   8	39	130	java/lang/ClassNotFoundException
    //   39	46	176	finally
    //   89	94	176	finally
    //   139	176	176	finally
    //   182	187	197	java/io/IOException
    //   39	46	210	java/io/EOFException
    //   4	8	218	finally
    //   8	39	218	finally
    //   39	46	227	java/lang/ClassNotFoundException
    //   39	46	232	java/io/IOException
  }
  
  public static String b(Context paramContext, String paramString)
  {
    if (!paramString.equals(new File(paramString).getAbsolutePath())) {
      paramString = paramContext.getFilesDir().getAbsolutePath() + "/" + paramString;
    }
    return paramString;
  }
  
  public static String b(Uri paramUri)
  {
    String str = c(paramUri);
    if (str != null)
    {
      if (str.startsWith("image")) {
        return "image";
      }
      if (str.startsWith("video")) {
        return "video";
      }
      if (str.startsWith("sound")) {
        return "sound";
      }
    }
    return null;
  }
  
  private static String c(Context paramContext, Uri paramUri)
  {
    ContentResolver localContentResolver = paramContext.getContentResolver();
    String str1;
    try
    {
      String str2 = localContentResolver.getType(paramUri);
      str1 = str2;
    }
    catch (Exception localException)
    {
      for (;;)
      {
        localException.printStackTrace();
        str1 = null;
      }
      if (!str1.startsWith("image")) {
        break label47;
      }
      return "image";
      label47:
      if (!str1.startsWith("video")) {
        break label60;
      }
      return "video";
      label60:
      if (!str1.startsWith("sound")) {
        break label73;
      }
      return "sound";
    }
    if (str1 == null) {
      return null;
    }
    label73:
    return str1;
  }
  
  @SuppressLint({"DefaultLocale"})
  private static String c(Uri paramUri)
  {
    String str1 = null;
    if (paramUri != null)
    {
      String str2 = paramUri.getPath();
      str1 = null;
      if (str2 != null) {
        break label19;
      }
    }
    label19:
    do
    {
      return str1;
      String str3 = MimeTypeMap.getFileExtensionFromUrl(paramUri.getPath().replace(" ", "")).toLowerCase(Locale.getDefault());
      boolean bool = MimeTypeMap.getSingleton().hasExtension(str3);
      str1 = null;
      if (bool) {
        str1 = MimeTypeMap.getSingleton().getMimeTypeFromExtension(str3);
      }
    } while (str1 != null);
    return c(ViberApplication.getInstance(), paramUri);
  }
  
  public static String[] c(String paramString)
  {
    File localFile = new File(paramString);
    if (localFile.isDirectory())
    {
      String[] arrayOfString = localFile.list();
      if (arrayOfString != null) {
        return arrayOfString;
      }
    }
    return new String[0];
  }
  
  public static boolean d(String paramString)
  {
    try
    {
      i("isMpeg4 fname: " + paramString);
      FileInputStream localFileInputStream = new FileInputStream(paramString);
      byte[] arrayOfByte = new byte[24];
      int i = localFileInputStream.read(arrayOfByte);
      localFileInputStream.close();
      i("isMpeg4 len: " + i);
      if (i < arrayOfByte.length) {
        return false;
      }
      if ((arrayOfByte[0] == 0) && (arrayOfByte[1] == 0) && (arrayOfByte[2] == 0))
      {
        String str1 = a(arrayOfByte, 4);
        i("isMpeg4 sFtyp: " + str1);
        if ("FTYP".equals(str1))
        {
          String str2 = a(arrayOfByte, 8);
          i("isMpeg4 codecId: " + str2);
          if (b.contains(str2))
          {
            String str3 = a(arrayOfByte, 16);
            i("isMpeg4 ftypId2: " + str3);
            if (b.contains(str3))
            {
              i("isMpeg4: it's Mpeg4 file:" + paramString);
              return true;
            }
          }
        }
      }
    }
    catch (IOException localIOException)
    {
      i("isMpeg can't open " + paramString + " IOException: " + localIOException);
    }
    return false;
  }
  
  public static boolean e(String paramString)
  {
    return new File(paramString).mkdirs();
  }
  
  public static boolean f(String paramString)
  {
    File localFile = new File(paramString + "/.nomedia");
    if (!localFile.exists()) {
      try
      {
        localFile.createNewFile();
        return true;
      }
      catch (IOException localIOException)
      {
        a("could not create " + localFile.getAbsolutePath(), localIOException);
      }
    }
    return false;
  }
  
  public static int g(String paramString)
  {
    boolean bool = h.a();
    int i = 0;
    if (bool) {
      i = new File(paramString).listFiles().length;
    }
    return i;
  }
  
  public static File h(String paramString)
  {
    Object localObject1;
    int j;
    Object localObject2;
    if (h.a())
    {
      File localFile = new File(paramString);
      if (!localFile.exists()) {
        localFile.mkdir();
      }
      if ((localFile.listFiles() != null) && (localFile.listFiles().length > 0))
      {
        localObject1 = localFile.listFiles()[0];
        File[] arrayOfFile = localFile.listFiles();
        int i = arrayOfFile.length;
        j = 0;
        if (j >= i) {
          break label114;
        }
        localObject2 = arrayOfFile[j];
        if (new Date(((File)localObject2).lastModified()).compareTo(new Date(((File)localObject1).lastModified())) >= 0) {
          break label116;
        }
      }
    }
    for (;;)
    {
      j++;
      localObject1 = localObject2;
      break;
      localObject1 = null;
      label114:
      return localObject1;
      label116:
      localObject2 = localObject1;
    }
  }
  
  private static void i(String paramString) {}
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.util.bj
 * JD-Core Version:    0.7.0.1
 */