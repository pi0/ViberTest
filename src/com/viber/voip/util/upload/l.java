package com.viber.voip.util.upload;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Environment;
import com.viber.voip.ViberApplication;
import com.viber.voip.messages.extras.image.h;
import com.viber.voip.messages.extras.image.k;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

public class l
  extends d
{
  private static final String i = l.class.getSimpleName();
  private boolean j;
  private boolean k;
  private int l;
  private int m;
  
  public l(String paramString1, String paramString2, String paramString3, boolean paramBoolean1, boolean paramBoolean2, int paramInt1, int paramInt2)
  {
    super(paramString1, paramString2, paramString3);
    this.j = paramBoolean1;
    this.k = paramBoolean2;
    this.l = paramInt1;
    this.m = paramInt2;
  }
  
  private void a(Bitmap paramBitmap, InputStream paramInputStream, OutputStream paramOutputStream)
  {
    if (paramBitmap != null)
    {
      byte[] arrayOfByte = h.b(paramBitmap);
      paramOutputStream.write(arrayOfByte, 0, arrayOfByte.length);
      paramOutputStream.flush();
      paramOutputStream.close();
    }
    paramInputStream.close();
  }
  
  private void a(InputStream paramInputStream, OutputStream paramOutputStream)
  {
    a("saveLocationStream");
    m();
    Bitmap localBitmap1 = com.viber.voip.messages.extras.map.d.a(BitmapFactory.decodeStream(paramInputStream));
    if (this.j)
    {
      Bitmap localBitmap2 = null;
      if (localBitmap1 != null) {
        localBitmap2 = new k(2130837719, this.l, this.m).a(localBitmap1);
      }
      a(localBitmap2, paramInputStream, paramOutputStream);
      return;
    }
    a(localBitmap1, paramInputStream, paramOutputStream);
  }
  
  private void a(String paramString)
  {
    ViberApplication.log(3, i, "[" + this.c + "] " + paramString);
  }
  
  private void b(InputStream paramInputStream, OutputStream paramOutputStream)
  {
    a("saveLocationStream");
    m();
    Bitmap localBitmap1 = BitmapFactory.decodeStream(paramInputStream);
    if (this.j)
    {
      Bitmap localBitmap2 = null;
      if (localBitmap1 != null) {
        localBitmap2 = new k(2130837719, this.l, this.m).a(localBitmap1);
      }
      a(localBitmap2, paramInputStream, paramOutputStream);
      return;
    }
    a(localBitmap1, paramInputStream, paramOutputStream);
  }
  
  private void m()
  {
    if (!"mounted".equals(Environment.getExternalStorageState())) {
      throw new IOException("sdcard unmounted");
    }
  }
  
  /* Error */
  protected void b(java.net.URL paramURL)
  {
    // Byte code:
    //   0: aload_0
    //   1: aload_1
    //   2: invokevirtual 135	com/viber/voip/util/upload/l:a	(Ljava/net/URL;)V
    //   5: aload_0
    //   6: getfield 139	com/viber/voip/util/upload/l:f	Ljava/io/File;
    //   9: ifnull +60 -> 69
    //   12: aload_0
    //   13: aload_0
    //   14: getfield 139	com/viber/voip/util/upload/l:f	Ljava/io/File;
    //   17: invokestatic 145	android/net/Uri:fromFile	(Ljava/io/File;)Landroid/net/Uri;
    //   20: invokevirtual 148	com/viber/voip/util/upload/l:a	(Landroid/net/Uri;)Ljava/io/OutputStream;
    //   23: astore 4
    //   25: aload_0
    //   26: getfield 31	com/viber/voip/util/upload/l:k	Z
    //   29: ifeq +41 -> 70
    //   32: aload_0
    //   33: aload_0
    //   34: getfield 152	com/viber/voip/util/upload/l:d	Ljava/io/InputStream;
    //   37: aload 4
    //   39: invokespecial 154	com/viber/voip/util/upload/l:a	(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    //   42: aload_0
    //   43: aconst_null
    //   44: putfield 152	com/viber/voip/util/upload/l:d	Ljava/io/InputStream;
    //   47: aload_0
    //   48: aload_0
    //   49: getfield 139	com/viber/voip/util/upload/l:f	Ljava/io/File;
    //   52: invokevirtual 157	com/viber/voip/util/upload/l:b	(Ljava/io/File;)V
    //   55: getstatic 159	com/viber/voip/util/upload/l:a	Z
    //   58: ifne +11 -> 69
    //   61: aload_0
    //   62: getfield 139	com/viber/voip/util/upload/l:f	Ljava/io/File;
    //   65: invokevirtual 165	java/io/File:delete	()Z
    //   68: pop
    //   69: return
    //   70: aload_0
    //   71: aload_0
    //   72: getfield 152	com/viber/voip/util/upload/l:d	Ljava/io/InputStream;
    //   75: aload 4
    //   77: invokespecial 167	com/viber/voip/util/upload/l:b	(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    //   80: goto -38 -> 42
    //   83: astore_2
    //   84: getstatic 159	com/viber/voip/util/upload/l:a	Z
    //   87: ifne +11 -> 98
    //   90: aload_0
    //   91: getfield 139	com/viber/voip/util/upload/l:f	Ljava/io/File;
    //   94: invokevirtual 165	java/io/File:delete	()Z
    //   97: pop
    //   98: aload_2
    //   99: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	100	0	this	l
    //   0	100	1	paramURL	java.net.URL
    //   83	16	2	localObject	java.lang.Object
    //   23	53	4	localOutputStream	OutputStream
    // Exception table:
    //   from	to	target	type
    //   12	42	83	finally
    //   42	55	83	finally
    //   70	80	83	finally
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.util.upload.l
 * JD-Core Version:    0.7.0.1
 */