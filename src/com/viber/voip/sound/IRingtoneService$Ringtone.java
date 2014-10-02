package com.viber.voip.sound;

import android.net.Uri;

public class IRingtoneService$Ringtone
{
  public static final String TAG = "SoundService.Ringtone";
  private final boolean blockVibrateWhenSilent;
  private int durationMs = -1;
  private Runnable endCallback = null;
  public final boolean loop;
  public final Uri m_Uri;
  private int mode = -1;
  private Runnable startCallback = null;
  private int stream;
  private Object tag;
  private int volume = -1;
  
  protected IRingtoneService$Ringtone(ISoundService paramISoundService, Uri paramUri)
  {
    this(paramISoundService, paramUri, true);
  }
  
  protected IRingtoneService$Ringtone(ISoundService paramISoundService, Uri paramUri, boolean paramBoolean)
  {
    this(paramISoundService, paramUri, paramBoolean, false);
  }
  
  protected IRingtoneService$Ringtone(ISoundService paramISoundService, Uri paramUri, boolean paramBoolean1, boolean paramBoolean2)
  {
    this.m_Uri = paramUri;
    this.loop = paramBoolean1;
    this.tag = null;
    this.blockVibrateWhenSilent = paramBoolean2;
    this.stream = paramISoundService.stream_Ring();
  }
  
  protected final boolean blockVibrateInSilentMode()
  {
    return this.blockVibrateWhenSilent;
  }
  
  public int getAudioMode()
  {
    return this.mode;
  }
  
  public final int getDuration()
  {
    return this.durationMs;
  }
  
  public final Runnable getEndPlaybackCallback()
  {
    return this.endCallback;
  }
  
  public final Runnable getStartPlaybackCallback()
  {
    return this.startCallback;
  }
  
  public int getStreamType()
  {
    return this.stream;
  }
  
  protected final Object getTag()
  {
    return this.tag;
  }
  
  public int getVolume()
  {
    return this.volume;
  }
  
  public final boolean loop()
  {
    return this.loop;
  }
  
  public void setAudioMode(int paramInt)
  {
    this.mode = paramInt;
  }
  
  public void setDuration(int paramInt)
  {
    this.durationMs = paramInt;
  }
  
  public void setEndPlaybackCallback(Runnable paramRunnable)
  {
    this.endCallback = paramRunnable;
  }
  
  public void setStartPlaybackCallback(Runnable paramRunnable)
  {
    this.startCallback = paramRunnable;
  }
  
  public void setStreamType(int paramInt)
  {
    this.stream = paramInt;
  }
  
  protected void setTag(Object paramObject)
  {
    this.tag = paramObject;
  }
  
  public void setVolume(int paramInt)
  {
    this.volume = paramInt;
  }
  
  public String toString()
  {
    return "SoundService.Ringtone [" + this.m_Uri + "]";
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.sound.IRingtoneService.Ringtone
 * JD-Core Version:    0.7.0.1
 */