package com.viber.voip.user;

import android.content.DialogInterface;
import android.content.DialogInterface.OnDismissListener;

class PhotoSelectionHandler$2
  implements DialogInterface.OnDismissListener
{
  PhotoSelectionHandler$2(PhotoSelectionHandler paramPhotoSelectionHandler, PhotoSelectionHandler.PhotoActionListener paramPhotoActionListener) {}
  
  public void onDismiss(DialogInterface paramDialogInterface)
  {
    this.val$listener.onPhotoSelectionDismissed();
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.user.PhotoSelectionHandler.2
 * JD-Core Version:    0.7.0.1
 */