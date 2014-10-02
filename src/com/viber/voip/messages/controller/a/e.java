package com.viber.voip.messages.controller.a;

import com.viber.jni.PhoneControllerWrapper;
import com.viber.voip.messages.controller.de;
import java.util.Set;

class e
  implements de
{
  e(c paramc) {}
  
  public void a(long paramLong1, long paramLong2, long paramLong3, boolean paramBoolean) {}
  
  public void a(long paramLong1, long paramLong2, boolean paramBoolean) {}
  
  public void a(String paramString, boolean paramBoolean) {}
  
  public void a(Set<Long> paramSet, boolean paramBoolean)
  {
    if ((paramBoolean) && (this.a.b != null) && (this.a.b.isReady())) {
      c.c(this.a);
    }
  }
  
  public void b(Set<Long> paramSet, boolean paramBoolean)
  {
    if ((paramBoolean) && (this.a.b != null) && (this.a.b.isReady())) {
      c.a(this.a, paramSet);
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.controller.a.e
 * JD-Core Version:    0.7.0.1
 */