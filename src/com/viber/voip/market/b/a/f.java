package com.viber.voip.market.b.a;

import java.util.ArrayList;
import java.util.List;

public class f
  implements c
{
  private e a;
  
  public f(List<? extends com.viber.voip.stickers.c.f> paramList)
  {
    this.a = new e(paramList);
  }
  
  public int a()
  {
    return this.a.a();
  }
  
  public a a(int paramInt)
  {
    a locala = this.a.a(paramInt - 0);
    if (locala != null) {
      locala.a(paramInt);
    }
    return locala;
  }
  
  public void a(List<? extends com.viber.voip.stickers.c.f> paramList)
  {
    this.a.a(paramList);
  }
  
  public boolean a(int paramInt1, int paramInt2)
  {
    boolean bool = false;
    if (paramInt1 >= 0)
    {
      bool = false;
      if (paramInt2 >= 0) {
        bool = this.a.a(paramInt1 - 0, paramInt2 - 0);
      }
    }
    return bool;
  }
  
  public int b()
  {
    return this.a.b();
  }
  
  public List<a> c()
  {
    ArrayList localArrayList = new ArrayList();
    for (int i = 0; i < b(); i++)
    {
      a locala = a(i);
      if (locala.d()) {
        localArrayList.add(locala);
      }
    }
    return localArrayList;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.market.b.a.f
 * JD-Core Version:    0.7.0.1
 */