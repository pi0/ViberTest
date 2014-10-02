package com.facebook.internal;

import android.content.Context;
import com.facebook.LoggingBehavior;
import com.facebook.Settings;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Date;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicLong;
import org.json.JSONObject;

public final class FileLruCache
{
  private static final String HEADER_CACHEKEY_KEY = "key";
  private static final String HEADER_CACHE_CONTENT_TAG_KEY = "tag";
  static final String TAG = FileLruCache.class.getSimpleName();
  private static final AtomicLong bufferIndex = new AtomicLong();
  private final File directory;
  private boolean isTrimPending;
  private final FileLruCache.Limits limits;
  private final Object lock;
  private final String tag;
  
  public FileLruCache(Context paramContext, String paramString, FileLruCache.Limits paramLimits)
  {
    this.tag = paramString;
    this.limits = paramLimits;
    this.directory = new File(paramContext.getCacheDir(), paramString);
    this.lock = new Object();
    this.directory.mkdirs();
    FileLruCache.BufferFile.deleteAll(this.directory);
  }
  
  private void postTrim()
  {
    synchronized (this.lock)
    {
      if (!this.isTrimPending)
      {
        this.isTrimPending = true;
        Settings.getExecutor().execute(new FileLruCache.2(this));
      }
      return;
    }
  }
  
  private void renameToTargetAndTrim(String paramString, File paramFile)
  {
    if (!paramFile.renameTo(new File(this.directory, Utility.md5hash(paramString)))) {
      paramFile.delete();
    }
    postTrim();
  }
  
