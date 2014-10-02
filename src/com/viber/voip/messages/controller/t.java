package com.viber.voip.messages.controller;

import com.viber.jni.PhoneControllerDelegateAdapter;
import com.viber.jni.PublicGroupChangeEvent;
import com.viber.jni.PublicGroupMessage;
import java.util.Map;

class t
  extends PhoneControllerDelegateAdapter
{
  t(r paramr) {}
  
  public void onGetPublicGroupMessages(int paramInt1, long paramLong, PublicGroupMessage[] paramArrayOfPublicGroupMessage, PublicGroupChangeEvent[] paramArrayOfPublicGroupChangeEvent, int paramInt2)
  {
    r.c(this.a).remove(Integer.valueOf(paramInt1));
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.controller.t
 * JD-Core Version:    0.7.0.1
 */