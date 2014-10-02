package com.viber.voip.calls.entities.impl;

import com.viber.voip.calls.entities.AggregatedCallEntity;
import com.viber.voip.calls.entities.CallEntity;
import com.viber.voip.contacts.b.a.a;
import com.viber.voip.contacts.b.b;
import com.viber.voip.contacts.b.b.a.o;
import com.viber.voip.contacts.b.b.e;
import com.viber.voip.contacts.b.b.k;
import com.viber.voip.contacts.b.f;
import com.viber.voip.messages.orm.creator.CreatorHelper;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

public class AggregatedCallEntityImpl
  extends CallEntityImpl
  implements AggregatedCallEntity
{
  public static final CreatorHelper a = new a();
  private k c;
  private e d;
  private List<CallEntity> e = new ArrayList();
  
  public int a()
  {
    return this.e.size();
  }
  
  public void a(CallEntity paramCallEntity)
  {
    if (this.e == null) {
      this.e = new ArrayList();
    }
    this.e.add(paramCallEntity);
  }
  
  public void a(o paramo)
  {
    this.c.a(paramo);
  }
  
  public void a(e parame)
  {
    this.d = parame;
  }
  
  public void a(k paramk)
  {
    this.c = paramk;
  }
  
  public f b()
  {
    return this.c;
  }
  
  public b c()
  {
    return this.d;
  }
  
  public Collection<CallEntity> d()
  {
    return this.e;
  }
  
  public String toString()
  {
    return "AgregatedCallEntityImpl [" + super.toString() + ", count=" + this.e.size() + ", numberData=" + this.c + ", contact=" + this.d + "]";
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.calls.entities.impl.AggregatedCallEntityImpl
 * JD-Core Version:    0.7.0.1
 */