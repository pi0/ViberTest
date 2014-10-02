package com.viber.voip.gallery.preview;

import android.view.View;
import com.nineoldandroids.animation.ObjectAnimator;
import com.nineoldandroids.view.ViewHelper;

class h
  implements Runnable
{
  h(DoodleBaseActivity paramDoodleBaseActivity) {}
  
  public void run()
  {
    ViewHelper.setTranslationY(this.a.c, this.a.c.getHeight());
    ViewHelper.setAlpha(this.a.c, 1.0F);
    ObjectAnimator localObjectAnimator = ObjectAnimator.ofFloat(this.a.c, "translationY", new float[] { 0.0F });
    localObjectAnimator.setDuration(100L);
    localObjectAnimator.start();
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.gallery.preview.h
 * JD-Core Version:    0.7.0.1
 */