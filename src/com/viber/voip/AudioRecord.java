package com.viber.voip;

import java.nio.ByteBuffer;

public class AudioRecord
{
  private static final int AUDIOHANDLER_MAGIC = 2;
  public static final String TAG;
  private static final boolean USE_NATIVE_CALLBACKS = true;
  public static byte[] buffer;
  static int minBufferSize;
  android.media.AudioRecord mPlatformAudioRecord;
  int oActiveObject = 0;
  int[] sampleRate = { 44100, 22050, 11025, 8000 };
  
  static
  {
    if (!AudioRecord.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      $assertionsDisabled = bool;
      TAG = AudioRecord.class.getSimpleName() + "-JAVA";
      minBufferSize = android.media.AudioRecord.getMinBufferSize(44100, 2, 2);
      buffer = null;
      return;
    }
  }
  
  public AudioRecord(int paramInt)
  {
    String str = TAG;
    StringBuilder localStringBuilder = new StringBuilder().append("new object with native callback ");
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Integer.valueOf(paramInt);
    ViberApplication.log(3, str, String.format("0x%8x", arrayOfObject));
    setActiveObjectCallback(paramInt);
  }
  
  private void setActiveObjectCallback(int paramInt)
  {
    this.oActiveObject = paramInt;
  }
  
  public static native int staticinit();
  
  public native int nativeSet(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6);
  
  public native void nativeStart(int paramInt);
  
  public native void nativeStop(int paramInt);
  
  public int read(ByteBuffer paramByteBuffer, int paramInt)
  {
    if (this.mPlatformAudioRecord == null) {
      return -1;
    }
    assert (this.mPlatformAudioRecord != null);
    return this.mPlatformAudioRecord.read(paramByteBuffer, paramInt);
  }
  
  public void set(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5)
  {
    ViberApplication.log(3, TAG, "set: audioSource: " + paramInt1 + "; sampleRate: " + this.sampleRate + "; channelConfig: " + paramInt3 + "; audioformat: " + paramInt4 + "; bufferSize: " + paramInt5);
    this.mPlatformAudioRecord = new android.media.AudioRecord(paramInt1, paramInt2, paramInt3, paramInt4, paramInt5);
    if (this.mPlatformAudioRecord.getState() != 1)
    {
      ViberApplication.log(3, TAG, "bad state reported, retrying");
      this.mPlatformAudioRecord.release();
      this.mPlatformAudioRecord = null;
    }
    if (this.mPlatformAudioRecord != null)
    {
      nativeSet(this.oActiveObject, paramInt1, paramInt2, paramInt3, paramInt4, paramInt5);
      ViberApplication.log(3, TAG, "set: result is " + this.mPlatformAudioRecord + "(" + this.mPlatformAudioRecord.getState() + ": " + "fmt:" + this.mPlatformAudioRecord.getAudioFormat() + "/src:" + this.mPlatformAudioRecord.getAudioSource() + "/count:" + this.mPlatformAudioRecord.getChannelCount() + "/cfg:" + this.mPlatformAudioRecord.getChannelConfiguration() + "/srate:" + this.mPlatformAudioRecord.getSampleRate() + "/rst:" + this.mPlatformAudioRecord.getRecordingState() + "/ntf:" + this.mPlatformAudioRecord.getPositionNotificationPeriod() + "/mark:" + this.mPlatformAudioRecord.getNotificationMarkerPosition() + ")");
      return;
    }
    ViberApplication.log(3, TAG, "cannot initialize recorder");
  }
  
  public void startRecording()
  {
    ViberApplication.log(3, TAG, "startRecording");
    assert (this.mPlatformAudioRecord != null);
    nativeStart(this.oActiveObject);
    this.mPlatformAudioRecord.startRecording();
  }
  
  public void stop()
  {
    ViberApplication.log(3, TAG, "stop");
    if (this.mPlatformAudioRecord == null) {
      return;
    }
    assert (this.mPlatformAudioRecord != null);
    nativeStop(this.oActiveObject);
    this.mPlatformAudioRecord.stop();
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.AudioRecord
 * JD-Core Version:    0.7.0.1
 */