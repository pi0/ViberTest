package com.android.a.a;

import android.os.Message;
import java.util.Vector;

public class h
{
  private Vector<i> a = new Vector();
  private int b = 20;
  private int c = 0;
  private int d = 0;
  
  void a(Message paramMessage, a parama1, a parama2)
  {
    this.d = (1 + this.d);
    if (this.a.size() < this.b)
    {
      this.a.add(new i(this, paramMessage, parama1, parama2));
      return;
    }
    i locali = (i)this.a.get(this.c);
    this.c = (1 + this.c);
    if (this.c >= this.b) {
      this.c = 0;
    }
    locali.a(paramMessage, parama1, parama2);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.android.a.a.h
 * JD-Core Version:    0.7.0.1
 */