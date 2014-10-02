package com.viber.voip.user;

import android.graphics.Rect;
import android.view.View;
import android.view.View.OnLayoutChangeListener;
import com.actionbarsherlock.internal.nineoldandroids.animation.ObjectAnimator;
import com.actionbarsherlock.internal.nineoldandroids.animation.PropertyValuesHolder;

class PhotoSelectionActivity$3
  implements View.OnLayoutChangeListener
{
  PhotoSelectionActivity$3(PhotoSelectionActivity paramPhotoSelectionActivity) {}
  
  public void onLayoutChange(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, int paramInt7, int paramInt8)
  {
    if (PhotoSelectionActivity.access$100(this.this$0))
    {
      PhotoSelectionActivity.access$102(this.this$0, false);
      int[] arrayOfInt1 = new int[2];
      arrayOfInt1[0] = this.this$0.mOriginalPos.left;
      arrayOfInt1[1] = paramInt1;
      PropertyValuesHolder localPropertyValuesHolder1 = PropertyValuesHolder.ofInt("left", arrayOfInt1);
      int[] arrayOfInt2 = new int[2];
      arrayOfInt2[0] = this.this$0.mOriginalPos.top;
      arrayOfInt2[1] = paramInt2;
      PropertyValuesHolder localPropertyValuesHolder2 = PropertyValuesHolder.ofInt("top", arrayOfInt2);
      int[] arrayOfInt3 = new int[2];
      arrayOfInt3[0] = this.this$0.mOriginalPos.right;
      arrayOfInt3[1] = paramInt3;
      PropertyValuesHolder localPropertyValuesHolder3 = PropertyValuesHolder.ofInt("right", arrayOfInt3);
      int[] arrayOfInt4 = new int[2];
      arrayOfInt4[0] = this.this$0.mOriginalPos.bottom;
      arrayOfInt4[1] = paramInt4;
      PropertyValuesHolder localPropertyValuesHolder4 = PropertyValuesHolder.ofInt("bottom", arrayOfInt4);
      ObjectAnimator localObjectAnimator = ObjectAnimator.ofPropertyValuesHolder(PhotoSelectionActivity.access$200(this.this$0), new PropertyValuesHolder[] { localPropertyValuesHolder1, localPropertyValuesHolder2, localPropertyValuesHolder3, localPropertyValuesHolder4 }).setDuration(100L);
      if (PhotoSelectionActivity.access$300(this.this$0) != null) {
        localObjectAnimator.addListener(PhotoSelectionActivity.access$300(this.this$0));
      }
      localObjectAnimator.start();
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.user.PhotoSelectionActivity.3
 * JD-Core Version:    0.7.0.1
 */