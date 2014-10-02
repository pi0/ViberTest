package com.viber.voip.messages.controller.a;

import com.viber.jni.PublicGroupChangeEvent;
import java.util.Comparator;

class n
  implements Comparator<PublicGroupChangeEvent>
{
  n(m paramm) {}
  
  public int a(PublicGroupChangeEvent paramPublicGroupChangeEvent1, PublicGroupChangeEvent paramPublicGroupChangeEvent2)
  {
    if (paramPublicGroupChangeEvent1.getEventId() < paramPublicGroupChangeEvent2.getEventId()) {
      return 1;
    }
    return -1;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.controller.a.n
 * JD-Core Version:    0.7.0.1
 */