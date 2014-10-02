package com.viber.voip.messages.controller.a;

import com.viber.jni.PhoneControllerDelegateAdapter;
import com.viber.jni.PhoneControllerWrapper;
import com.viber.voip.messages.e;
import java.util.Set;

public abstract class a
  extends PhoneControllerDelegateAdapter
{
  protected boolean a;
  protected PhoneControllerWrapper b;
  
  public a()
  {
    if (!com.viber.voip.j.a.f()) {}
    for (boolean bool = true;; bool = false)
    {
      this.a = bool;
      return;
    }
  }
  
  protected int a(boolean paramBoolean, int paramInt)
  {
    if (!paramBoolean) {
      return 0;
    }
    if (paramInt == 0) {
      return 1;
    }
    return 2;
  }
  
  public void a(long paramLong) {}
  
  public void a(PhoneControllerWrapper paramPhoneControllerWrapper)
  {
    this.b = paramPhoneControllerWrapper;
  }
  
  public void a(Set<e> paramSet) {}
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.controller.a.a
 * JD-Core Version:    0.7.0.1
 */