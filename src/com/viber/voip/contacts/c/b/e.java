package com.viber.voip.contacts.c.b;

import android.os.Handler;
import com.viber.jni.PhoneControllerWrapper;

public class e
  extends d
{
  private final Handler a;
  private final d[] b;
  
  public e(Handler paramHandler, d... paramVarArgs)
  {
    this.a = paramHandler;
    this.b = paramVarArgs;
  }
  
  public void a(PhoneControllerWrapper paramPhoneControllerWrapper)
  {
    d[] arrayOfd = this.b;
    int i = arrayOfd.length;
    for (int j = 0; j < i; j++) {
      arrayOfd[j].a(paramPhoneControllerWrapper);
    }
  }
  
  public void onBlockListReply(int paramInt)
  {
    this.a.post(new f(this, paramInt));
  }
  
  public void onConnect()
  {
    this.a.post(new g(this));
  }
  
  public void onConnectionStateChange(int paramInt)
  {
    this.a.post(new h(this, paramInt));
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.contacts.c.b.e
 * JD-Core Version:    0.7.0.1
 */