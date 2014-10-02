package com.viber.voip.contacts.c.a;

import android.content.Context;
import java.util.HashSet;
import java.util.Set;

public class h
  implements a
{
  private static final String a = h.class.getSimpleName();
  private com.viber.voip.contacts.c.e.a b;
  private com.viber.voip.contacts.c.c.a c;
  
  public h(Context paramContext, com.viber.voip.contacts.c.c.a parama)
  {
    this.b = new com.viber.voip.contacts.c.e.a(paramContext);
    this.c = parama;
  }
  
  public void a(String paramString)
  {
    HashSet localHashSet = new HashSet();
    localHashSet.add(paramString);
    b(localHashSet);
  }
  
  public void a(Set<String> paramSet)
  {
    this.b.a(paramSet);
    this.c.a(paramSet, true);
  }
  
  public void b(Set<String> paramSet)
  {
    this.b.b(paramSet);
    this.c.b(paramSet, true);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.contacts.c.a.h
 * JD-Core Version:    0.7.0.1
 */