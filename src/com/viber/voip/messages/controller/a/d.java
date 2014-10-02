package com.viber.voip.messages.controller.a;

import com.viber.jni.PhoneControllerWrapper;
import com.viber.voip.messages.controller.da;
import java.util.Set;

class d
  implements da
{
  d(c paramc) {}
  
  public void a(Set<Long> paramSet, boolean paramBoolean)
  {
    if ((paramBoolean) && (this.a.b != null) && (this.a.b.isReady())) {
      c.a(this.a);
    }
  }
  
  public void b(Set<Long> paramSet, boolean paramBoolean)
  {
    if ((paramBoolean) && (this.a.b != null) && (this.a.b.isReady())) {
      c.b(this.a);
    }
  }
  
  public void c(Set<Long> paramSet, boolean paramBoolean)
  {
    if ((paramBoolean) && (this.a.b != null) && (this.a.b.isReady())) {
      c.a(this.a, paramSet);
    }
  }
  
  public void d(Set<Long> paramSet, boolean paramBoolean) {}
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.controller.a.d
 * JD-Core Version:    0.7.0.1
 */