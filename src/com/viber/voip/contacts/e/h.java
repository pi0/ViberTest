package com.viber.voip.contacts.e;

import android.support.v4.util.LruCache;
import com.viber.voip.contacts.b.b;
import com.viber.voip.contacts.b.b.e;
import com.viber.voip.messages.orm.creator.Creator;
import com.viber.voip.messages.orm.entity.Entity;
import com.viber.voip.messages.orm.manager.EntityManager;
import com.viber.voip.messages.orm.service.EntityService;

public abstract class h
  implements com.viber.voip.contacts.a, EntityService<b>
{
  private EntityManager a = new EntityManager(e.b);
  private LruCache<Integer, b> c = new i(this, 20);
  
  public h(a parama) {}
  
  private void a(boolean paramBoolean)
  {
    this.c.evictAll();
    a(this.a, paramBoolean);
  }
  
  public abstract void a(EntityManager paramEntityManager, boolean paramBoolean);
  
  public b c(int paramInt)
  {
    b localb = (b)this.c.get(Integer.valueOf(paramInt));
    if (localb != null) {}
    do
    {
      return localb;
      localb = (b)this.a.getEntity(paramInt);
    } while (localb == null);
    this.c.put(Integer.valueOf(paramInt), localb);
    return localb;
  }
  
  public int c_()
  {
    return 0;
  }
  
  public boolean d_()
  {
    return this.b.d_();
  }
  
  public Entity findEntity(long paramLong)
  {
    throw new RuntimeException("Stub");
  }
  
  public int getCount()
  {
    return this.a.getCount();
  }
  
  public Creator getHelper()
  {
    throw new RuntimeException("Stub");
  }
  
  public boolean isInit()
  {
    return a.i(this.b);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.contacts.e.h
 * JD-Core Version:    0.7.0.1
 */