package com.viber.voip.contacts.c.f.b;

import com.viber.voip.contacts.b.h;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

public class ak
{
  public final boolean a;
  public final Set<String> b;
  public final Set<String> c;
  public final Set<String> d;
  public final Map<String, String> e;
  public final Set<h> f;
  
  private ak(boolean paramBoolean, Set<String> paramSet1, Set<String> paramSet2, Set<String> paramSet3, Map<String, String> paramMap)
  {
    this(paramBoolean, paramSet1, paramSet2, paramSet3, paramMap, new HashSet());
  }
  
  private ak(boolean paramBoolean, Set<String> paramSet1, Set<String> paramSet2, Set<String> paramSet3, Map<String, String> paramMap, Set<h> paramSet)
  {
    this.a = paramBoolean;
    this.b = paramSet1;
    this.c = paramSet2;
    this.d = paramSet3;
    this.e = paramMap;
    this.f = paramSet;
  }
  
  public boolean a()
  {
    return (this.e.size() > 0) || (this.b.size() > 0) || (this.d.size() > 0);
  }
  
  public boolean b()
  {
    return (this.c.size() > 0) || (this.b.size() > 0) || (this.e.size() > 0);
  }
  
  public String toString()
  {
    return "UpdateResult [viberContactsChanged=" + this.a + ", removedNumbers=" + this.b + ", newNumbers=" + this.c + ", removedPhotoNumbers=" + this.d + ", newPhotoId=" + this.e + "]";
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.contacts.c.f.b.ak
 * JD-Core Version:    0.7.0.1
 */