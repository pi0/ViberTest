package com.viber.voip.user;

import android.view.View;
import android.view.animation.Animation;
import android.view.animation.Transformation;

final class UserDetailPhotoSetter$2
  extends Animation
{
  int newHeight = this.val$v.getMeasuredHeight();
  
  UserDetailPhotoSetter$2(View paramView1, int paramInt, View paramView2) {}
  
  protected void applyTransformation(float paramFloat, Transformation paramTransformation)
  {
    if (this.newHeight > this.val$targetHeight) {
      this.newHeight = ((int)(this.newHeight - paramFloat * (this.newHeight - this.val$targetHeight)));
    }
    this.val$v.getLayoutParams().height = this.newHeight;
    this.val$v.requestLayout();
    this.val$v1.getLayoutParams().height = this.newHeight;
    this.val$v1.requestLayout();
  }
  
  public boolean willChangeBounds()
  {
    return true;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.user.UserDetailPhotoSetter.2
 * JD-Core Version:    0.7.0.1
 */