package com.viber.jni.ptt;

import com.viber.jni.LocationInfo;
import com.viber.jni.PhoneControllerListener;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Random;
import java.util.Set;
import java.util.Timer;
import java.util.TimerTask;

public class MockPttController
  implements PttController
{
  private Timer mCommonTimer = new Timer("MockPttTimer");
  private long mDuration = -1L;
  private PhoneControllerListener mListener;
  private Set<String> mPttDownloading = new HashSet();
  private Map<String, Integer> mPttDuration = new HashMap();
  private String mPttPlaingId = null;
  private TimerTask mPttPlayerTimer;
  private Random mRandom = new Random();
  
  public MockPttController(PhoneControllerListener paramPhoneControllerListener)
  {
    this.mListener = paramPhoneControllerListener;
  }
  
  private void stopPlayer(int paramInt)
  {
    if (this.mPttPlayerTimer != null)
    {
      this.mPttPlayerTimer.cancel();
      this.mPttPlayerTimer = null;
    }
    if (this.mPttPlaingId != null)
    {
      String str = this.mPttPlaingId;
      this.mCommonTimer.schedule(new MockPttController.8(this, str, paramInt), 100L);
    }
    this.mPttPlaingId = null;
  }
  
  public int handleDeletePtt(String paramString)
  {
    return -1;
  }
  
  public void handleDownloadPtt(String paramString)
  {
    this.mListener.onDownloadPtt(paramString, paramString, PttController.EPttDownloadStatus.DOWNLOAD_OK);
    String str = paramString.replace("_incom", "");
    if (!this.mPttDuration.containsKey(str)) {
      synchronized (this.mPttDownloading)
      {
        this.mPttDownloading.add(str);
        return;
      }
    }
    this.mCommonTimer.schedule(new MockPttController.5(this, str, paramString), 10L);
  }
  
  public int handleRestorePttDuration(String paramString)
  {
    return ((Integer)this.mPttDuration.get(paramString)).intValue();
  }
  
  public boolean handleSendPtt(String paramString1, int paramInt1, long paramLong, int paramInt2, LocationInfo paramLocationInfo, boolean paramBoolean, int paramInt3, String paramString2, String paramString3)
  {
    this.mCommonTimer.schedule(new MockPttController.3(this, paramInt1, paramString1, paramLocationInfo, paramLong), 3000L);
    return true;
  }
  
  public boolean handleSendPttToGroup(long paramLong1, int paramInt1, long paramLong2, int paramInt2, LocationInfo paramLocationInfo, boolean paramBoolean, int paramInt3, String paramString1, String paramString2)
  {
    this.mCommonTimer.schedule(new MockPttController.4(this, paramInt1, paramLong1, paramLocationInfo, paramLong2), 3000L);
    return false;
  }
  
  public void handleStartPlayPtt(String paramString)
  {
    stopPlayer(PttController.EPttStopReason.STOP_REASON_NEXT_TRACK);
    this.mPttPlaingId = paramString;
    this.mCommonTimer.schedule(new MockPttController.6(this, paramString), 100L);
    this.mPttPlayerTimer = new MockPttController.7(this);
    this.mCommonTimer.schedule(this.mPttPlayerTimer, 25000L);
  }
  
  public void handleStartRecordPtt(int paramInt)
  {
    this.mDuration = System.currentTimeMillis();
    stopPlayer(PttController.EPttStopReason.STOP_REASON_RECORDING);
    this.mCommonTimer.schedule(new MockPttController.1(this, paramInt), 100L);
  }
  
  public void handleStopPlayPtt(String paramString)
  {
    stopPlayer(PttController.EPttStopReason.STOP_REASON_TRACK_ENDED);
  }
  
  public void handleStopRecordPtt(String paramString)
  {
    long l = System.currentTimeMillis() - this.mDuration;
    this.mDuration = -1L;
    this.mPttDuration.put(paramString, Integer.valueOf((int)l));
    this.mCommonTimer.schedule(new MockPttController.2(this, paramString), 1000L);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.jni.ptt.MockPttController
 * JD-Core Version:    0.7.0.1
 */