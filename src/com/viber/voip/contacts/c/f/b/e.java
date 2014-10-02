package com.viber.voip.contacts.c.f.b;

import com.viber.jni.CAddressBookEntry;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

public class e
  extends f
{
  private Map<String, c> a = new HashMap();
  private Map<String, String> b = new HashMap();
  private Set<String> c = new HashSet();
  
  public Map<String, String> a()
  {
    return this.b;
  }
  
  protected void a(int paramInt1, int paramInt2, int paramInt3, boolean paramBoolean1, boolean paramBoolean2, int paramInt4, CAddressBookEntry[] paramArrayOfCAddressBookEntry)
  {
    super.a(paramInt1, paramInt2, paramInt3, paramBoolean1, paramBoolean2, paramInt4, null);
    int i = paramArrayOfCAddressBookEntry.length;
    for (int j = 0; j < i; j++)
    {
      CAddressBookEntry localCAddressBookEntry = paramArrayOfCAddressBookEntry[j];
      this.a.put(localCAddressBookEntry.getClientCanonizedPhone(), new c(localCAddressBookEntry));
      this.c.add(localCAddressBookEntry.getClientName());
      this.b.put(localCAddressBookEntry.getClientName(), localCAddressBookEntry.getClientSortName());
      if (localCAddressBookEntry.isRegistered()) {
        a(localCAddressBookEntry);
      }
    }
  }
  
  public Map<String, c> b()
  {
    return this.a;
  }
  
  public Set<String> c()
  {
    return this.a.keySet();
  }
  
  public Set<String> d()
  {
    return this.c;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.contacts.c.f.b.e
 * JD-Core Version:    0.7.0.1
 */