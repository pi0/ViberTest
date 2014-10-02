package com.viber.voip.backgrounds.b;

import android.util.SparseArray;
import com.viber.voip.backgrounds.m;
import com.viber.voip.backgrounds.o;

class c
  extends g
{
  c(a parama, o paramo, com.viber.voip.backgrounds.a parama1, m paramm)
  {
    super(paramo, parama1, paramm);
  }
  
  public void a(int paramInt)
  {
    synchronized (this.a)
    {
      a.a(this.a).remove(paramInt);
      return;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.backgrounds.b.c
 * JD-Core Version:    0.7.0.1
 */