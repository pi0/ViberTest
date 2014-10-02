package com.viber.voip.phone;

import android.content.Context;
import android.view.OrientationEventListener;

public class ag
  extends OrientationEventListener
{
  public ag(VideoCallActivity paramVideoCallActivity, Context paramContext)
  {
    super(paramContext);
  }
  
  public void onOrientationChanged(int paramInt)
  {
    if (paramInt == -1) {
      return;
    }
    if ((paramInt > 225) && (paramInt <= 315)) {
      VideoCallActivity.d = 90;
    }
    for (;;)
    {
      VideoCallActivity.a(this.a);
      return;
      if ((paramInt > 315) && (paramInt <= 45)) {
        VideoCallActivity.d = 180;
      } else if ((paramInt > 45) && (paramInt <= 135)) {
        VideoCallActivity.d = 270;
      } else {
        VideoCallActivity.d = 0;
      }
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.phone.ag
 * JD-Core Version:    0.7.0.1
 */