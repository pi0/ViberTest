package com.viber.voip.contacts.c.f.b;

import com.viber.jni.CAddressBookEntry;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class f
{
  private int a;
  private boolean b;
  private boolean c;
  private final Map<String, String> d = new HashMap();
  private final List<g> e = new ArrayList();
  
  protected void a(int paramInt1, int paramInt2, int paramInt3, boolean paramBoolean1, boolean paramBoolean2, int paramInt4, Map<String, String> paramMap)
  {
    this.a = paramInt2;
    this.e.add(new g(paramInt1, paramInt3, paramBoolean1, paramBoolean2, paramInt4));
    if (paramMap != null) {
      this.d.putAll(paramMap);
    }
    if (paramBoolean1) {
      this.b = paramBoolean1;
    }
    if (paramBoolean2) {
      this.c = paramBoolean2;
    }
  }
  
  protected void a(CAddressBookEntry paramCAddressBookEntry)
  {
    this.d.put(paramCAddressBookEntry.getClientCanonizedPhone(), paramCAddressBookEntry.getClientPhotoID());
  }
  
  protected void e()
  {
    this.c = true;
  }
  
  public final Map<String, String> f()
  {
    return this.d;
  }
  
  public final boolean g()
  {
    return this.b;
  }
  
  public final List<g> h()
  {
    return this.e;
  }
  
  public final boolean i()
  {
    return this.c;
  }
  
  public String toString()
  {
    return "ViberNumbersPack [mClearAll=" + this.b + ", mLastPortion=" + this.c + ", mRegisteredNumbers=" + this.d + ", mPackHeaders=" + this.e + "]";
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.contacts.c.f.b.f
 * JD-Core Version:    0.7.0.1
 */