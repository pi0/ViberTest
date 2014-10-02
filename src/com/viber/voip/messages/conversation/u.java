package com.viber.voip.messages.conversation;

import java.util.ArrayList;
import java.util.List;

public class u
{
  private List<Integer> a = new ArrayList();
  
  public u(r paramr) {}
  
  public u a(Integer paramInteger)
  {
    this.a.add(paramInteger);
    return this;
  }
  
  public an[] a()
  {
    an[] arrayOfan = new an[this.a.size()];
    for (int i = 0; i < this.a.size(); i++) {
      arrayOfan[i] = this.b.e(((Integer)this.a.get(i)).intValue());
    }
    return arrayOfan;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.conversation.u
 * JD-Core Version:    0.7.0.1
 */