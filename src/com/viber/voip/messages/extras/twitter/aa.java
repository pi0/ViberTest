package com.viber.voip.messages.extras.twitter;

import android.content.Context;
import com.viber.voip.ViberApplication;
import com.viber.voip.settings.l;

public class aa
{
  private ab a;
  
  public aa(Context paramContext) {}
  
  public void a()
  {
    l locall = ViberApplication.preferences("prefs_twitter");
    locall.a("twitter_token", null);
    locall.a("twitter_token_secret", null);
    locall.a("twitter_username", null);
    if (this.a != null) {
      this.a.a(false);
    }
  }
  
  public void a(ab paramab)
  {
    this.a = paramab;
  }
  
  public void a(String paramString1, String paramString2, String paramString3)
  {
    l locall = ViberApplication.preferences("prefs_twitter");
    locall.a("twitter_token", paramString1);
    locall.a("twitter_token_secret", paramString2);
    locall.a("twitter_username", paramString3);
    if (this.a != null) {
      this.a.a(true);
    }
  }
  
  public String b()
  {
    return ViberApplication.preferences("prefs_twitter").b("twitter_username", null);
  }
  
  public String c()
  {
    return ViberApplication.preferences("prefs_twitter").b("twitter_token", null);
  }
  
  public String d()
  {
    return ViberApplication.preferences("prefs_twitter").b("twitter_token_secret", null);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.extras.twitter.aa
 * JD-Core Version:    0.7.0.1
 */