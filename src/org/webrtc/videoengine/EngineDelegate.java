package org.webrtc.videoengine;

import android.os.Handler;
import android.util.Log;
import com.viber.voip.dc;
import com.viber.voip.dk;
import java.util.HashSet;
import java.util.Set;

public class EngineDelegate
{
  private static final boolean DEBUG = true;
  private static final String TAG = EngineDelegate.class.getSimpleName();
  public static final int VIDEO_FAILURE_CODE_BAD_CHANNEL = 2;
  public static final int VIDEO_FAILURE_CODE_GENERIC = 0;
  public static final int VIDEO_FAILURE_CODE_UNKNOWN = 1;
  private static Set<EngineDelegate.VideoEngineEventSubscriber> _subscribers = new HashSet();
  final Object delegateAddr;
  final Handler gcd;
  
  EngineDelegate(long paramLong)
  {
    this.delegateAddr = Long.valueOf(paramLong);
    this.gcd = dc.a(dk.a);
  }
  
  public static void addEventSubscriber(EngineDelegate.VideoEngineEventSubscriber paramVideoEngineEventSubscriber)
  {
    synchronized (_subscribers)
    {
      _subscribers.add(paramVideoEngineEventSubscriber);
      return;
    }
  }
  
  private static final void log_d(String paramString)
  {
    Log.d(TAG, paramString);
  }
  
  public static void removeEventSubscriber(EngineDelegate.VideoEngineEventSubscriber paramVideoEngineEventSubscriber)
  {
    synchronized (_subscribers)
    {
      _subscribers.remove(paramVideoEngineEventSubscriber);
      return;
    }
  }
  
  int onDeinitVideoRecv(long paramLong)
  {
    log_d("onDeinitVideoRecv: " + paramLong);
    return 0;
  }
  
  int onInitVideoRecv(long paramLong1, long paramLong2)
  {
    log_d("onInitVideoRecv: " + paramLong1 + ", " + paramLong2);
    return 0;
  }
  
  int onStartRecvVideo(long paramLong1, long paramLong2)
  {
    log_d("onStartRecvVideo: " + paramLong1 + ", " + paramLong2);
    if (0L != paramLong2) {
      this.gcd.post(new EngineDelegate.3(this, paramLong1));
    }
    return 0;
  }
  
  int onStartSendVideo(long paramLong1, long paramLong2)
  {
    log_d("onStartSendVideo: " + paramLong1 + ", " + paramLong2);
    if (!VideoCaptureAndroid.USE_LIVE_CAMERA_PREVIEW) {
      this.gcd.post(new EngineDelegate.1(this, paramLong1));
    }
    return 0;
  }
  
  int onStopRecvVideo(long paramLong)
  {
    log_d("onStopRecvVideo: " + paramLong);
    this.gcd.post(new EngineDelegate.4(this, paramLong));
    return 0;
  }
  
  int onStopSendVideo(long paramLong)
  {
    log_d("onStopSendVideo: " + paramLong);
    this.gcd.post(new EngineDelegate.2(this, paramLong));
    return 0;
  }
  
  int onVideoFailure(long paramLong, int paramInt)
  {
    log_d("onVideoFailure: " + paramLong + ", failure:" + paramInt);
    this.gcd.post(new EngineDelegate.5(this, paramInt));
    return 0;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     org.webrtc.videoengine.EngineDelegate
 * JD-Core Version:    0.7.0.1
 */