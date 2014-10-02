package com.viber.voip.stickers;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Picture;
import com.viber.svg.jni.SvgObject;

public class bk
{
  public static final String b = bk.class.getSimpleName();
  
  public void a(long paramLong, Bitmap paramBitmap, int paramInt1, int paramInt2)
  {
    a(paramLong, paramBitmap, 0, 0, paramInt1, paramInt2);
  }
  
  public void a(long paramLong, Bitmap paramBitmap, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    a(paramLong, paramBitmap, paramInt1, paramInt2, paramInt3, paramInt4, -1);
  }
  
  public void a(long paramLong, Bitmap paramBitmap, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5)
  {
    if ((paramLong == -1L) || (paramBitmap == null)) {
      return;
    }
    SvgObject.svgRenderToArea(paramLong, new Canvas(paramBitmap), paramInt1, paramInt2, paramInt3, paramInt4, paramInt5);
  }
  
  public void a(long paramLong, Picture paramPicture, int paramInt1, int paramInt2)
  {
    a(paramLong, paramPicture, paramInt1, paramInt2, 0, 0);
  }
  
  public void a(long paramLong, Picture paramPicture, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if ((paramPicture == null) || (paramLong == -1L)) {
      return;
    }
    paramPicture.beginRecording(paramInt1, paramInt2);
    SvgObject.svgRenderToArea(paramLong, paramPicture.beginRecording(paramInt1, paramInt2), paramInt3, paramInt4, paramInt1, paramInt2, -1);
    paramPicture.endRecording();
  }
  
  /* Error */
  public long c(String paramString)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: new 61	java/io/FileInputStream
    //   5: dup
    //   6: aload_1
    //   7: invokespecial 64	java/io/FileInputStream:<init>	(Ljava/lang/String;)V
    //   10: astore_3
    //   11: aload_3
    //   12: invokevirtual 70	java/io/InputStream:available	()I
    //   15: newarray byte
    //   17: astore 10
    //   19: aload_3
    //   20: aload 10
    //   22: invokevirtual 74	java/io/InputStream:read	([B)I
    //   25: pop
    //   26: aload_3
    //   27: invokevirtual 77	java/io/InputStream:close	()V
    //   30: aload 10
    //   32: ldc 79
    //   34: invokestatic 85	org/apache/http/util/EncodingUtils:getString	([BLjava/lang/String;)Ljava/lang/String;
    //   37: astore 12
    //   39: invokestatic 89	com/viber/svg/jni/SvgObject:svgCreate	()J
    //   42: lstore 13
    //   44: lload 13
    //   46: aload 12
    //   48: invokestatic 93	com/viber/svg/jni/SvgObject:svgParseBuffer	(JLjava/lang/String;)I
    //   51: istore 15
    //   53: iload 15
    //   55: ifeq +26 -> 81
    //   58: aload_3
    //   59: ifnull +7 -> 66
    //   62: aload_3
    //   63: invokevirtual 77	java/io/InputStream:close	()V
    //   66: ldc2_w 28
    //   69: lreturn
    //   70: astore 17
    //   72: aload 17
    //   74: invokevirtual 96	java/io/IOException:printStackTrace	()V
    //   77: ldc2_w 28
    //   80: lreturn
    //   81: aload_3
    //   82: ifnull +7 -> 89
    //   85: aload_3
    //   86: invokevirtual 77	java/io/InputStream:close	()V
    //   89: lload 13
    //   91: lreturn
    //   92: astore 16
    //   94: aload 16
    //   96: invokevirtual 96	java/io/IOException:printStackTrace	()V
    //   99: goto -10 -> 89
    //   102: astore 19
    //   104: aload_2
    //   105: ifnull -39 -> 66
    //   108: aload_2
    //   109: invokevirtual 77	java/io/InputStream:close	()V
    //   112: ldc2_w 28
    //   115: lreturn
    //   116: astore 5
    //   118: aload 5
    //   120: invokevirtual 96	java/io/IOException:printStackTrace	()V
    //   123: ldc2_w 28
    //   126: lreturn
    //   127: astore 18
    //   129: aconst_null
    //   130: astore_3
    //   131: aload_3
    //   132: ifnull -66 -> 66
    //   135: aload_3
    //   136: invokevirtual 77	java/io/InputStream:close	()V
    //   139: ldc2_w 28
    //   142: lreturn
    //   143: astore 7
    //   145: aload 7
    //   147: invokevirtual 96	java/io/IOException:printStackTrace	()V
    //   150: ldc2_w 28
    //   153: lreturn
    //   154: astore 8
    //   156: aconst_null
    //   157: astore_3
    //   158: aload_3
    //   159: ifnull +7 -> 166
    //   162: aload_3
    //   163: invokevirtual 77	java/io/InputStream:close	()V
    //   166: aload 8
    //   168: athrow
    //   169: astore 9
    //   171: aload 9
    //   173: invokevirtual 96	java/io/IOException:printStackTrace	()V
    //   176: goto -10 -> 166
    //   179: astore 8
    //   181: goto -23 -> 158
    //   184: astore 6
    //   186: goto -55 -> 131
    //   189: astore 4
    //   191: aload_3
    //   192: astore_2
    //   193: goto -89 -> 104
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	196	0	this	bk
    //   0	196	1	paramString	String
    //   1	192	2	localObject1	Object
    //   10	182	3	localFileInputStream	java.io.FileInputStream
    //   189	1	4	localFileNotFoundException1	java.io.FileNotFoundException
    //   116	3	5	localIOException1	java.io.IOException
    //   184	1	6	localIOException2	java.io.IOException
    //   143	3	7	localIOException3	java.io.IOException
    //   154	13	8	localObject2	Object
    //   179	1	8	localObject3	Object
    //   169	3	9	localIOException4	java.io.IOException
    //   17	14	10	arrayOfByte	byte[]
    //   37	10	12	str	String
    //   42	48	13	l	long
    //   51	3	15	i	int
    //   92	3	16	localIOException5	java.io.IOException
    //   70	3	17	localIOException6	java.io.IOException
    //   127	1	18	localIOException7	java.io.IOException
    //   102	1	19	localFileNotFoundException2	java.io.FileNotFoundException
    // Exception table:
    //   from	to	target	type
    //   62	66	70	java/io/IOException
    //   85	89	92	java/io/IOException
    //   2	11	102	java/io/FileNotFoundException
    //   108	112	116	java/io/IOException
    //   2	11	127	java/io/IOException
    //   135	139	143	java/io/IOException
    //   2	11	154	finally
    //   162	166	169	java/io/IOException
    //   11	53	179	finally
    //   11	53	184	java/io/IOException
    //   11	53	189	java/io/FileNotFoundException
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.stickers.bk
 * JD-Core Version:    0.7.0.1
 */