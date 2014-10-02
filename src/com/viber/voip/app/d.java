package com.viber.voip.app;

import com.viber.voip.util.ak;
import com.viber.voip.util.bj;
import com.viber.voip.util.upload.n;
import java.io.File;

class d
  implements Runnable
{
  d(ViberFragmentActivity paramViberFragmentActivity) {}
  
  public void run()
  {
    while ((bj.h(n.c("animated_message_cache")) != null) && (ak.a(bj.h(n.c("animated_message_cache")).lastModified(), 86400000L))) {
      bj.h(n.c("animated_message_cache")).delete();
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.app.d
 * JD-Core Version:    0.7.0.1
 */