package com.viber.voip;

import android.os.Handler;
import com.viber.voip.util.hj;

class n
  implements hj
{
  n(BaseAddFriendActivity paramBaseAddFriendActivity) {}
  
  public void a(boolean paramBoolean, int paramInt, String paramString)
  {
    if (BaseAddFriendActivity.c(this.a))
    {
      BaseAddFriendActivity.e(this.a).post(new o(this));
      return;
    }
    BaseAddFriendActivity.e(this.a).post(new p(this, paramBoolean, paramInt, paramString));
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.n
 * JD-Core Version:    0.7.0.1
 */