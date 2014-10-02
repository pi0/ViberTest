package com.viber.voip.backgrounds.ui;

import android.view.View;
import com.actionbarsherlock.ActionBarSherlock;
import com.viber.voip.backgrounds.l;
import com.viber.voip.backgrounds.o;
import com.viber.voip.backgrounds.q;

class a
  extends l
{
  a(BackgroundGalleryActivity paramBackgroundGalleryActivity) {}
  
  public void a(o paramo)
  {
    BackgroundGalleryActivity.a(this.a).setProgressBarIndeterminateVisibility(false);
    if (BackgroundGalleryActivity.b(this.a).getVisibility() == 0) {
      BackgroundGalleryActivity.b(this.a).setVisibility(8);
    }
  }
  
  public void a(o paramo, int paramInt)
  {
    BackgroundGalleryActivity.c(this.a).setProgressBarIndeterminateVisibility(true);
    if (BackgroundGalleryActivity.b(this.a).getVisibility() == 8) {
      BackgroundGalleryActivity.b(this.a).setVisibility(0);
    }
  }
  
  public void a(o paramo, q paramq) {}
  
  public void b(o paramo)
  {
    BackgroundGalleryActivity.d(this.a).setProgressBarIndeterminateVisibility(false);
    if (BackgroundGalleryActivity.b(this.a).getVisibility() == 0) {
      BackgroundGalleryActivity.b(this.a).setVisibility(8);
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.backgrounds.ui.a
 * JD-Core Version:    0.7.0.1
 */