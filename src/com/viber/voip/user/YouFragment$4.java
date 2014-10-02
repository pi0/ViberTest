package com.viber.voip.user;

class YouFragment$4
  implements FacebookDetailsListener
{
  YouFragment$4(YouFragment paramYouFragment) {}
  
  public void onLoaded(FacebookDetails paramFacebookDetails)
  {
    YouFragment.access$300(this.this$0, paramFacebookDetails);
  }
  
  public void onLoadingCanceled() {}
  
  public void onLoadingError(String paramString)
  {
    if ((paramString != null) && (paramString.contains("Error validating access token")))
    {
      this.this$0.onFacebookDetailsRequested();
      return;
    }
    this.this$0.showToast(2131493961);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.user.YouFragment.4
 * JD-Core Version:    0.7.0.1
 */