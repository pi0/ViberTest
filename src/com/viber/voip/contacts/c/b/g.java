package com.viber.voip.contacts.c.b;

class g
  implements Runnable
{
  g(e parame) {}
  
  public void run()
  {
    d[] arrayOfd = e.a(this.a);
    int i = arrayOfd.length;
    for (int j = 0; j < i; j++) {
      arrayOfd[j].onConnect();
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.contacts.c.b.g
 * JD-Core Version:    0.7.0.1
 */