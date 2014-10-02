package com.viber.voip.messages.controller.a;

import com.viber.jni.PublicGroupMessage;
import java.util.Comparator;

class o
  implements Comparator<PublicGroupMessage>
{
  o(m paramm) {}
  
  public int a(PublicGroupMessage paramPublicGroupMessage1, PublicGroupMessage paramPublicGroupMessage2)
  {
    if (paramPublicGroupMessage1.getMessageID() < paramPublicGroupMessage2.getMessageID()) {
      return 1;
    }
    return -1;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.controller.a.o
 * JD-Core Version:    0.7.0.1
 */