  /* Error */
  private void trim()
  {
    // Byte code:
    //   0: getstatic 123	com/facebook/LoggingBehavior:CACHE	Lcom/facebook/LoggingBehavior;
    //   3: getstatic 32	com/facebook/internal/FileLruCache:TAG	Ljava/lang/String;
    //   6: ldc 125
    //   8: invokestatic 131	com/facebook/internal/Logger:log	(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;)V
    //   11: new 133	java/util/PriorityQueue
    //   14: dup
    //   15: invokespecial 134	java/util/PriorityQueue:<init>	()V
    //   18: astore 4
    //   20: aload_0
    //   21: getfield 58	com/facebook/internal/FileLruCache:directory	Ljava/io/File;
    //   24: invokestatic 138	com/facebook/internal/FileLruCache$BufferFile:excludeBufferFiles	()Ljava/io/FilenameFilter;
    //   27: invokevirtual 142	java/io/File:listFiles	(Ljava/io/FilenameFilter;)[Ljava/io/File;
    //   30: astore 5
    //   32: aload 5
    //   34: arraylength
    //   35: istore 6
    //   37: lconst_0
    //   38: lstore 7
    //   40: lconst_0
    //   41: lstore 9
    //   43: iconst_0
    //   44: istore 11
    //   46: iload 11
    //   48: iload 6
    //   50: if_icmpge +274 -> 324
    //   53: aload 5
    //   55: iload 11
    //   57: aaload
    //   58: astore 12
    //   60: new 144	com/facebook/internal/FileLruCache$ModifiedFile
    //   63: dup
    //   64: aload 12
    //   66: invokespecial 146	com/facebook/internal/FileLruCache$ModifiedFile:<init>	(Ljava/io/File;)V
    //   69: astore 13
    //   71: aload 4
    //   73: aload 13
    //   75: invokevirtual 150	java/util/PriorityQueue:add	(Ljava/lang/Object;)Z
    //   78: pop
    //   79: getstatic 123	com/facebook/LoggingBehavior:CACHE	Lcom/facebook/LoggingBehavior;
    //   82: getstatic 32	com/facebook/internal/FileLruCache:TAG	Ljava/lang/String;
    //   85: new 152	java/lang/StringBuilder
    //   88: dup
    //   89: invokespecial 153	java/lang/StringBuilder:<init>	()V
    //   92: ldc 155
    //   94: invokevirtual 159	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   97: aload 13
    //   99: invokevirtual 163	com/facebook/internal/FileLruCache$ModifiedFile:getModified	()J
    //   102: invokestatic 169	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   105: invokevirtual 172	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   108: ldc 174
    //   110: invokevirtual 159	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   113: aload 13
    //   115: invokevirtual 177	com/facebook/internal/FileLruCache$ModifiedFile:getFile	()Ljava/io/File;
    //   118: invokevirtual 180	java/io/File:getName	()Ljava/lang/String;
    //   121: invokevirtual 159	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   124: invokevirtual 183	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   127: invokestatic 131	com/facebook/internal/Logger:log	(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;)V
    //   130: lload 9
    //   132: aload 12
    //   134: invokevirtual 186	java/io/File:length	()J
    //   137: ladd
    //   138: lstore 15
    //   140: lload 7
    //   142: lconst_1
    //   143: ladd
    //   144: lstore 17
    //   146: iinc 11 1
    //   149: lload 17
    //   151: lstore 7
    //   153: lload 15
    //   155: lstore 9
    //   157: goto -111 -> 46
    //   160: lload 21
    //   162: aload_0
    //   163: getfield 45	com/facebook/internal/FileLruCache:limits	Lcom/facebook/internal/FileLruCache$Limits;
    //   166: invokevirtual 192	com/facebook/internal/FileLruCache$Limits:getByteCount	()I
    //   169: i2l
    //   170: lcmp
    //   171: ifgt +17 -> 188
    //   174: lload 23
    //   176: aload_0
    //   177: getfield 45	com/facebook/internal/FileLruCache:limits	Lcom/facebook/internal/FileLruCache$Limits;
    //   180: invokevirtual 195	com/facebook/internal/FileLruCache$Limits:getFileCount	()I
    //   183: i2l
    //   184: lcmp
    //   185: ifle +77 -> 262
    //   188: aload 4
    //   190: invokevirtual 199	java/util/PriorityQueue:remove	()Ljava/lang/Object;
    //   193: checkcast 144	com/facebook/internal/FileLruCache$ModifiedFile
    //   196: invokevirtual 177	com/facebook/internal/FileLruCache$ModifiedFile:getFile	()Ljava/io/File;
    //   199: astore 25
    //   201: getstatic 123	com/facebook/LoggingBehavior:CACHE	Lcom/facebook/LoggingBehavior;
    //   204: getstatic 32	com/facebook/internal/FileLruCache:TAG	Ljava/lang/String;
    //   207: new 152	java/lang/StringBuilder
    //   210: dup
    //   211: invokespecial 153	java/lang/StringBuilder:<init>	()V
    //   214: ldc 201
    //   216: invokevirtual 159	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   219: aload 25
    //   221: invokevirtual 180	java/io/File:getName	()Ljava/lang/String;
    //   224: invokevirtual 159	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   227: invokevirtual 183	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   230: invokestatic 131	com/facebook/internal/Logger:log	(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;)V
    //   233: lload 21
    //   235: aload 25
    //   237: invokevirtual 186	java/io/File:length	()J
    //   240: lsub
    //   241: lstore 21
    //   243: lload 23
    //   245: lconst_1
    //   246: lsub
    //   247: lstore 26
    //   249: aload 25
    //   251: invokevirtual 115	java/io/File:delete	()Z
    //   254: pop
    //   255: lload 26
    //   257: lstore 23
    //   259: goto -99 -> 160
    //   262: aload_0
    //   263: getfield 60	com/facebook/internal/FileLruCache:lock	Ljava/lang/Object;
    //   266: astore 29
    //   268: aload 29
    //   270: monitorenter
    //   271: aload_0
    //   272: iconst_0
    //   273: putfield 86	com/facebook/internal/FileLruCache:isTrimPending	Z
    //   276: aload_0
    //   277: getfield 60	com/facebook/internal/FileLruCache:lock	Ljava/lang/Object;
    //   280: invokevirtual 204	java/lang/Object:notifyAll	()V
    //   283: aload 29
    //   285: monitorexit
    //   286: return
    //   287: astore 30
    //   289: aload 29
    //   291: monitorexit
    //   292: aload 30
    //   294: athrow
    //   295: astore_1
    //   296: aload_0
    //   297: getfield 60	com/facebook/internal/FileLruCache:lock	Ljava/lang/Object;
    //   300: astore_2
    //   301: aload_2
    //   302: monitorenter
    //   303: aload_0
    //   304: iconst_0
    //   305: putfield 86	com/facebook/internal/FileLruCache:isTrimPending	Z
    //   308: aload_0
    //   309: getfield 60	com/facebook/internal/FileLruCache:lock	Ljava/lang/Object;
    //   312: invokevirtual 204	java/lang/Object:notifyAll	()V
    //   315: aload_2
    //   316: monitorexit
    //   317: aload_1
    //   318: athrow
    //   319: astore_3
    //   320: aload_2
    //   321: monitorexit
    //   322: aload_3
    //   323: athrow
    //   324: lload 7
    //   326: lstore 19
    //   328: lload 9
    //   330: lstore 21
    //   332: lload 19
    //   334: lstore 23
    //   336: goto -176 -> 160
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	339	0	this	FileLruCache
    //   295	23	1	localObject1	Object
    //   300	21	2	localObject2	Object
    //   319	4	3	localObject3	Object
    //   18	171	4	localPriorityQueue	java.util.PriorityQueue
    //   30	24	5	arrayOfFile	File[]
    //   35	16	6	i	int
    //   38	287	7	l1	long
    //   41	288	9	l2	long
    //   44	103	11	j	int
    //   58	75	12	localFile1	File
    //   69	45	13	localModifiedFile	FileLruCache.ModifiedFile
    //   138	16	15	l3	long
    //   144	6	17	l4	long
    //   326	7	19	l5	long
    //   160	74	21	localObject4	Object
    //   241	90	21	l6	long
    //   174	70	23	localObject5	Object
    //   257	78	23	l7	long
    //   199	51	25	localFile2	File
    //   247	9	26	l8	long
    //   266	24	29	localObject6	Object
    //   287	6	30	localObject7	Object
    // Exception table:
    //   from	to	target	type
    //   271	286	287	finally
    //   289	292	287	finally
    //   0	37	295	finally
    //   53	140	295	finally
    //   160	188	295	finally
    //   188	243	295	finally
    //   249	255	295	finally
    //   303	317	319	finally
    //   320	322	319	finally
  }
  
