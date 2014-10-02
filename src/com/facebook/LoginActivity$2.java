package com.facebook;

import android.view.View;

class LoginActivity$2
  implements AuthorizationClient.BackgroundProcessingListener
{
  LoginActivity$2(LoginActivity paramLoginActivity) {}
  
  public void onBackgroundProcessingStarted()
  {
    this.this$0.findViewById(2131165620).setVisibility(0);
  }
  
  public void onBackgroundProcessingStopped()
  {
    this.this$0.findViewById(2131165620).setVisibility(8);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.facebook.LoginActivity.2
 * JD-Core Version:    0.7.0.1
 */