package com.viber.voip.phone;

import com.viber.jni.dialer.DialerControllerDelegate.DialerHoldState;
import com.viber.jni.dialer.DialerControllerDelegate.DialerVideo;

public class ai
  implements DialerControllerDelegate.DialerHoldState, DialerControllerDelegate.DialerVideo
{
  public ai(VideoCallActivity paramVideoCallActivity) {}
  
  public void localHold()
  {
    peerHold();
  }
  
  public void localUnhold()
  {
    peerUnhold();
  }
  
  public int onPeerVideoEnded()
  {
    VideoCallActivity.a(this.a, "onPeerVideoEnded");
    VideoCallActivity.d(this.a);
    this.a.finish();
    return 0;
  }
  
  public int onPeerVideoEndedAck()
  {
    return 0;
  }
  
  public int onPeerVideoStarted()
  {
    VideoCallActivity.a(this.a, "onPeerVideoStarted");
    VideoCallActivity.c(this.a);
    return 0;
  }
  
  public int onPeerVideoStartedAck()
  {
    return 0;
  }
  
  public void peerHold()
  {
    this.a.runOnUiThread(new aj(this));
  }
  
  public void peerUnhold()
  {
    this.a.runOnUiThread(new ak(this));
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.phone.ai
 * JD-Core Version:    0.7.0.1
 */