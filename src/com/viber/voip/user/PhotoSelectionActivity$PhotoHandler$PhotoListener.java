package com.viber.voip.user;

import android.content.Intent;
import android.net.Uri;
import com.actionbarsherlock.app.SherlockDialogFragment;
import com.viber.voip.messages.controller.dn;
import com.viber.voip.messages.i;
import com.viber.voip.util.b.w;
import com.viber.voip.util.b.x;

final class PhotoSelectionActivity$PhotoHandler$PhotoListener
  extends PhotoSelectionHandler.PhotoActionListener
{
  private PhotoSelectionActivity$PhotoHandler$PhotoListener(PhotoSelectionActivity.PhotoHandler paramPhotoHandler)
  {
    super(paramPhotoHandler);
  }
  
  public String getCurrentPhotoFile()
  {
    return PhotoSelectionActivity.access$1700(this.this$1.this$0);
  }
  
  public void onEditName()
  {
    Intent localIntent = new Intent();
    localIntent.putExtra("action", 101);
    this.this$1.this$0.setResult(-1, localIntent);
    this.this$1.this$0.finish();
  }
  
  public void onImportFromFB()
  {
    Intent localIntent = new Intent();
    localIntent.putExtra("action", 100);
    this.this$1.this$0.setResult(-1, localIntent);
    this.this$1.this$0.finish();
  }
  
  public void onPhotoSelected(Uri paramUri)
  {
    PhotoSelectionActivity.access$1800(this.this$1.this$0).b(paramUri, x.a(this.this$1.mContext));
    this.this$1.this$0.mMessagesManager.e().a(paramUri);
    this.this$1.this$0.finish();
  }
  
  public void onPhotoSelectionDismissed()
  {
    if (!PhotoSelectionActivity.access$1600(this.this$1.this$0)) {
      this.this$1.this$0.finish();
    }
  }
  
  public void onRemovePictureChosen()
  {
    PhotoSelectionActivity.access$1602(this.this$1.this$0, true);
    new PhotoSelectionActivity.RemovePictureDialogFragment(this.this$1.this$0).show(this.this$1.this$0.getSupportFragmentManager(), "dialog");
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.user.PhotoSelectionActivity.PhotoHandler.PhotoListener
 * JD-Core Version:    0.7.0.1
 */