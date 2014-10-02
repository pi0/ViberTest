package com.viber.voip.user;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ListPopupWindow;
import java.util.ArrayList;

final class PhotoActionPopup$1
  implements AdapterView.OnItemClickListener
{
  PhotoActionPopup$1(ArrayList paramArrayList, PhotoActionPopup.Listener paramListener, ListPopupWindow paramListPopupWindow) {}
  
  public void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    switch (((PhotoActionPopup.ChoiceListItem)this.val$choices.get(paramInt)).getId())
    {
    }
    for (;;)
    {
      this.val$listPopupWindow.dismiss();
      return;
      this.val$listener.onUseAsPrimaryChosen();
      continue;
      this.val$listener.onRemovePictureChosen();
      continue;
      this.val$listener.onTakePhotoChosen();
      continue;
      this.val$listener.onPickFromGalleryChosen();
      continue;
      this.val$listener.onEditName();
      continue;
      this.val$listener.onImportFromFB();
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.user.PhotoActionPopup.1
 * JD-Core Version:    0.7.0.1
 */