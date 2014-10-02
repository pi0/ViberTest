package com.viber.voip.messages.extras.a;

class i
  implements Runnable
{
  i(e parame) {}
  
  public void run()
  {
    e.a("initGPSandWPSLocationCaches");
    if ((this.a.c() == null) && (e.a(this.a) == null))
    {
      e.a("caches are empty. init needed.");
      e.a(this.a, new j(this));
      e.b(this.a, new k(this));
      return;
    }
    if ((this.a.c() != null) && (e.a(this.a) != null))
    {
      e.a("caches are init. check location.");
      e.b(this.a, new l(this));
      return;
    }
    if ((this.a.c() == null) && (e.a(this.a) != null))
    {
      e.a("cachedWPSLocation == null && cachedGPSLocation != null");
      e.b(this.a, new n(this));
      return;
    }
    if ((this.a.c() != null) && (e.a(this.a) == null))
    {
      e.a("cachedWPSLocation != null && cachedGPSLocation == null. need init both.");
      e.b(this.a, new q(this));
      e.a(this.a, new r(this));
      return;
    }
    e.a("cache has been initialized.");
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.extras.a.i
 * JD-Core Version:    0.7.0.1
 */