package com.viber.voip.sound;

import android.media.AudioManager;
import android.media.AudioManager.OnAudioFocusChangeListener;

public class AudioFocusController
{
  private final AudioManager.OnAudioFocusChangeListener mFocusListener = new AudioFocusController.1(this);
  private final AudioManager mManager;
  
  public AudioFocusController(AudioManager paramAudioManager)
  {
    this.mManager = paramAudioManager;
  }
  
  public void abandonAudioFocus()
  {
    this.mManager.abandonAudioFocus(this.mFocusListener);
  }
  
  public void requestAudioFocus()
  {
    this.mManager.requestAudioFocus(this.mFocusListener, 0, 2);
  }
  
  public void requestShortAudioFocus()
  {
    this.mManager.requestAudioFocus(this.mFocusListener, 0, 3);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.sound.AudioFocusController
 * JD-Core Version:    0.7.0.1
 */