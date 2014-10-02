package com.viber.voip.contacts.c.f.b;

import android.os.Handler;
import com.viber.jni.CAddressBookEntry;
import com.viber.jni.PhoneControllerDelegateAdapter;
import java.util.Map;

public class h
  extends PhoneControllerDelegateAdapter
{
  private final Handler a;
  private final PhoneControllerDelegateAdapter[] b;
  private int c = -1;
  
  public h(Handler paramHandler, PhoneControllerDelegateAdapter... paramVarArgs)
  {
    this.a = paramHandler;
    this.b = paramVarArgs;
  }
  
  public boolean onAddressBook(int paramInt1, int paramInt2, boolean paramBoolean1, boolean paramBoolean2, int paramInt3, CAddressBookEntry[] paramArrayOfCAddressBookEntry)
  {
    this.a.post(new k(this, paramInt1, paramInt2, paramBoolean1, paramBoolean2, paramInt3, paramArrayOfCAddressBookEntry));
    return true;
  }
  
  public void onRecanonize(String paramString)
  {
    this.a.post(new o(this, paramString));
  }
  
  public boolean onRegisteredNumbers(boolean paramBoolean1, boolean paramBoolean2, Map<String, String> paramMap, int paramInt1, boolean paramBoolean3, String paramString1, String paramString2, int paramInt2, int paramInt3)
  {
    this.a.post(new j(this, paramBoolean1, paramBoolean2, paramMap, paramInt1, paramBoolean3, paramString1, paramString2, paramInt2, paramInt3));
    return true;
  }
  
  public void onServiceStateChanged(int paramInt)
  {
    if (this.c == paramInt) {
      return;
    }
    this.c = paramInt;
    this.a.post(new i(this, paramInt));
  }
  
  public void onShareAddressBook()
  {
    this.a.post(new m(this));
  }
  
  public void onShareAddressBookReply(boolean paramBoolean, int paramInt1, int paramInt2)
  {
    this.a.post(new n(this, paramBoolean, paramInt1, paramInt2));
  }
  
  public boolean onUnregisteredNumber(String paramString)
  {
    this.a.post(new l(this, paramString));
    return true;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.contacts.c.f.b.h
 * JD-Core Version:    0.7.0.1
 */