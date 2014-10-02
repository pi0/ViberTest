package com.viber.voip.messages.conversation.a;

import android.os.Handler;
import android.util.SparseArray;
import android.view.LayoutInflater;
import com.viber.voip.dc;
import com.viber.voip.dk;

public class a
{
  private final LayoutInflater a;
  private final Handler b;
  private final SparseArray<d> c = new SparseArray();
  
  public a(LayoutInflater paramLayoutInflater)
  {
    this.a = paramLayoutInflater;
    this.b = dc.a(dk.g);
  }
  
  public void a(int paramInt1, int paramInt2, c paramc)
  {
    this.c.append(paramInt1, new d(this, paramInt1, paramInt2, paramc, null));
  }
  
  public d b(int paramInt)
  {
    return (d)this.c.get(paramInt);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.conversation.a.a
 * JD-Core Version:    0.7.0.1
 */