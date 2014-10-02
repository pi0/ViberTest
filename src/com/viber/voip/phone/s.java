package com.viber.voip.phone;

import com.viber.voip.phone.call.a.b;
import com.viber.voip.phone.call.k;
import com.viber.voip.phone.call.n;

class s
  implements Runnable
{
  s(q paramq) {}
  
  public void run()
  {
    if ((q.a(this.a).d().o() != 1) && (q.a(this.a).d().o() != 2) && (q.a(this.a).d().o() != 4)) {
      new b(q.a(this.a)).a(q.a(this.a).d(), q.b(this.a));
    }
    this.a.a.finish();
    this.a.a.b("Timer Finish");
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.phone.s
 * JD-Core Version:    0.7.0.1
 */