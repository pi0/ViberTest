package com.viber.voip.messages.extras.fb;

import com.viber.voip.ViberApplication;
import com.viber.voip.messages.controller.x;
import com.viber.voip.messages.i;

public class a
  implements af
{
  private final ViberApplication a;
  
  public a(ViberApplication paramViberApplication)
  {
    this.a = paramViberApplication;
  }
  
  public void a(long paramLong, String paramString1, String paramString2, String paramString3, int paramInt)
  {
    ViberApplication.log(3, "DbOnSharedListener", "DbOnSharedListener.onSharingStarted: " + paramLong + " ;mediaType = " + paramInt);
    this.a.getMessagesManager().c().a(paramLong, 1);
  }
  
  public void a(long paramLong, String paramString1, String paramString2, String paramString3, int paramInt, Throwable paramThrowable)
  {
    ViberApplication.log(3, "DbOnSharedListener", "DbOnSharedListener.onError: " + paramLong + " --> " + paramThrowable.getMessage());
    this.a.getMessagesManager().c().a(paramLong, 5);
  }
  
  public void b(long paramLong, String paramString1, String paramString2, String paramString3, int paramInt)
  {
    ViberApplication.log(3, "DbOnSharedListener", "DbOnSharedListener.onShared: " + paramLong + " ;mediaType = " + paramInt);
    this.a.getMessagesManager().c().a(paramLong, 2);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.extras.fb.a
 * JD-Core Version:    0.7.0.1
 */