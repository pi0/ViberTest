package com.viber.voip.user;

import android.os.Build.VERSION;
import android.widget.ImageView;
import android.widget.RelativeLayout.LayoutParams;
import com.actionbarsherlock.internal.nineoldandroids.animation.Animator;
import com.actionbarsherlock.internal.nineoldandroids.animation.AnimatorListenerAdapter;
import com.actionbarsherlock.internal.nineoldandroids.animation.ObjectAnimator;

class PhotoSelectionActivity$5
  extends AnimatorListenerAdapter
{
  PhotoSelectionActivity$5(PhotoSelectionActivity paramPhotoSelectionActivity) {}
  
  public void onAnimationEnd(Animator paramAnimator)
  {
    if (Build.VERSION.SDK_INT > 10) {}
    for (ObjectAnimator localObjectAnimator = ObjectAnimator.ofFloat(PhotoSelectionActivity.access$200(this.this$0), "alpha", new float[] { 0.0F }).setDuration(50L);; localObjectAnimator = ObjectAnimator.ofFloat(new PhotoSelectionActivity.AlphaObjectAnimator(this.this$0, PhotoSelectionActivity.access$200(this.this$0)), "alpha", new float[] { 0.0F }).setDuration(50L))
    {
      localObjectAnimator.addListener(new PhotoSelectionActivity.5.1(this));
      localObjectAnimator.start();
      return;
      PhotoSelectionActivity.access$200(this.this$0).setLayoutParams(new RelativeLayout.LayoutParams(PhotoSelectionActivity.access$600(this.this$0)));
      PhotoSelectionActivity.access$200(this.this$0).requestLayout();
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.user.PhotoSelectionActivity.5
 * JD-Core Version:    0.7.0.1
 */