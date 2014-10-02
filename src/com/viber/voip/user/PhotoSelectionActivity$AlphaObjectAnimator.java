package com.viber.voip.user;

import android.graphics.drawable.Drawable;
import android.view.View;

class PhotoSelectionActivity$AlphaObjectAnimator
{
  private float alpha;
  private View imageView;
  
  PhotoSelectionActivity$AlphaObjectAnimator(PhotoSelectionActivity paramPhotoSelectionActivity, View paramView)
  {
    this.imageView = paramView;
    this.alpha = 1.0F;
  }
  
  public float getAlpha()
  {
    return this.alpha;
  }
  
  public void setAlpha(float paramFloat)
  {
    this.alpha = paramFloat;
    Drawable localDrawable = this.imageView.getBackground();
    if (localDrawable != null)
    {
      localDrawable.setAlpha((int)(255.0F * paramFloat));
      this.imageView.invalidate();
      return;
    }
    this.imageView.setAlpha(paramFloat);
    this.imageView.invalidate();
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.user.PhotoSelectionActivity.AlphaObjectAnimator
 * JD-Core Version:    0.7.0.1
 */