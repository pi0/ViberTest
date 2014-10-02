package com.viber.voip.user;

import android.view.View;
import android.widget.RelativeLayout.LayoutParams;

class PhotoSelectionActivity$MarginObjectAnimator
{
  private int bottomMargin;
  private int leftMargin;
  private int rightMargin;
  private int topMargin;
  private View view;
  
  PhotoSelectionActivity$MarginObjectAnimator(PhotoSelectionActivity paramPhotoSelectionActivity, View paramView)
  {
    this.view = paramView;
  }
  
  public float getLeft()
  {
    return this.leftMargin;
  }
  
  public void setBottom(int paramInt)
  {
    this.bottomMargin = paramInt;
    RelativeLayout.LayoutParams localLayoutParams = (RelativeLayout.LayoutParams)this.view.getLayoutParams();
    localLayoutParams.height += localLayoutParams.bottomMargin - this.bottomMargin;
    localLayoutParams.bottomMargin = this.bottomMargin;
    this.view.setLayoutParams(localLayoutParams);
    this.view.requestLayout();
  }
  
  public void setLeft(int paramInt)
  {
    this.leftMargin = paramInt;
    RelativeLayout.LayoutParams localLayoutParams = (RelativeLayout.LayoutParams)this.view.getLayoutParams();
    localLayoutParams.leftMargin = this.leftMargin;
    this.view.setLayoutParams(localLayoutParams);
    this.view.requestLayout();
  }
  
  public void setRight(int paramInt)
  {
    this.rightMargin = paramInt;
    RelativeLayout.LayoutParams localLayoutParams = (RelativeLayout.LayoutParams)this.view.getLayoutParams();
    localLayoutParams.width += localLayoutParams.rightMargin - this.rightMargin;
    localLayoutParams.rightMargin = this.rightMargin;
    this.view.setLayoutParams(localLayoutParams);
    this.view.invalidate();
    this.view.requestLayout();
  }
  
  public void setTop(int paramInt)
  {
    this.topMargin = paramInt;
    RelativeLayout.LayoutParams localLayoutParams = (RelativeLayout.LayoutParams)this.view.getLayoutParams();
    if (localLayoutParams.leftMargin > 0) {
      localLayoutParams.height += localLayoutParams.topMargin - this.topMargin;
    }
    localLayoutParams.topMargin = this.topMargin;
    this.view.setLayoutParams(localLayoutParams);
    this.view.requestLayout();
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.user.PhotoSelectionActivity.MarginObjectAnimator
 * JD-Core Version:    0.7.0.1
 */