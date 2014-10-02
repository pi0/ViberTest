package com.viber.voip.backgrounds.b;

import android.os.Handler;
import com.viber.voip.backgrounds.o;
import com.viber.voip.backgrounds.q;

class h
  implements com.viber.voip.backgrounds.m
{
  h(g paramg) {}
  
  public void a(o paramo)
  {
    g.b(this.a).post(new j(this, paramo));
  }
  
  public void a(o paramo, int paramInt)
  {
    g.b(this.a).post(new k(this, paramo, paramInt));
  }
  
  public void a(o paramo, q paramq)
  {
    g.b(this.a).post(new i(this, paramo, paramq));
  }
  
  public void a(q paramq)
  {
    g.b(this.a).post(new m(this, paramq));
  }
  
  public void b(o paramo)
  {
    g.b(this.a).post(new l(this, paramo));
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.backgrounds.b.h
 * JD-Core Version:    0.7.0.1
 */