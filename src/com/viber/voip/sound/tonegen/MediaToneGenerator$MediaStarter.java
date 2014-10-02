package com.viber.voip.sound.tonegen;

import android.media.MediaPlayer;
import com.viber.voip.sound.ISoundService.ModeStateListener;

class MediaToneGenerator$MediaStarter
  extends ISoundService.ModeStateListener
{
  private volatile int durationMs;
  private volatile MediaToneGenerator toneGenerator;
  
  public void onModeStateChanged(int paramInt)
  {
    if (this.toneGenerator == null) {}
    TonePlayer localTonePlayer;
    do
    {
      do
      {
        return;
      } while (paramInt != MediaToneGenerator.access$100(this.toneGenerator));
      MediaToneGenerator localMediaToneGenerator = this.toneGenerator;
      localTonePlayer = MediaToneGenerator.access$200(localMediaToneGenerator);
      MediaToneGenerator.access$000().start();
      if ((localTonePlayer != null) && (localTonePlayer.getToneRule().isUrgent()) && (MediaToneGenerator.access$000().getDuration() > 0))
      {
        localTonePlayer.scheduleDeferredGuard(MediaToneGenerator.access$000().getDuration(), MediaToneGenerator.access$300(localMediaToneGenerator));
        return;
      }
    } while ((this.durationMs <= 0) || (localTonePlayer == null) || (MediaToneGenerator.access$400(this.toneGenerator) == null));
    localTonePlayer.scheduleDeferredGuard(this.durationMs, MediaToneGenerator.access$400(this.toneGenerator));
  }
  
  public void onModeStatePreChanged(int paramInt)
  {
    if (this.toneGenerator == null) {}
    while (paramInt == MediaToneGenerator.access$100(this.toneGenerator)) {
      return;
    }
    this.toneGenerator.stopTone();
  }
  
  public MediaStarter start(MediaToneGenerator paramMediaToneGenerator, int paramInt)
  {
    this.toneGenerator = paramMediaToneGenerator;
    this.durationMs = paramInt;
    return this;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.sound.tonegen.MediaToneGenerator.MediaStarter
 * JD-Core Version:    0.7.0.1
 */