package com.viber.voip.messages.extras.fb;

import android.content.ContentResolver;
import android.content.Context;
import android.net.Uri;
import com.viber.voip.ViberApplication;
import java.io.InputStream;
import java.io.OutputStream;

public class ak
{
  static
  {
    if (!ak.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      a = bool;
      return;
    }
  }
  
  private ak()
  {
    if (!a) {
      throw new AssertionError();
    }
  }
  
  public static InputStream a(Context paramContext, Uri paramUri)
  {
    ViberApplication.log(3, "Util", "Util.openStreamByUri: " + paramUri);
    if (paramUri != null) {
      return paramContext.getContentResolver().openInputStream(paramUri);
    }
    throw new IllegalArgumentException("Uri can not be null");
  }
  
  public static void a(Context paramContext, Uri paramUri, OutputStream paramOutputStream)
  {
    ViberApplication.log(3, "Util", "Util.writeByUri: " + paramUri);
    a(a(paramContext, paramUri), paramOutputStream);
  }
  
  public static void a(InputStream paramInputStream, OutputStream paramOutputStream)
  {
    a(paramInputStream, paramOutputStream, 4096);
  }
  
  public static void a(InputStream paramInputStream, OutputStream paramOutputStream, int paramInt)
  {
    ViberApplication.log(3, "Util", "Util.transferBytes");
    byte[] arrayOfByte = new byte[paramInt];
    for (;;)
    {
      int i = paramInputStream.read(arrayOfByte);
      if (i == -1) {
        break;
      }
      paramOutputStream.write(arrayOfByte, 0, i);
    }
    paramOutputStream.flush();
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.extras.fb.ak
 * JD-Core Version:    0.7.0.1
 */