package com.viber.voip.gallery.preview;

import android.content.res.Resources;
import android.view.View;
import com.viber.voip.as;
import com.viber.voip.messages.ui.PositioningAwareFrameLayout;
import com.viber.voip.messages.ui.du;

class w
  extends du
{
  w(PhotoPreviewActivity paramPhotoPreviewActivity) {}
  
  public void a(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    Resources localResources = this.a.getResources();
    int i = paramInt1 - 2 * (int)localResources.getDimension(2131362203);
    int j = paramInt2 - ((int)localResources.getDimension(2131362205) + (int)localResources.getDimension(2131362204));
    PhotoPreviewActivity.e(this.a).a(i, j);
    this.a.a.post(new x(this));
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.gallery.preview.w
 * JD-Core Version:    0.7.0.1
 */