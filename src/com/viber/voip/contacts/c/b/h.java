package com.viber.voip.contacts.c.b;

class h
  implements Runnable
{
  h(e parame, int paramInt) {}
  
  public void run()
  {
    d[] arrayOfd = e.a(this.b);
    int i = arrayOfd.length;
    for (int j = 0; j < i; j++) {
      arrayOfd[j].onConnectionStateChange(this.a);
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.contacts.c.b.h
 * JD-Core Version:    0.7.0.1
 */