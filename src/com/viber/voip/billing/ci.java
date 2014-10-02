package com.viber.voip.billing;

class ci
  implements bf
{
  ci(cf paramcf) {}
  
  public void a(bu parambu, bo parambo)
  {
    boolean bool = parambo.c();
    if ((!bool) && (parambo.a() == 8))
    {
      bv.a("Consuming an item that is not owned. Treating as a successful consumation");
      bool = true;
    }
    if (bool)
    {
      bv.a(this.a.a, parambu).c(parambu);
      if (parambu.o()) {
        this.a.a.d().b(parambu);
      }
      return;
    }
    bv.a("consume failed");
    this.a.a.d().a(parambu);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.billing.ci
 * JD-Core Version:    0.7.0.1
 */