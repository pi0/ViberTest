package com.viber.voip.messages.controller;

import com.viber.jni.PhoneControllerWrapper;
import com.viber.jni.PhoneControllerWrapper.InitializedListener;
import com.viber.jni.controller.PhoneController;
import com.viber.jni.lastonline.LastOnlineController;
import com.viber.voip.ViberApplication;
import com.viber.voip.messages.controller.c.as;
import com.viber.voip.messages.orm.entity.impl.MessageEntityImpl;

class ct
  implements PhoneControllerWrapper.InitializedListener
{
  ct(cr paramcr, String paramString) {}
  
  public void initialized(PhoneController paramPhoneController)
  {
    int i = paramPhoneController.generateSequence();
    long l = 0L;
    MessageEntityImpl localMessageEntityImpl1 = cr.a(this.b).a(this.a, 1);
    int j;
    if (localMessageEntityImpl1 != null)
    {
      j = localMessageEntityImpl1.getMessageSeq();
      l = localMessageEntityImpl1.getMessageToken();
    }
    for (;;)
    {
      LastOnlineController localLastOnlineController = ViberApplication.getInstance().getPhoneController(true).getLastOnlineController();
      String[] arrayOfString = new String[1];
      arrayOfString[0] = this.a;
      boolean bool = localLastOnlineController.handleGetLastOnline(arrayOfString, i, j, l);
      cr.a(this.b, "handleGetLastOnline number=" + this.a + ", isSucceeded=" + bool);
      return;
      MessageEntityImpl localMessageEntityImpl2 = cr.a(this.b).a(this.a, 3);
      if (localMessageEntityImpl2 != null)
      {
        j = localMessageEntityImpl2.getMessageSeq();
        l = localMessageEntityImpl2.getMessageToken();
      }
      else
      {
        j = 0;
      }
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.controller.ct
 * JD-Core Version:    0.7.0.1
 */