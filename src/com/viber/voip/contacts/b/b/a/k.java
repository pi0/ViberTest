package com.viber.voip.contacts.b.b.a;

import com.viber.voip.messages.orm.entity.EntityUpdater;
import java.util.Collection;

public class k
  extends EntityUpdater<i>
{
  private boolean a;
  private boolean b;
  private boolean c;
  
  public k(i parami, String... paramVarArgs)
  {
    super(parami, null, paramVarArgs);
  }
  
  public boolean a(i parami)
  {
    if (notEquals(this.a, i.a(parami), i.a((i)this.baseEntity))) {
      i.a(parami, i.a((i)this.baseEntity));
    }
    for (boolean bool = true;; bool = false)
    {
      if (notEquals(this.b, i.b(parami), i.b((i)this.baseEntity)))
      {
        i.b(parami, i.b((i)this.baseEntity));
        bool = true;
      }
      if (notEquals(this.c, i.c(parami), i.c((i)this.baseEntity)))
      {
        i.a(parami, i.c((i)this.baseEntity));
        return true;
      }
      return bool;
    }
  }
  
  protected void initUpdateTerms(Collection<String> paramCollection)
  {
    this.a = paramCollection.contains("starred");
    this.b = paramCollection.contains("contact_id");
    this.c = paramCollection.contains("version");
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.contacts.b.b.a.k
 * JD-Core Version:    0.7.0.1
 */