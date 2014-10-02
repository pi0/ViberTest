package com.viber.voip.gallery.a;

import android.content.Context;
import android.provider.MediaStore.Images.Media;
import android.support.v4.app.LoaderManager;
import com.viber.provider.b;

public class e
  extends b
{
  public e(String paramString, Context paramContext, LoaderManager paramLoaderManager, com.viber.provider.e parame)
  {
    super(7, MediaStore.Images.Media.EXTERNAL_CONTENT_URI, paramContext, paramLoaderManager, parame, 0);
    a(d.a);
    a("bucket_id=" + paramString);
    b("datetaken DESC");
  }
  
  public d e(int paramInt)
  {
    if (c(paramInt)) {
      return new d(this.e);
    }
    return null;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.gallery.a.e
 * JD-Core Version:    0.7.0.1
 */