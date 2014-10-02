package com.viber.voip.messages.conversation.publicgroup;

import android.content.res.Resources;
import com.viber.voip.messages.extras.image.b;
import com.viber.voip.messages.extras.image.e;
import com.viber.voip.messages.ui.media.SendMediaDataContainer;
import com.viber.voip.widget.AvatarView;

class w
  implements e
{
  w(CreatePublicGroupActivity paramCreatePublicGroupActivity) {}
  
  public void a(int paramInt1, SendMediaDataContainer paramSendMediaDataContainer, int paramInt2, int paramInt3) {}
  
  public void a(int paramInt, SendMediaDataContainer[] paramArrayOfSendMediaDataContainer)
  {
    if (paramInt == 1)
    {
      b.a().b(this);
      this.a.n = paramArrayOfSendMediaDataContainer[0].b;
      this.a.h.setIsMandatory(false);
      this.a.h.setImageURI(this.a.n);
      this.a.h.setTextOverlayColor(this.a.getResources().getColor(2131296469));
      this.a.h.setCaptionTextColor(this.a.getResources().getColor(2131296418));
      this.a.h.setCaption(this.a.getResources().getText(2131494530).toString());
      CreatePublicGroupActivity.a(this.a, CreatePublicGroupActivity.b(this.a));
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.conversation.publicgroup.w
 * JD-Core Version:    0.7.0.1
 */