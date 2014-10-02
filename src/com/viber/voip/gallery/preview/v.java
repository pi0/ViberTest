package com.viber.voip.gallery.preview;

import android.net.Uri;
import com.viber.voip.as;
import com.viber.voip.aw;
import com.viber.voip.ax;
import com.viber.voip.gallery.GalleryItem;
import java.util.ArrayList;

class v
  implements ax
{
  v(PhotoPreviewActivity paramPhotoPreviewActivity) {}
  
  public void a(int paramInt, aw paramaw)
  {
    if (PhotoPreviewActivity.a(this.a))
    {
      Uri localUri = ((GalleryItem)PhotoPreviewActivity.c(this.a).get(paramInt)).b();
      PhotoPreviewActivity.d(this.a).a(localUri, paramaw);
    }
  }
  
  public void b(int paramInt, aw paramaw)
  {
    if ((PhotoPreviewActivity.a(this.a)) && (PhotoPreviewActivity.b(this.a).b() == paramInt))
    {
      localUri = ((GalleryItem)PhotoPreviewActivity.c(this.a).get(paramInt)).b();
      PhotoPreviewActivity.d(this.a).a(localUri, paramaw);
      PhotoPreviewActivity.e(this.a).d(paramInt, localUri);
      this.a.b();
    }
    while (PhotoPreviewActivity.f(this.a))
    {
      Uri localUri;
      return;
    }
    PhotoPreviewActivity.g(this.a);
    this.a.b();
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.gallery.preview.v
 * JD-Core Version:    0.7.0.1
 */