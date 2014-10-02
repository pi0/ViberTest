package com.viber.voip.widget;

import android.app.Activity;
import com.viber.jni.ptt.PttController.EPttPlayStatus;
import com.viber.jni.ptt.PttControllerDelegate.Player;

class y
  implements PttControllerDelegate.Player
{
  y(PttLayout paramPttLayout) {}
  
  private boolean a(String paramString)
  {
    return paramString.equals(PttLayout.a(this.a).H());
  }
  
  public void onPttBufferingStarted(String paramString) {}
  
  public void onPttBufferingStopped(String paramString) {}
  
  public void onPttPlayStopped(String paramString, int paramInt)
  {
    if (a(paramString)) {
      PttLayout.a(this.a, 0);
    }
  }
  
  public void onStartPlayPttReply(String paramString, int paramInt)
  {
    if (!a(paramString)) {}
    do
    {
      do
      {
        do
        {
          return;
          if (PttController.EPttPlayStatus.PLAY_OK == paramInt)
          {
            PttLayout.a(this.a, 1);
            if ((this.a.getContext() instanceof Activity)) {
              ((Activity)this.a.getContext()).setVolumeControlStream(3);
            }
          }
        } while (PttController.EPttPlayStatus.PLAY_FILE_NOT_AVAILABLE != paramInt);
        if ((!PttLayout.a(this.a).p()) || (PttLayout.a(this.a).h() != 0L) || (System.currentTimeMillis() - PttLayout.a(this.a).Z() <= 1209600000L)) {
          break;
        }
      } while (PttLayout.e(this.a) == null);
      PttLayout.e(this.a).a(2131493801, 2131493802);
      return;
      if ((!PttLayout.a(this.a).q()) && (System.currentTimeMillis() - PttLayout.a(this.a).Z() <= 1209600000L)) {
        break;
      }
    } while (PttLayout.e(this.a) == null);
    PttLayout.e(this.a).a(2131493799, 2131493800);
    return;
    PttLayout.c(this.a).a(PttLayout.a(this.a).I());
  }
  
  public void onStopPlayPttReply(String paramString, int paramInt)
  {
    if (a(paramString))
    {
      PttLayout.a(this.a, 0);
      if ((this.a.getContext() instanceof Activity)) {
        ((Activity)this.a.getContext()).setVolumeControlStream(2);
      }
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.widget.y
 * JD-Core Version:    0.7.0.1
 */