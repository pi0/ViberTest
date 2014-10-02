package com.viber.voip.user;

import android.os.Build.VERSION;
import android.view.ViewGroup.MarginLayoutParams;
import android.widget.ImageView;
import com.actionbarsherlock.internal.nineoldandroids.animation.Animator;
import com.actionbarsherlock.internal.nineoldandroids.animation.AnimatorListenerAdapter;

class PhotoSelectionActivity$4
  extends AnimatorListenerAdapter
{
  PhotoSelectionActivity$4(PhotoSelectionActivity paramPhotoSelectionActivity) {}
  
  private void capturePhotoPos()
  {
    PhotoSelectionActivity.access$200(this.this$0).requestLayout();
    if (Build.VERSION.SDK_INT > 10)
    {
      this.this$0.mOriginalPos.left = PhotoSelectionActivity.access$200(this.this$0).getLeft();
      this.this$0.mOriginalPos.top = PhotoSelectionActivity.access$200(this.this$0).getTop();
      this.this$0.mOriginalPos.right = PhotoSelectionActivity.access$200(this.this$0).getRight();
      this.this$0.mOriginalPos.bottom = PhotoSelectionActivity.access$200(this.this$0).getBottom();
      return;
    }
    ViewGroup.MarginLayoutParams localMarginLayoutParams = (ViewGroup.MarginLayoutParams)PhotoSelectionActivity.access$200(this.this$0).getLayoutParams();
    this.this$0.mOriginalPos.left = localMarginLayoutParams.leftMargin;
    this.this$0.mOriginalPos.top = localMarginLayoutParams.topMargin;
    this.this$0.mOriginalPos.right = localMarginLayoutParams.rightMargin;
    this.this$0.mOriginalPos.bottom = localMarginLayoutParams.bottomMargin;
  }
  
  public void onAnimationCancel(Animator paramAnimator)
  {
    capturePhotoPos();
  }
  
  public void onAnimationEnd(Animator paramAnimator)
  {
    capturePhotoPos();
    if ((PhotoSelectionActivity.access$400(this.this$0) != null) && (PhotoSelectionActivity.access$500(this.this$0))) {
      PhotoSelectionActivity.access$400(this.this$0).onClick(PhotoSelectionActivity.access$200(this.this$0));
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.user.PhotoSelectionActivity.4
 * JD-Core Version:    0.7.0.1
 */