  public void clearForTest()
  {
    File[] arrayOfFile = this.directory.listFiles();
    int i = arrayOfFile.length;
    for (int j = 0; j < i; j++) {
      arrayOfFile[j].delete();
    }
  }
  
  public InputStream get(String paramString)
  {
    return get(paramString, null);
  }
  
  public InputStream get(String paramString1, String paramString2)
  {
    File localFile = new File(this.directory, Utility.md5hash(paramString1));
    try
    {
      FileInputStream localFileInputStream = new FileInputStream(localFile);
      BufferedInputStream localBufferedInputStream = new BufferedInputStream(localFileInputStream, 8192);
      try
      {
        JSONObject localJSONObject = FileLruCache.StreamHeader.readHeader(localBufferedInputStream);
        if (localJSONObject == null) {
          return null;
        }
        String str1 = localJSONObject.optString("key");
        if (str1 != null)
        {
          boolean bool1 = str1.equals(paramString1);
          if (bool1) {}
        }
        else
        {
          return null;
        }
        String str2 = localJSONObject.optString("tag", null);
        if ((paramString2 != null) || (str2 == null))
        {
          if (paramString2 != null)
          {
            boolean bool2 = paramString2.equals(str2);
            if (bool2) {}
          }
        }
        else {
          return null;
        }
        long l = new Date().getTime();
        Logger.log(LoggingBehavior.CACHE, TAG, "Setting lastModified to " + Long.valueOf(l) + " for " + localFile.getName());
        localFile.setLastModified(l);
        return localBufferedInputStream;
      }
      finally
      {
        localBufferedInputStream.close();
      }
      return null;
    }
    catch (IOException localIOException) {}
  }
  
