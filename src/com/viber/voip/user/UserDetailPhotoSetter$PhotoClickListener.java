package com.viber.voip.user;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.graphics.Rect;
import android.net.Uri;
import android.view.View;
import android.view.View.OnClickListener;
import com.viber.voip.a.bc;
import com.viber.voip.a.k;

final class UserDetailPhotoSetter$PhotoClickListener
  implements View.OnClickListener
{
  private final Context mContext;
  private final boolean mExpandPhotoOnClick;
  private final boolean mIsProfile;
  private final Uri mPhotoUri;
  
  public UserDetailPhotoSetter$PhotoClickListener(Context paramContext, Uri paramUri, boolean paramBoolean1, boolean paramBoolean2)
  {
    this.mContext = paramContext;
    this.mPhotoUri = paramUri;
    this.mExpandPhotoOnClick = paramBoolean1;
    this.mIsProfile = paramBoolean2;
  }
  
  public void onClick(View paramView)
  {
    int[] arrayOfInt = new int[2];
    paramView.getLocationOnScreen(arrayOfInt);
    Rect localRect = new Rect();
    localRect.left = ((int)(0.5F + 1.0F * arrayOfInt[0]));
    localRect.top = ((int)(0.5F + 1.0F * arrayOfInt[1]));
    localRect.right = ((int)(0.5F + 1.0F * (arrayOfInt[0] + paramView.getWidth())));
    localRect.bottom = ((int)(0.5F + 1.0F * (arrayOfInt[1] + paramView.getHeight())));
    Intent localIntent = PhotoSelectionActivity.buildIntent(this.mContext, this.mPhotoUri, localRect, this.mIsProfile, false, this.mExpandPhotoOnClick);
    ((Activity)this.mContext).startActivityForResult(localIntent, 1233);
    if (this.mExpandPhotoOnClick) {
      bc.a().a(UserDetailPhotoSetter.access$000().f());
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.user.UserDetailPhotoSetter.PhotoClickListener
 * JD-Core Version:    0.7.0.1
 */