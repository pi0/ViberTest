package com.viber.voip.user;

import android.annotation.SuppressLint;
import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.os.Bundle;
import com.actionbarsherlock.app.SherlockDialogFragment;

@SuppressLint({"ValidFragment"})
public class PhotoSelectionActivity$RemovePictureDialogFragment
  extends SherlockDialogFragment
{
  public PhotoSelectionActivity$RemovePictureDialogFragment(PhotoSelectionActivity paramPhotoSelectionActivity) {}
  
  public RemovePictureDialogFragment newInstance()
  {
    return new RemovePictureDialogFragment(this.this$0);
  }
  
  public Dialog onCreateDialog(Bundle paramBundle)
  {
    return new AlertDialog.Builder(getActivity()).setMessage(2131494023).setCancelable(false).setPositiveButton(2131494022, new PhotoSelectionActivity.RemovePictureDialogFragment.2(this)).setNegativeButton(2131493558, new PhotoSelectionActivity.RemovePictureDialogFragment.1(this)).create();
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.user.PhotoSelectionActivity.RemovePictureDialogFragment
 * JD-Core Version:    0.7.0.1
 */