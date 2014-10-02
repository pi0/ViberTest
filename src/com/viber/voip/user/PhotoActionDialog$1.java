package com.viber.voip.user;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

final class PhotoActionDialog$1
  implements DialogInterface.OnClickListener
{
  PhotoActionDialog$1(PhotoActionPopup.Listener paramListener) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    if (paramInt == PhotoActionDialog.MENU_ITEM_TAKE_PIC) {
      this.val$listener.onTakePhotoChosen();
    }
    if (paramInt == PhotoActionDialog.MENU_ITEM_SELECT_PIC) {
      this.val$listener.onPickFromGalleryChosen();
    }
    if (paramInt == PhotoActionDialog.MENU_ITEM_REMOVE_PIC) {
      this.val$listener.onRemovePictureChosen();
    }
    if (paramInt == PhotoActionDialog.MENU_ITEM_IMPORT_FROM_FB) {
      this.val$listener.onImportFromFB();
    }
    if (paramInt == PhotoActionDialog.MENU_ITEM_EDIT_NAME) {
      this.val$listener.onEditName();
    }
    paramDialogInterface.dismiss();
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.user.PhotoActionDialog.1
 * JD-Core Version:    0.7.0.1
 */