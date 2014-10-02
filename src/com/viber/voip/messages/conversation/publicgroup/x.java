package com.viber.voip.messages.conversation.publicgroup;

import android.net.Uri;
import com.viber.voip.ViberApplication;
import com.viber.voip.util.upload.p;

abstract class x
  implements p
{
  private x(CreatePublicGroupActivity paramCreatePublicGroupActivity) {}
  
  public void a(Uri paramUri)
  {
    CreatePublicGroupActivity.d(this.h, "onUploadTimeout");
  }
  
  public void a(Uri paramUri, int paramInt)
  {
    CreatePublicGroupActivity.d(this.h, "upload error errorCode = " + paramInt);
    this.h.d();
    ViberApplication.getInstance().showToast("Error during upload image!");
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.conversation.publicgroup.x
 * JD-Core Version:    0.7.0.1
 */