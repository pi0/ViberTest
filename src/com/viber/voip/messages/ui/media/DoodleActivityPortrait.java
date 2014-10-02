package com.viber.voip.messages.ui.media;

import android.os.Bundle;
import com.viber.voip.ViberApplication;

public class DoodleActivityPortrait
  extends DoodleActivity
{
  private void a(String paramString)
  {
    ViberApplication.log(3, "DoodleActivityPortrait", paramString);
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    a("onCreate: Portrait mode only");
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.ui.media.DoodleActivityPortrait
 * JD-Core Version:    0.7.0.1
 */