  public InputStream interceptAndPut(String paramString, InputStream paramInputStream)
  {
    return new FileLruCache.CopyingInputStream(paramInputStream, openPutStream(paramString));
  }
  
  OutputStream openPutStream(String paramString)
  {
    return openPutStream(paramString, null);
  }
  
  /* Error */
  public OutputStream openPutStream(String paramString1, String paramString2)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 58	com/facebook/internal/FileLruCache:directory	Ljava/io/File;
    //   4: invokestatic 281	com/facebook/internal/FileLruCache$BufferFile:newFile	(Ljava/io/File;)Ljava/io/File;
    //   7: astore_3
    //   8: aload_3
    //   9: invokevirtual 115	java/io/File:delete	()Z
    //   12: pop
    //   13: aload_3
    //   14: invokevirtual 284	java/io/File:createNewFile	()Z
    //   17: ifne +34 -> 51
    //   20: new 215	java/io/IOException
    //   23: dup
    //   24: new 152	java/lang/StringBuilder
    //   27: dup
    //   28: invokespecial 153	java/lang/StringBuilder:<init>	()V
    //   31: ldc_w 286
    //   34: invokevirtual 159	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   37: aload_3
    //   38: invokevirtual 289	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   41: invokevirtual 159	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   44: invokevirtual 183	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   47: invokespecial 292	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   50: athrow
    //   51: new 294	java/io/FileOutputStream
    //   54: dup
    //   55: aload_3
    //   56: invokespecial 295	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   59: astore 5
    //   61: new 297	java/io/BufferedOutputStream
    //   64: dup
    //   65: new 299	com/facebook/internal/FileLruCache$CloseCallbackOutputStream
    //   68: dup
    //   69: aload 5
    //   71: new 301	com/facebook/internal/FileLruCache$1
    //   74: dup
    //   75: aload_0
    //   76: aload_1
    //   77: aload_3
    //   78: invokespecial 303	com/facebook/internal/FileLruCache$1:<init>	(Lcom/facebook/internal/FileLruCache;Ljava/lang/String;Ljava/io/File;)V
    //   81: invokespecial 306	com/facebook/internal/FileLruCache$CloseCallbackOutputStream:<init>	(Ljava/io/OutputStream;Lcom/facebook/internal/FileLruCache$StreamCloseCallback;)V
    //   84: sipush 8192
    //   87: invokespecial 309	java/io/BufferedOutputStream:<init>	(Ljava/io/OutputStream;I)V
    //   90: astore 6
    //   92: new 234	org/json/JSONObject
    //   95: dup
    //   96: invokespecial 310	org/json/JSONObject:<init>	()V
    //   99: astore 7
    //   101: aload 7
    //   103: ldc 8
    //   105: aload_1
    //   106: invokevirtual 314	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   109: pop
    //   110: aload_2
    //   111: invokestatic 318	com/facebook/internal/Utility:isNullOrEmpty	(Ljava/lang/String;)Z
    //   114: ifne +12 -> 126
    //   117: aload 7
    //   119: ldc 11
    //   121: aload_2
    //   122: invokevirtual 314	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   125: pop
    //   126: aload 6
    //   128: aload 7
    //   130: invokestatic 322	com/facebook/internal/FileLruCache$StreamHeader:writeHeader	(Ljava/io/OutputStream;Lorg/json/JSONObject;)V
    //   133: aload 6
    //   135: areturn
    //   136: astore 12
    //   138: getstatic 123	com/facebook/LoggingBehavior:CACHE	Lcom/facebook/LoggingBehavior;
    //   141: iconst_5
    //   142: getstatic 32	com/facebook/internal/FileLruCache:TAG	Ljava/lang/String;
    //   145: new 152	java/lang/StringBuilder
    //   148: dup
    //   149: invokespecial 153	java/lang/StringBuilder:<init>	()V
    //   152: ldc_w 324
    //   155: invokevirtual 159	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   158: aload 12
    //   160: invokevirtual 172	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   163: invokevirtual 183	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   166: invokestatic 327	com/facebook/internal/Logger:log	(Lcom/facebook/LoggingBehavior;ILjava/lang/String;Ljava/lang/String;)V
    //   169: new 215	java/io/IOException
    //   172: dup
    //   173: aload 12
    //   175: invokevirtual 330	java/io/FileNotFoundException:getMessage	()Ljava/lang/String;
    //   178: invokespecial 292	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   181: athrow
    //   182: astore 9
    //   184: getstatic 123	com/facebook/LoggingBehavior:CACHE	Lcom/facebook/LoggingBehavior;
    //   187: iconst_5
    //   188: getstatic 32	com/facebook/internal/FileLruCache:TAG	Ljava/lang/String;
    //   191: new 152	java/lang/StringBuilder
    //   194: dup
    //   195: invokespecial 153	java/lang/StringBuilder:<init>	()V
    //   198: ldc_w 332
    //   201: invokevirtual 159	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   204: aload 9
    //   206: invokevirtual 172	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   209: invokevirtual 183	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   212: invokestatic 327	com/facebook/internal/Logger:log	(Lcom/facebook/LoggingBehavior;ILjava/lang/String;Ljava/lang/String;)V
    //   215: new 215	java/io/IOException
    //   218: dup
    //   219: aload 9
    //   221: invokevirtual 333	org/json/JSONException:getMessage	()Ljava/lang/String;
    //   224: invokespecial 292	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   227: athrow
    //   228: astore 8
    //   230: aload 6
    //   232: invokevirtual 334	java/io/BufferedOutputStream:close	()V
    //   235: aload 8
    //   237: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	238	0	this	FileLruCache
    //   0	238	1	paramString1	String
    //   0	238	2	paramString2	String
    //   7	71	3	localFile	File
    //   59	11	5	localFileOutputStream	java.io.FileOutputStream
    //   90	141	6	localBufferedOutputStream	java.io.BufferedOutputStream
    //   99	30	7	localJSONObject	JSONObject
    //   228	8	8	localObject	Object
    //   182	38	9	localJSONException	org.json.JSONException
    //   136	38	12	localFileNotFoundException	java.io.FileNotFoundException
    // Exception table:
    //   from	to	target	type
    //   51	61	136	java/io/FileNotFoundException
    //   92	126	182	org/json/JSONException
    //   126	133	182	org/json/JSONException
    //   92	126	228	finally
    //   126	133	228	finally
    //   184	228	228	finally
  }
  
  long sizeInBytesForTest()
  {
    long l;
    synchronized (this.lock)
    {
      for (;;)
      {
        boolean bool = this.isTrimPending;
        if (!bool) {
          break;
        }
        try
        {
          this.lock.wait();
        }
        catch (InterruptedException localInterruptedException) {}
      }
      File[] arrayOfFile = this.directory.listFiles();
      l = 0L;
      int i = arrayOfFile.length;
      int j = 0;
      if (j < i)
      {
        l += arrayOfFile[j].length();
        j++;
      }
    }
    return l;
  }
  
  public String toString()
  {
    return "{FileLruCache: tag:" + this.tag + " file:" + this.directory.getName() + "}";
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.facebook.internal.FileLruCache
 * JD-Core Version:    0.7.0.1
 */