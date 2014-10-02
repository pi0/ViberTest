package com.viber.voip.user;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.widget.ImageView;
import com.viber.voip.messages.controller.dn;
import com.viber.voip.messages.i;

class PhotoSelectionActivity$RemovePictureDialogFragment$2
  implements DialogInterface.OnClickListener
{
  PhotoSelectionActivity$RemovePictureDialogFragment$2(PhotoSelectionActivity.RemovePictureDialogFragment paramRemovePictureDialogFragment) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    if (PhotoSelectionActivity.access$2000(this.this$1.this$0) != null)
    {
      PhotoSelectionActivity.access$2002(this.this$1.this$0, null);
      PhotoSelectionActivity.access$200(this.this$1.this$0).invalidate();
      PhotoSelectionActivity.access$200(this.this$1.this$0).setImageBitmap(null);
      this.this$1.this$0.mMessagesManager.e().a(PhotoSelectionActivity.access$2000(this.this$1.this$0));
    }
    PhotoSelectionActivity.access$1900((PhotoSelectionActivity)this.this$1.getActivity());
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.user.PhotoSelectionActivity.RemovePictureDialogFragment.2
 * JD-Core Version:    0.7.0.1
 */