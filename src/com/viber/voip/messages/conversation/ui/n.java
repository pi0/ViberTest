package com.viber.voip.messages.conversation.ui;

import com.viber.voip.messages.extras.fb.af;
import com.viber.voip.messages.extras.fb.s;

class n
  implements af
{
  n(m paramm) {}
  
  public void a(long paramLong, String paramString1, String paramString2, String paramString3, int paramInt) {}
  
  public void a(long paramLong, String paramString1, String paramString2, String paramString3, int paramInt, Throwable paramThrowable)
  {
    if ((paramThrowable.getMessage().contains("Error validating access token")) && (m.a(this.a) != null) && (m.a(this.a).getActivity() != null)) {
      m.b(this.a).a(m.a(this.a).getActivity(), paramLong, paramString1, paramString2, paramString3);
    }
  }
  
  public void b(long paramLong, String paramString1, String paramString2, String paramString3, int paramInt) {}
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.conversation.ui.n
 * JD-Core Version:    0.7.0.1
 */