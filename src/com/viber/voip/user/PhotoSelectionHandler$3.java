package com.viber.voip.user;

import android.app.Activity;
import android.net.Uri;
import com.viber.voip.messages.extras.image.g;
import com.viber.voip.messages.extras.image.h;

class PhotoSelectionHandler$3
  implements Runnable
{
  PhotoSelectionHandler$3(PhotoSelectionHandler paramPhotoSelectionHandler, Uri paramUri) {}
  
  public void run()
  {
    if (h.c(this.val$uriFromIntent)) {}
    for (Uri localUri = h.d(this.this$0.mContext, this.val$uriFromIntent);; localUri = this.val$uriFromIntent)
    {
      ((Activity)this.this$0.mContext).startActivityForResult(g.a(localUri), 12302);
      return;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.user.PhotoSelectionHandler.3
 * JD-Core Version:    0.7.0.1
 */