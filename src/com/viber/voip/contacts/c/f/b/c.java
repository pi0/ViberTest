package com.viber.voip.contacts.c.f.b;

import com.viber.jni.CAddressBookEntry;

public class c
{
  private String a;
  private d b;
  
  protected c(CAddressBookEntry paramCAddressBookEntry)
  {
    this.a = paramCAddressBookEntry.getClientName();
    this.b = new d(this, paramCAddressBookEntry.getClientOriginalPhone(), paramCAddressBookEntry.getClientCanonizedPhone(), null);
  }
  
  public String a()
  {
    return this.a;
  }
  
  public d b()
  {
    return this.b;
  }
  
  public String toString()
  {
    return "Client [mClientName=" + this.a + ", mPhoneNumber=" + this.b + "]";
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.contacts.c.f.b.c
 * JD-Core Version:    0.7.0.1
 */