package com.viber.voip.contacts.b.b.a;

import com.viber.voip.messages.orm.entity.EntityUpdater;
import java.util.Collection;

public class n
  extends EntityUpdater<l>
{
  private boolean a;
  private boolean b;
  private boolean c;
  private boolean d;
  private boolean e;
  private boolean f;
  private boolean g;
  private boolean h;
  private boolean i;
  
  public n(l paraml, String... paramVarArgs)
  {
    super(paraml, null, paramVarArgs);
  }
  
  public boolean a(l paraml)
  {
    boolean bool1 = notEquals(this.a, paraml.i, ((l)this.baseEntity).i);
    boolean bool2 = false;
    if (bool1)
    {
      paraml.i = ((l)this.baseEntity).i;
      bool2 = true;
    }
    if (notEquals(this.b, paraml.j, ((l)this.baseEntity).j))
    {
      paraml.j = ((l)this.baseEntity).j;
      bool2 = true;
    }
    if (notEquals(this.c, paraml.b, ((l)this.baseEntity).b))
    {
      paraml.b = ((l)this.baseEntity).b;
      bool2 = true;
    }
    if (notEquals(this.d, paraml.c, ((l)this.baseEntity).c))
    {
      paraml.c = ((l)this.baseEntity).c;
      bool2 = true;
    }
    if (notEquals(this.e, paraml.d, ((l)this.baseEntity).d))
    {
      paraml.d = ((l)this.baseEntity).d;
      bool2 = true;
    }
    if (notEquals(this.f, paraml.e, ((l)this.baseEntity).e))
    {
      paraml.e = ((l)this.baseEntity).e;
      bool2 = true;
    }
    if (notEquals(this.g, paraml.f, ((l)this.baseEntity).f))
    {
      paraml.f = ((l)this.baseEntity).f;
      bool2 = true;
    }
    if (notEquals(this.i, paraml.h, ((l)this.baseEntity).h))
    {
      paraml.h = ((l)this.baseEntity).h;
      bool2 = true;
    }
    if (notEquals(this.h, paraml.g, ((l)this.baseEntity).g))
    {
      paraml.g = ((l)this.baseEntity).g;
      return true;
    }
    return bool2;
  }
  
  protected void initUpdateTerms(Collection<String> paramCollection)
  {
    this.a = paramCollection.contains("contact_id");
    this.b = paramCollection.contains("raw_id");
    this.c = paramCollection.contains("data1");
    this.d = paramCollection.contains("data2");
    this.e = paramCollection.contains("data3");
    this.f = paramCollection.contains("data4");
    this.g = paramCollection.contains("data5");
    this.h = paramCollection.contains("int_data2");
    this.i = paramCollection.contains("mime_type");
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.contacts.b.b.a.n
 * JD-Core Version:    0.7.0.1
 */