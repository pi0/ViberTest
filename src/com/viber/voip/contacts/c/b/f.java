package com.viber.voip.contacts.c.b;

class f
  implements Runnable
{
  f(e parame, int paramInt) {}
  
  public void run()
  {
    d[] arrayOfd = e.a(this.b);
    int i = arrayOfd.length;
    for (int j = 0; j < i; j++) {
      arrayOfd[j].onBlockListReply(this.a);
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.contacts.c.b.f
 * JD-Core Version:    0.7.0.1
 */