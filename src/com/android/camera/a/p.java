package com.android.camera.a;

import android.content.ContentResolver;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import android.util.Log;
import com.android.camera.z;
import java.io.File;
import java.io.FileNotFoundException;

class p
  implements c
{
  private final Uri a;
  private final d b;
  private final ContentResolver c;
  
  p(d paramd, ContentResolver paramContentResolver, Uri paramUri)
  {
    this.b = paramd;
    this.c = paramContentResolver;
    this.a = paramUri;
  }
  
  private ParcelFileDescriptor c()
  {
    try
    {
      if (this.a.getScheme().equals("file")) {
        return ParcelFileDescriptor.open(new File(this.a.getPath()), 268435456);
      }
      ParcelFileDescriptor localParcelFileDescriptor = this.c.openFileDescriptor(this.a, "r");
      return localParcelFileDescriptor;
    }
    catch (FileNotFoundException localFileNotFoundException) {}
    return null;
  }
  
  public Bitmap a(int paramInt1, int paramInt2)
  {
    return a(paramInt1, paramInt2, true, false);
  }
  
  public Bitmap a(int paramInt1, int paramInt2, boolean paramBoolean)
  {
    return a(paramInt1, paramInt2, paramBoolean, false);
  }
  
  public Bitmap a(int paramInt1, int paramInt2, boolean paramBoolean1, boolean paramBoolean2)
  {
    try
    {
      Bitmap localBitmap = z.a(paramInt1, paramInt2, c(), paramBoolean2);
      return localBitmap;
    }
    catch (Exception localException)
    {
      Log.e("UriImage", "got exception decoding bitmap ", localException);
    }
    return null;
  }
  
  public Bitmap a(boolean paramBoolean)
  {
    return a(320, 196608, paramBoolean);
  }
  
  public String a()
  {
    return this.a.getPath();
  }
  
  public long b()
  {
    return 0L;
  }
  
  public String d()
  {
    return this.a.toString();
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.android.camera.a.p
 * JD-Core Version:    0.7.0.1
 */