package com.viber.voip.contacts.c.f.b;

import com.viber.jni.CAddressBookEntry;
import com.viber.jni.PhoneControllerDelegateAdapter;
import java.util.Map;

public abstract class a
  extends PhoneControllerDelegateAdapter
{
  private static final String a = a.class.getSimpleName();
  private f b;
  private e c;
  
  public abstract void a(e parame);
  
  public abstract void a(f paramf);
  
  public boolean onAddressBook(int paramInt1, int paramInt2, boolean paramBoolean1, boolean paramBoolean2, int paramInt3, CAddressBookEntry[] paramArrayOfCAddressBookEntry)
  {
    if ((this.c == null) || (paramBoolean1)) {}
    for (int i = 1;; i = 0)
    {
      if (i != 0) {
        this.c = new e();
      }
      this.c.a(paramInt2, 0, paramInt3, paramBoolean1, paramBoolean2, 0, paramArrayOfCAddressBookEntry);
      if (paramBoolean2)
      {
        a(this.c);
        a(this.c);
        this.c = null;
      }
      return true;
    }
  }
  
  public boolean onRegisteredNumbers(boolean paramBoolean1, boolean paramBoolean2, Map<String, String> paramMap, int paramInt1, boolean paramBoolean3, String paramString1, String paramString2, int paramInt2, int paramInt3)
  {
    if ((this.b == null) || (paramBoolean1)) {}
    for (int i = 1;; i = 0)
    {
      if (i != 0) {
        this.b = new f();
      }
      if (this.b.g() != paramBoolean1)
      {
        this.b.e();
        a(this.b);
        this.b = new f();
      }
      this.b.a(0, paramInt1, 0, paramBoolean1, paramBoolean2, paramInt2, paramMap);
      if (paramBoolean2)
      {
        a(this.b);
        this.b = null;
      }
      return true;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.contacts.c.f.b.a
 * JD-Core Version:    0.7.0.1
 */