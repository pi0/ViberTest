package com.android.camera.a;

import android.content.ContentResolver;
import android.net.Uri;

public class o
  implements d
{
  private c a;
  private Uri b;
  
  public o(ContentResolver paramContentResolver, Uri paramUri)
  {
    this.b = paramUri;
    this.a = new p(this, paramContentResolver, paramUri);
  }
  
  public c a(int paramInt)
  {
    if (paramInt == 0) {
      return this.a;
    }
    return null;
  }
  
  public c a(Uri paramUri)
  {
    if (paramUri.equals(this.b)) {
      return this.a;
    }
    return null;
  }
  
  public void a()
  {
    this.a = null;
    this.b = null;
  }
  
  public int b()
  {
    return 1;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.android.camera.a.o
 * JD-Core Version:    0.7.0.1
 */