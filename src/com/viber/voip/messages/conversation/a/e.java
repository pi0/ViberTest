package com.viber.voip.messages.conversation.a;

import android.view.View;
import java.util.Queue;

class e
  implements Runnable
{
  e(d paramd) {}
  
  public void run()
  {
    while (d.a(this.a).size() < 5)
    {
      View localView = d.b(this.a);
      synchronized (this.a)
      {
        d.a(this.a).add(localView);
      }
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.conversation.a.e
 * JD-Core Version:    0.7.0.1
 */