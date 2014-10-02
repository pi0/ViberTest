package com.viber.voip.user;

import android.widget.PopupWindow.OnDismissListener;

class PhotoSelectionHandler$1
  implements PopupWindow.OnDismissListener
{
  PhotoSelectionHandler$1(PhotoSelectionHandler paramPhotoSelectionHandler, PhotoSelectionHandler.PhotoActionListener paramPhotoActionListener) {}
  
  public void onDismiss()
  {
    this.val$listener.onPhotoSelectionDismissed();
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.user.PhotoSelectionHandler.1
 * JD-Core Version:    0.7.0.1
 */