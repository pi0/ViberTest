package com.viber.voip.sound.bluetooth;

import android.annotation.SuppressLint;
import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.media.AudioManager;
import android.os.Build;
import android.os.Build.VERSION;
import android.os.Handler;
import com.viber.voip.ViberApplication;
import com.viber.voip.dc;
import com.viber.voip.dk;
import com.viber.voip.sound.ISoundService;
import com.viber.voip.sound.SoundFactory;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

public class BTControl
{
  private static final String ACTION_HEADSET_STATE_CHANGED = "android.bluetooth.headset.action.STATE_CHANGED";
  private static final String ACTION_SCO_AUDIO_STATE_CHANGED = "android.media.SCO_AUDIO_STATE_CHANGED";
  private static final String ACTION_SCO_AUDIO_STATE_UPDATED = "android.media.ACTION_SCO_AUDIO_STATE_UPDATED";
  private static final long BUTTON_CHECK_DELAY = 900L;
  private static final long CONNECTION_DELAY = 1000L;
  private static final int DEVICE_CONNECTION_NOTIFY_DELAY = 1200;
  public static final String EXTRA_STATE = "android.bluetooth.headset.extra.STATE";
  private static final int RECONNECTION_DELAY = 200;
  private static final int RECONNECT_ATTEMPTS_LIMIT = 5;
  public static final int STATE_CONNECTED = 2;
  public static final int STATE_CONNECTING = 1;
  public static final int STATE_DISCONNECTED = 0;
  public static final int STATE_ERROR = -1;
  public static final String TAG = BTControl.class.getSimpleName();
  private AudioManagerWrapper mAudioManagerWrapper;
  private BtConnectionDetector mConnectionDetector;
  private boolean mConnectionRequested = false;
  private final BroadcastReceiver mConnectionStateReceiver = new BTControl.4(this);
  private long mLastStartTime = 0L;
  private Set<BTControl.IBluetoothDeviceListener> mListeners = new HashSet();
  private Handler mMainThreadDelegate = dc.a(dk.a);
  private int mReconnectCounter = 0;
  private int mScoState = -1;
  private final BroadcastReceiver mScoStateReceiver = new BTControl.1(this);
  private boolean wasDisconnected = false;
  
  @SuppressLint({"InlinedApi"})
  public BTControl(ISoundService paramISoundService)
  {
    IntentFilter localIntentFilter1;
    IntentFilter localIntentFilter2;
    if (isAvailable())
    {
      this.mAudioManagerWrapper = new AudioManagerWrapper(paramISoundService.getPlatformAudioManager());
      this.mConnectionDetector = BtConnectionDetectorFactory.create(ViberApplication.getInstance());
      localIntentFilter1 = new IntentFilter();
      if (Build.VERSION.SDK_INT >= 14) {
        break label231;
      }
      localIntentFilter1.addAction("android.media.SCO_AUDIO_STATE_CHANGED");
      Intent localIntent = paramISoundService.getContext().registerReceiver(this.mScoStateReceiver, localIntentFilter1);
      if (localIntent != null)
      {
        this.mScoState = getScoStateFromIntent(localIntent);
        log("{Bt} Sticky Sco State = " + getStateString(this.mScoState));
      }
      localIntentFilter2 = new IntentFilter();
      if (Build.VERSION.SDK_INT < 11) {
        break label240;
      }
      localIntentFilter2.addAction("android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED");
    }
    for (;;)
    {
      paramISoundService.getContext().registerReceiver(this.mConnectionStateReceiver, localIntentFilter2);
      registerStateListener(paramISoundService);
      return;
      label231:
      localIntentFilter1.addAction("android.media.ACTION_SCO_AUDIO_STATE_UPDATED");
      break;
      label240:
      localIntentFilter2.addAction("android.bluetooth.headset.action.STATE_CHANGED");
    }
  }
  
