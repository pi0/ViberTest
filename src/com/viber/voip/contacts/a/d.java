package com.viber.voip.contacts.a;

import android.database.DataSetObserver;
import com.viber.provider.a;
import com.viber.voip.messages.orm.entity.Entity;

class d
  extends e<T>
{
  public d(c paramc, a parama)
  {
    super(parama);
  }
  
  public String getString(int paramInt)
  {
    Entity localEntity = (Entity)this.b.a(this.c);
    if (localEntity == null) {
      return "";
    }
    return this.a.a(localEntity);
  }
  
  public int getType(int paramInt)
  {
    return 0;
  }
  
  public void registerDataSetObserver(DataSetObserver paramDataSetObserver) {}
  
  public void unregisterDataSetObserver(DataSetObserver paramDataSetObserver) {}
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.contacts.a.d
 * JD-Core Version:    0.7.0.1
 */