package com.viber.voip.messages.a;

import com.viber.voip.messages.controller.c.as;
import com.viber.voip.messages.orm.entity.impl.ParticipantInfoEntityImpl;
import com.viber.voip.user.UserData;

class f
  implements Runnable
{
  f(b paramb) {}
  
  public void run()
  {
    ParticipantInfoEntityImpl localParticipantInfoEntityImpl = b.a(this.a).i();
    String str1 = UserData.getViberImage();
    String str2 = UserData.getName();
    if ((localParticipantInfoEntityImpl != null) && ((!str1.equals(localParticipantInfoEntityImpl.getViberImage())) || (!str2.equals(localParticipantInfoEntityImpl.getViberName()))))
    {
      localParticipantInfoEntityImpl.setViberImage(str1);
      localParticipantInfoEntityImpl.setViberName(str2);
      b.a(this.a).b(localParticipantInfoEntityImpl);
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.a.f
 * JD-Core Version:    0.7.0.1
 */