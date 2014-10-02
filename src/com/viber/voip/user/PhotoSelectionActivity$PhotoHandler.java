package com.viber.voip.user;

import android.content.Context;
import android.content.Intent;
import android.view.View;
import java.io.File;

final class PhotoSelectionActivity$PhotoHandler
  extends PhotoSelectionHandler
{
  private final PhotoSelectionHandler.PhotoActionListener mListener = new PhotoSelectionActivity.PhotoHandler.PhotoListener(this, null);
  
  private PhotoSelectionActivity$PhotoHandler(PhotoSelectionActivity paramPhotoSelectionActivity, Context paramContext, View paramView, int paramInt)
  {
    super(paramContext, paramView, paramInt, PhotoSelectionActivity.access$1400(paramPhotoSelectionActivity));
  }
  
  public PhotoSelectionHandler.PhotoActionListener getListener()
  {
    return this.mListener;
  }
  
  public void startPhotoActivity(Intent paramIntent, int paramInt, File paramFile)
  {
    PhotoSelectionActivity.access$1602(this.this$0, true);
    PhotoSelectionActivity localPhotoSelectionActivity = this.this$0;
    if (paramFile != null) {}
    for (String str = paramFile.getAbsolutePath();; str = null)
    {
      PhotoSelectionActivity.access$1702(localPhotoSelectionActivity, str);
      this.this$0.startActivityForResult(paramIntent, paramInt);
      return;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.user.PhotoSelectionActivity.PhotoHandler
 * JD-Core Version:    0.7.0.1
 */