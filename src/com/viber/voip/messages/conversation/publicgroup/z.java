package com.viber.voip.messages.conversation.publicgroup;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.net.Uri;
import com.viber.voip.util.b.al;
import com.viber.voip.widget.AvatarView;

class z
  implements al
{
  z(EditPublicGroupActivity paramEditPublicGroupActivity) {}
  
  public void a(Uri paramUri, Bitmap paramBitmap, boolean paramBoolean)
  {
    this.a.h.setCaptionVisibility(true);
    this.a.h.setIsMandatory(false);
    this.a.h.setTextOverlayColor(this.a.getResources().getColor(2131296469));
    this.a.h.setCaptionTextColor(this.a.getResources().getColor(2131296418));
    this.a.h.setCaption(this.a.getResources().getText(2131494530).toString());
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.conversation.publicgroup.z
 * JD-Core Version:    0.7.0.1
 */