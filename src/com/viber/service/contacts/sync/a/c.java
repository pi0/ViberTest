package com.viber.service.contacts.sync.a;

import com.viber.voip.ViberApplication;
import com.viber.voip.settings.j;
import com.viber.voip.settings.l;

public class c
{
  private b a;
  
  public c(b paramb)
  {
    this.a = paramb;
  }
  
  private void a(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return;
    case 0: 
      this.a.b();
      return;
    case 1: 
      this.a.c();
      return;
    case 2: 
      this.a.d();
      return;
    case 3: 
      this.a.f();
      return;
    }
    this.a.e();
  }
  
  public boolean a()
  {
    return a(new int[] { 0, 1, 2, 3, 4 });
  }
  
  public boolean a(int... paramVarArgs)
  {
    int i = paramVarArgs.length;
    for (int j = 0; j < i; j++)
    {
      int k = paramVarArgs[j];
      if (!b()) {
        return false;
      }
      a(k);
    }
    return true;
  }
  
  public boolean b()
  {
    return ViberApplication.preferences().b(j.R(), j.X());
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.service.contacts.sync.a.c
 * JD-Core Version:    0.7.0.1
 */