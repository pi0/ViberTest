package com.viber.voip.messages.orm.manager;

import android.database.Cursor;
import com.viber.voip.messages.orm.entity.Entity;
import java.util.Iterator;

class EntityManager$EntityIterator
  implements Iterator<Entity>
{
  int position = 0;
  
  private EntityManager$EntityIterator(EntityManager paramEntityManager) {}
  
  public boolean hasNext()
  {
    return (EntityManager.access$100(this.this$0) != null) && (!EntityManager.access$100(this.this$0).isClosed()) && (EntityManager.access$100(this.this$0).getCount() > this.position);
  }
  
  public Entity next()
  {
    EntityManager localEntityManager = this.this$0;
    int i = this.position;
    this.position = (i + 1);
    return localEntityManager.getEntity(i);
  }
  
  public void remove()
  {
    throw new UnsupportedOperationException();
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.orm.manager.EntityManager.EntityIterator
 * JD-Core Version:    0.7.0.1
 */