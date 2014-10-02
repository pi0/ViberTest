package com.viber.voip;

class l
  implements Runnable
{
  l(BaseAddFriendActivity paramBaseAddFriendActivity) {}
  
  public void run()
  {
    BaseAddFriendActivity.a(this.a, true);
    if (BaseAddFriendActivity.a(this.a) != null) {
      BaseAddFriendActivity.a(this.a).a();
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.l
 * JD-Core Version:    0.7.0.1
 */