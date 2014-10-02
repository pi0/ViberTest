package com.viber.voip.gallery.selection;

import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import com.viber.voip.gallery.animation.SwipeableHorizontalScrollView;

class u
  implements Animation.AnimationListener
{
  u(ViberGalleryActivity paramViberGalleryActivity) {}
  
  public void onAnimationEnd(Animation paramAnimation)
  {
    ViberGalleryActivity.b(this.a).setVisibility(8);
  }
  
  public void onAnimationRepeat(Animation paramAnimation) {}
  
  public void onAnimationStart(Animation paramAnimation) {}
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.gallery.selection.u
 * JD-Core Version:    0.7.0.1
 */