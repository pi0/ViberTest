package com.viber.voip.phone;

import com.viber.voip.ViberApplication;
import org.webrtc.videoengine.ViERenderer;

class af
  implements Runnable
{
  af(VideoCallActivity paramVideoCallActivity) {}
  
  public void run()
  {
    VideoCallActivity.a(this.a, ViERenderer.CreateLocalRenderView(ViberApplication.getInstance()));
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.phone.af
 * JD-Core Version:    0.7.0.1
 */