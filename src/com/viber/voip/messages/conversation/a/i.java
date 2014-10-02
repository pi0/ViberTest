package com.viber.voip.messages.conversation.a;

import android.database.DataSetObserver;

class i
  extends DataSetObserver
{
  private i(g paramg) {}
  
  public void onChanged()
  {
    this.a.notifyDataSetChanged();
  }
  
  public void onInvalidated()
  {
    this.a.notifyDataSetInvalidated();
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.conversation.a.i
 * JD-Core Version:    0.7.0.1
 */