  protected static String getDeviceClassString(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return "OTHER";
    case 1032: 
      return "AUDIO_VIDEO_HANDSFREE";
    case 1056: 
      return "AUDIO_VIDEO_CAR_AUDIO";
    case 1048: 
      return "AUDIO_VIDEO_HEADPHONES";
    case 1064: 
      return "AUDIO_VIDEO_HIFI_AUDIO";
    case 1040: 
      return "AUDIO_VIDEO_MICROPHONE";
    case 1052: 
      return "AUDIO_VIDEO_PORTABLE_AUDIO";
    case 1044: 
      return "AUDIO_VIDEO_LOUDSPEAKER";
    }
    return "AUDIO_VIDEO_WEARABLE_HEADSET";
  }
  
  private int getScoStateFromIntent(Intent paramIntent)
  {
    return paramIntent.getIntExtra("android.media.extra.SCO_AUDIO_STATE", -1);
  }
  
  protected static String getStateString(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return "unknown";
    case 1: 
      return "connected";
    case 2: 
      return "in progress";
    case 0: 
      return "disconnected";
    }
    return "error";
  }
  
  private void handleConnectionStateChange(BluetoothDevice paramBluetoothDevice, int paramInt)
  {
    switch (paramInt)
    {
    case 1: 
    default: 
      return;
    case 2: 
      this.wasDisconnected = false;
      notifyDeviceConnected(paramBluetoothDevice);
      return;
    case 0: 
      this.wasDisconnected = true;
      notifyDeviceDisconnected(paramBluetoothDevice);
      return;
    }
    notifyDeviceConnectionError(paramBluetoothDevice);
  }
  
  private boolean isAdapterEnabled()
  {
    BluetoothAdapter localBluetoothAdapter = BluetoothAdapter.getDefaultAdapter();
    return (localBluetoothAdapter != null) && (localBluetoothAdapter.isEnabled());
  }
  
  public static boolean isAvailable()
  {
    return (Build.VERSION.SDK_INT >= 8) && (!isMiui());
  }
  
  private static boolean isMiui()
  {
    return Build.ID.equalsIgnoreCase("MIUI");
  }
  
  private static void log(String paramString)
  {
    SoundFactory.log(3, TAG, paramString);
  }
  
  private void notifyButtonClicked()
  {
    this.mMainThreadDelegate.post(new BTControl.8(this));
  }
  
  private void notifyDeviceConnected(BluetoothDevice paramBluetoothDevice)
  {
    this.mMainThreadDelegate.postDelayed(new BTControl.5(this, paramBluetoothDevice), 1200L);
  }
  
  private void notifyDeviceConnectionError(BluetoothDevice paramBluetoothDevice)
  {
    this.mMainThreadDelegate.post(new BTControl.7(this, paramBluetoothDevice));
  }
  
  private void notifyDeviceDisconnected(BluetoothDevice paramBluetoothDevice)
  {
    this.mMainThreadDelegate.post(new BTControl.6(this, paramBluetoothDevice));
  }
  
  private void registerStateListener(BTControl.IBluetoothDeviceListener paramIBluetoothDeviceListener)
  {
    synchronized (this.mListeners)
    {
      this.mListeners.add(paramIBluetoothDeviceListener);
      return;
    }
  }
  
  private void unregisterStateListener(BTControl.IBluetoothDeviceListener paramIBluetoothDeviceListener)
  {
    synchronized (this.mListeners)
    {
      this.mListeners.remove(paramIBluetoothDeviceListener);
      return;
    }
  }
  
  public void disableBluetoothRoute()
  {
    if (!isAvailable()) {
      return;
    }
    if (!isScoOn())
    {
      log("{Bt} disableBluetoothRoute skipped - SCO was not on");
      return;
    }
    this.mAudioManagerWrapper.getAudioManager().setBluetoothScoOn(false);
    log("{Bt} route disabled");
    stopBluetooth();
  }
  
  public void enableBluetoothRoute()
  {
    if (!isAvailable()) {}
    do
    {
      return;
      if (!isHeadsetConnected())
      {
        log("{Bt} no headset");
        return;
      }
      if (!this.mAudioManagerWrapper.isBluetoothScoAvailableOffCall())
      {
        log("{Bt} not enabled. sco is not avialbale off-call");
        return;
      }
      if ((this.mScoState == 1) && (this.mConnectionRequested))
      {
        if (!this.mAudioManagerWrapper.getAudioManager().isBluetoothScoOn())
        {
          this.mAudioManagerWrapper.getAudioManager().setBluetoothScoOn(true);
          log("{Bt} setting route");
          return;
        }
        log("{Bt} route already set");
        return;
      }
    } while (this.mScoState == 2);
    this.mAudioManagerWrapper.startBluetoothSco();
    this.mConnectionRequested = true;
    this.mReconnectCounter = 0;
    this.wasDisconnected = false;
    log("{Bt} starting sco");
  }
  
  protected void handleScoStateChange(int paramInt)
  {
    this.mScoState = paramInt;
    switch (this.mScoState)
    {
    default: 
      if (2 != this.mScoState) {
        log("{Bt} SCO intent unhandled");
      }
    case 1: 
      do
      {
        return;
        this.mLastStartTime = System.currentTimeMillis();
      } while (!this.mConnectionRequested);
      log("{Bt} SCO connected. setting route");
      this.mAudioManagerWrapper.getAudioManager().setBluetoothScoOn(true);
      return;
    }
    if ((this.mConnectionRequested) && (this.mAudioManagerWrapper.isBluetoothScoAvailableOffCall()) && (this.mReconnectCounter < 5))
    {
      this.mReconnectCounter = (1 + this.mReconnectCounter);
      log("{Bt} SCO disconnected, but connection is needed and avialble. requesting connection again. attempt " + this.mReconnectCounter);
      this.mAudioManagerWrapper.stopBluetoothSco();
      this.mMainThreadDelegate.postDelayed(new BTControl.2(this), 200L);
    }
    for (;;)
    {
      long l = System.currentTimeMillis() - this.mLastStartTime;
      log("{Bt} SCO disconnected, but was connected " + l + "ms ago");
      if (!this.mConnectionRequested) {
        break;
      }
      return;
      stopBluetooth();
    }
  }
  
  public boolean isHeadsetConnected()
  {
    if ((this.mConnectionDetector == null) || (!isAvailable())) {}
    while (this.mConnectionDetector.getConnectedHeadsets().size() == 0) {
      return false;
    }
    return true;
  }
  
  public boolean isScoOn()
  {
    return this.mAudioManagerWrapper.getAudioManager().isBluetoothScoOn();
  }
  
  public void stopBluetooth()
  {
    if (!isAvailable()) {
      return;
    }
    if (!this.mConnectionRequested)
    {
      log("{Bt} stop skipped - SCO was not requested");
      return;
    }
    this.mAudioManagerWrapper.stopBluetoothSco();
    this.mConnectionRequested = false;
    log("{Bt} sco stopped");
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.sound.bluetooth.BTControl
 * JD-Core Version:    0.7.0.1
 */