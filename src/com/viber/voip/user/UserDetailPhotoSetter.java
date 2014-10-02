package com.viber.voip.user;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.net.Uri;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnTouchListener;
import android.view.animation.Animation;
import android.widget.ImageView;
import android.widget.ListView;
import com.viber.voip.a.k;
import com.viber.voip.util.ao;

public class UserDetailPhotoSetter
  extends ImageViewDrawableSetter
{
  private static final int EVENT_COUNT = 3;
  private static k contactInfoAction = new k();
  private float[] lastYs = new float[3];
  private boolean mDisableTouch;
  private View mParentTarget;
  private int photoViewHeight = -1;
  private float startY = -1.0F;
  View.OnTouchListener touchListener = new UserDetailPhotoSetter.1(this);
  
  private float average(float[] paramArrayOfFloat)
  {
    float f = 0.0F;
    for (int i = 0; i < 3; i++) {
      f += paramArrayOfFloat[i];
    }
    return f / 3.0F;
  }
  
  public static void collapse(int paramInt, View paramView1, View paramView2)
  {
    UserDetailPhotoSetter.2 local2 = new UserDetailPhotoSetter.2(paramView1, paramInt, paramView2);
    local2.setDuration((int)(paramView1.getMeasuredHeight() / paramView1.getContext().getResources().getDisplayMetrics().density));
    paramView1.startAnimation(local2);
  }
  
  private void ensureHeaderPosition()
  {
    if ((getTarget() != null) && (this.mParentTarget != null)) {
      collapse(this.photoViewHeight, this.mParentTarget, getTarget());
    }
  }
  
  private void initializeYsHistory()
  {
    for (int i = 0; i < 3; i++) {
      this.lastYs[i] = 0.0F;
    }
  }
  
  private boolean isFirstVisible(ListView paramListView)
  {
    if (paramListView.getCount() == 0) {}
    do
    {
      return true;
      if (paramListView.getFirstVisiblePosition() != 0) {
        break;
      }
    } while ((paramListView.getChildAt(0) != null) && (paramListView.getChildAt(0).getTop() >= 0));
    return false;
    return false;
  }
  
  private void pullDown(float paramFloat)
  {
    int j;
    int k;
    if (this.mParentTarget != null)
    {
      int i = (int)Math.max(average(this.lastYs) - paramFloat, 0.0F);
      j = this.photoViewHeight + i / 2;
      k = this.mParentTarget.getWidth();
      if ((!ao.b(this.mParentTarget.getContext())) || (this.mDisableTouch)) {
        break label93;
      }
    }
    label93:
    for (int m = 1;; m = 0)
    {
      if (((m != 0) && (j <= k)) || ((m == 0) && (j < 720))) {
        setPhotoScroll(j);
      }
      return;
    }
  }
  
  private void setPhotoScroll(int paramInt)
  {
    getTarget().getLayoutParams().height = paramInt;
    getTarget().requestLayout();
    this.mParentTarget.getLayoutParams().height = paramInt;
    this.mParentTarget.requestLayout();
  }
  
  private View.OnClickListener setupClickListener(Context paramContext, Uri paramUri, boolean paramBoolean1, boolean paramBoolean2)
  {
    if (getTarget() == null) {
      return null;
    }
    return new UserDetailPhotoSetter.PhotoClickListener(paramContext, paramUri, paramBoolean1, paramBoolean2);
  }
  
  private void updateEventStates(MotionEvent paramMotionEvent)
  {
    for (int i = 0; i < 2; i++) {
      this.lastYs[i] = this.lastYs[(i + 1)];
    }
    float f = paramMotionEvent.getY();
    this.lastYs[2] = f;
  }
  
  public View.OnTouchListener getTouchListener()
  {
    return this.touchListener;
  }
  
  public View.OnClickListener setupContactDetailsPhotoForClick(Context paramContext, ImageView paramImageView, boolean paramBoolean1, View paramView, Uri paramUri, boolean paramBoolean2)
  {
    setTarget(paramImageView);
    this.mParentTarget = paramView;
    this.mDisableTouch = paramBoolean1;
    return setupClickListener(paramContext, paramUri, paramBoolean2, false);
  }
  
  public View.OnClickListener setupContactPhotoForClick(Context paramContext, Bitmap paramBitmap, boolean paramBoolean1, ImageView paramImageView, View paramView, Uri paramUri, boolean paramBoolean2)
  {
    setTarget(paramImageView);
    this.mParentTarget = paramView;
    this.mDisableTouch = paramBoolean1;
    return setupClickListener(paramContext, paramUri, paramBoolean2, true);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.user.UserDetailPhotoSetter
 * JD-Core Version:    0.7.0.1
 */