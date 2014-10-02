package com.viber.voip.util;

import android.app.Activity;
import android.content.Intent;
import com.viber.voip.HomeActivity;

final class bn
  implements hj
{
  bn(Intent paramIntent, Activity paramActivity, boolean paramBoolean) {}
  
  public void a(boolean paramBoolean, int paramInt, String paramString)
  {
    if ((paramInt == 0) || (1 == paramInt))
    {
      localIntent = new Intent("com.viber.voip.action.VIEW_CONTACT");
      if (this.a.hasExtra("EXTRA_RETURN_TO_HOME")) {
        localIntent.putExtra("EXTRA_RETURN_TO_HOME", true);
      }
      localIntent.putExtra("con_number", paramString);
      this.b.startActivity(localIntent);
    }
    while (!this.c)
    {
      Intent localIntent;
      return;
    }
    this.a.setClass(this.b, HomeActivity.class);
    this.a.putExtra("EXTRA_FROM_LAUNCH_ACTIVITY", true);
    this.b.startActivity(this.a);
    this.b.finish();
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.util.bn
 * JD-Core Version:    0.7.0.1
 */