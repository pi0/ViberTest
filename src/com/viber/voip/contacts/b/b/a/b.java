package com.viber.voip.contacts.b.b.a;

import com.viber.voip.messages.orm.entity.EntityUpdater;
import java.util.Collection;

public class b
  extends EntityUpdater<a>
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
  private boolean j;
  private boolean k;
  private boolean l;
  private boolean m;
  private boolean n;
  
  public b(a parama, String... paramVarArgs)
  {
    super(parama, null, paramVarArgs);
  }
  
  public boolean a(a parama)
  {
    boolean bool1 = notEquals(this.a, parama.m, ((a)this.baseEntity).m);
    boolean bool2 = false;
    if (bool1)
    {
      parama.m(((a)this.baseEntity).n);
      parama.h(((a)this.baseEntity).m);
      bool2 = true;
    }
    if (notEquals(this.i, parama.s, ((a)this.baseEntity).s))
    {
      parama.s = ((a)this.baseEntity).s;
      bool2 = true;
    }
    if (notEquals(this.b, parama.p, ((a)this.baseEntity).p))
    {
      parama.p = ((a)this.baseEntity).p;
      bool2 = true;
    }
    if (notEquals(this.c, parama.q, ((a)this.baseEntity).q))
    {
      parama.q = ((a)this.baseEntity).q;
      bool2 = true;
    }
    if (notEquals(this.e, parama.t, ((a)this.baseEntity).t))
    {
      parama.t = ((a)this.baseEntity).t;
      bool2 = true;
    }
    if (notEquals(this.f, parama.u, ((a)this.baseEntity).u)) {
      parama.u = ((a)this.baseEntity).u;
    }
    for (boolean bool3 = true;; bool3 = bool2)
    {
      if (notEquals(this.j, parama.y, ((a)this.baseEntity).y))
      {
        parama.y = ((a)this.baseEntity).y;
        bool3 = true;
      }
      if (notEquals(this.g, parama.v, ((a)this.baseEntity).v))
      {
        parama.v = ((a)this.baseEntity).v;
        bool3 = true;
      }
      if (notEquals(this.h, parama.w, ((a)this.baseEntity).w))
      {
        parama.w = ((a)this.baseEntity).w;
        bool3 = true;
      }
      if (notEquals(this.k, parama.z, ((a)this.baseEntity).z))
      {
        parama.z = ((a)this.baseEntity).z;
        bool3 = true;
      }
      if (notEquals(this.d, parama.r, ((a)this.baseEntity).r))
      {
        parama.r = ((a)this.baseEntity).r;
        bool3 = true;
      }
      if (notEquals(this.l, parama.A, ((a)this.baseEntity).A))
      {
        parama.A = ((a)this.baseEntity).A;
        bool3 = true;
      }
      if (notEquals(this.m, parama.B, ((a)this.baseEntity).B))
      {
        parama.B = ((a)this.baseEntity).B;
        bool3 = true;
      }
      if (notEquals(this.n, parama.C, ((a)this.baseEntity).C))
      {
        parama.C = ((a)this.baseEntity).C;
        return true;
      }
      return bool3;
    }
  }
  
  protected void initUpdateTerms(Collection<String> paramCollection)
  {
    this.a = paramCollection.contains("display_name");
    this.i = paramCollection.contains("contact_lookup_key");
    this.b = paramCollection.contains("starred");
    this.c = paramCollection.contains("viber");
    this.e = paramCollection.contains("contact_hash");
    this.f = paramCollection.contains("has_number");
    this.g = paramCollection.contains("has_name");
    this.h = paramCollection.contains("native_photo_id");
    this.j = paramCollection.contains("joined_date");
    this.k = paramCollection.contains("flags");
    this.d = paramCollection.contains("viber_out");
    this.l = paramCollection.contains("version");
    this.m = paramCollection.contains("phonetic_name");
    this.n = paramCollection.contains("phone_label");
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.contacts.b.b.a.b
 * JD-Core Version:    0.7.0.1
 */