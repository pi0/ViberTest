package com.viber.voip.messages.conversation;

import android.os.Handler;
import com.viber.voip.messages.controller.ah;
import com.viber.voip.messages.controller.c.ao;
import java.util.ArrayList;

class m
  extends ah
{
  m(i parami) {}
  
  public void a(ao paramao, ArrayList paramArrayList)
  {
    this.a.i.postAtFrontOfQueue(new n(this, paramao, paramArrayList));
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.conversation.m
 * JD-Core Version:    0.7.0.1
 */