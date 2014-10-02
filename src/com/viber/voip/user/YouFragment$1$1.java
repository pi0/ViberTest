package com.viber.voip.user;

import android.net.Uri;
import com.viber.voip.ViberApplication;
import com.viber.voip.util.b.w;

class YouFragment$1$1
  implements Runnable
{
  YouFragment$1$1(YouFragment.1 param1) {}
  
  public void run()
  {
    Uri localUri = UserData.getImage();
    w.a(ViberApplication.getInstance()).b(localUri);
    YouFragment.access$200(this.this$1.this$0).setHeaderInfo(YouFragment.access$100(this.this$1.this$0, localUri));
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.user.YouFragment.1.1
 * JD-Core Version:    0.7.0.1
 */