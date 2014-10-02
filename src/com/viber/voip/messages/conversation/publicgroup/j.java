package com.viber.voip.messages.conversation.publicgroup;

import com.viber.voip.messages.extras.image.b;
import com.viber.voip.messages.extras.image.e;
import com.viber.voip.messages.ui.media.SendMediaDataContainer;
import com.viber.voip.util.b.w;

class j
  implements e
{
  j(CreatePublicGroupActivity paramCreatePublicGroupActivity) {}
  
  public void a(int paramInt1, SendMediaDataContainer paramSendMediaDataContainer, int paramInt2, int paramInt3) {}
  
  public void a(int paramInt, SendMediaDataContainer[] paramArrayOfSendMediaDataContainer)
  {
    if ((paramInt == 2) && (paramArrayOfSendMediaDataContainer != null) && (paramArrayOfSendMediaDataContainer[0] != null))
    {
      b.a().b(this);
      this.a.o = paramArrayOfSendMediaDataContainer[0].b;
      this.a.r.a(this.a.o, this.a.s, this.a.v);
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.conversation.publicgroup.j
 * JD-Core Version:    0.7.0.1
 */