package com.viber.voip.user;

import android.net.Uri;
import com.viber.voip.util.upload.n;
import java.io.File;

class PhotoSelectionHandler$5
  implements Runnable
{
  PhotoSelectionHandler$5(PhotoSelectionHandler paramPhotoSelectionHandler, File paramFile) {}
  
  public void run()
  {
    n.c(Uri.fromFile(this.val$file));
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.user.PhotoSelectionHandler.5
 * JD-Core Version:    0.7.0.1
 */