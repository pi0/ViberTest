package com.viber.voip.user;

import android.content.ActivityNotFoundException;
import android.net.Uri;
import android.widget.Toast;
import com.viber.voip.messages.extras.image.h;
import com.viber.voip.messages.extras.image.l;
import java.io.File;

public abstract class PhotoSelectionHandler$PhotoActionListener
  implements PhotoActionPopup.Listener
{
  public PhotoSelectionHandler$PhotoActionListener(PhotoSelectionHandler paramPhotoSelectionHandler) {}
  
  public abstract String getCurrentPhotoFile();
  
  public abstract void onPhotoSelected(Uri paramUri);
  
  public abstract void onPhotoSelectionDismissed();
  
  public void onPickFromGalleryChosen()
  {
    try
    {
      if ((h.a()) && (h.c())) {
        PhotoSelectionHandler.access$300(this.this$0, null);
      }
      return;
    }
    catch (ActivityNotFoundException localActivityNotFoundException)
    {
      Toast.makeText(this.this$0.mContext, PhotoSelectionHandler.access$200(), 1).show();
    }
  }
  
  public void onRemovePictureChosen() {}
  
  public void onTakePhotoChosen()
  {
    try
    {
      File localFile = h.b(l.b, null);
      if (localFile != null) {
        PhotoSelectionHandler.access$100(this.this$0, localFile);
      }
      return;
    }
    catch (ActivityNotFoundException localActivityNotFoundException)
    {
      Toast.makeText(this.this$0.mContext, PhotoSelectionHandler.access$200(), 1).show();
    }
  }
  
  public void onUseAsPrimaryChosen() {}
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.user.PhotoSelectionHandler.PhotoActionListener
 * JD-Core Version:    0.7.0.1
 */