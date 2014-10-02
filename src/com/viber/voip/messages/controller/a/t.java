package com.viber.voip.messages.controller.a;

import android.os.Handler;
import com.viber.voip.messages.controller.co;
import com.viber.voip.messages.orm.entity.impl.MessageEntityImpl;

class t
  implements co
{
  t(p paramp) {}
  
  public void a(MessageEntityImpl paramMessageEntityImpl)
  {
    p.c(this.a).post(new v(this, paramMessageEntityImpl));
  }
  
  public void a(MessageEntityImpl paramMessageEntityImpl, long paramLong)
  {
    p.c(this.a).post(new u(this, paramMessageEntityImpl, paramLong));
  }
  
  public void b(MessageEntityImpl paramMessageEntityImpl)
  {
    p.c(this.a).postDelayed(new w(this, paramMessageEntityImpl), 10000L);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.controller.a.t
 * JD-Core Version:    0.7.0.1
 */