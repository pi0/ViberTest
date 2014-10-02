package com.viber.voip.messages.conversation.ui;

import com.viber.voip.messages.a.a;
import java.util.HashMap;

class ab
  implements Runnable
{
  private String b;
  
  public ab(m paramm, String paramString)
  {
    this.b = paramString;
  }
  
  public void run()
  {
    for (;;)
    {
      synchronized (this.a)
      {
        m.f(this.a).remove(this.b);
        m.g(this.a).remove(this.b);
        m localm2 = this.a;
        String str = m.i(this.a).a(m.h(this.a), m.g(this.a).values());
        if (!m.g(this.a).isEmpty())
        {
          bool = true;
          m.a(localm2, str, bool);
          return;
        }
      }
      boolean bool = false;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.conversation.ui.ab
 * JD-Core Version:    0.7.0.1
 */