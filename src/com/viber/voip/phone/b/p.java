package com.viber.voip.phone.b;

import com.viber.jni.dialer.DialerControllerDelegate.DialerCallback;
import com.viber.jni.dialer.DialerControllerDelegate.DialerHoldState;
import com.viber.jni.dialer.DialerControllerDelegate.DialerTransferCall;
import com.viber.jni.dialer.DialerControllerDelegate.DialerVideo;
import com.viber.voip.phone.PhoneActivity;

public class p
  implements DialerControllerDelegate.DialerCallback, DialerControllerDelegate.DialerHoldState, DialerControllerDelegate.DialerTransferCall, DialerControllerDelegate.DialerVideo
{
  public p(k paramk) {}
  
  public void hideCallBack() {}
  
  public void localHold() {}
  
  public void localUnhold() {}
  
  public int onPeerVideoEnded()
  {
    return 0;
  }
  
  public int onPeerVideoEndedAck()
  {
    return 0;
  }
  
  public int onPeerVideoStarted()
  {
    k.h(this.a);
    return 0;
  }
  
  public int onPeerVideoStartedAck()
  {
    return 0;
  }
  
  public void onTransferFailed(int paramInt)
  {
    k.e(this.a).runOnUiThread(new r(this, paramInt));
  }
  
  public void onTransferReplyOK(long paramLong) {}
  
  public void peerHold()
  {
    k.f(this.a).runOnUiThread(new s(this));
  }
  
  public void peerUnhold()
  {
    k.g(this.a).runOnUiThread(new t(this));
  }
  
  public void showCallBack(int paramInt1, int paramInt2) {}
  
  public void showDialog(int paramInt, String paramString) {}
  
  public void switchToGSM(String paramString)
  {
    k.d(this.a).runOnUiThread(new q(this));
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.phone.b.p
 * JD-Core Version:    0.7.0.1
 */