package com.viber.voip.contacts.c.f.b;

import java.util.HashSet;
import java.util.Set;

public class aj
{
  public final Set<String> a;
  public final Set<String> b;
  public final Set<String> c;
  public final Set<String> d;
  
  private aj(Set<String> paramSet1, Set<String> paramSet2, Set<String> paramSet3)
  {
    this.a = paramSet1;
    this.b = paramSet2;
    this.c = paramSet3;
    this.d = new HashSet();
    this.d.addAll(paramSet2);
    this.d.addAll(paramSet3);
  }
  
  public boolean a()
  {
    return (this.b.size() > 0) || (this.c.size() > 0) || (this.a.size() > 0);
  }
  
  public String toString()
  {
    return "UpdateAddressbookResult [newNames=" + this.a + "]";
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.contacts.c.f.b.aj
 * JD-Core Version:    0.7.0.1
 */