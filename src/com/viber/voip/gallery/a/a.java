package com.viber.voip.gallery.a;

import android.content.Context;
import android.provider.MediaStore.Images.Media;
import android.support.v4.app.LoaderManager;
import com.viber.provider.e;

public class a
  extends com.viber.provider.b
{
  public a(Context paramContext, LoaderManager paramLoaderManager, e parame)
  {
    super(6, MediaStore.Images.Media.EXTERNAL_CONTENT_URI, paramContext, paramLoaderManager, parame, 0);
    a(b.a);
    a("1=1) GROUP BY (bucket_id");
    b("datetaken DESC");
  }
  
  public b e(int paramInt)
  {
    if (c(paramInt)) {
      return new b(this.e);
    }
    return null;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.gallery.a.a
 * JD-Core Version:    0.7.0.1
 */