package com.viber.voip.e;

import com.viber.voip.messages.orm.entity.impl.MessageEntityImpl;

class aa
  implements Runnable
{
  aa(u paramu, long paramLong) {}
  
  public void run()
  {
    if ((u.g(this.b).f() != null) && (u.g(this.b).f().getId() == this.a) && (u.g(this.b).g()) && (u.g(this.b).e() == 1))
    {
      u.a("updateMessageNotification: messageId=" + this.a);
      u.b(this.b, -1L, false);
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.e.aa
 * JD-Core Version:    0.7.0.1
 */