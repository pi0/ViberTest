package com.viber.voip.util.upload;

import android.net.Uri;

class al
{
  public Uri a;
  public ak b;
  
  public al(Uri paramUri, ak paramak)
  {
    this.a = paramUri;
    this.b = paramak;
  }
  
  public boolean equals(Object paramObject)
  {
    al localal = (al)paramObject;
    return (this.a.equals(localal.a)) && (this.b.equals(localal.b));
  }
  
  public int hashCode()
  {
    return this.a.getPath().hashCode() + this.b.a().hashCode();
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.util.upload.al
 * JD-Core Version:    0.7.0.1
 */