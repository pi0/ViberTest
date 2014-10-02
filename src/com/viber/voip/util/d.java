package com.viber.voip.util;

import com.viber.jni.controller.PhoneController;

class d
  implements Runnable
{
  d(b paramb) {}
  
  public void run()
  {
    b.a(this.a, "isOnForeground checker. notify LIB BG_BACKGROUND");
    b.a(this.a, false);
    b.a(this.a).handleAppModeChanged(1);
    this.a.a(b.b(this.a), false);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.util.d
 * JD-Core Version:    0.7.0.1
 */