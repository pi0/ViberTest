package com.viber.voip.sound;

public class AbstractSoundService$SoundServiceParams
{
  boolean isBluetoothScoOn;
  boolean isMicrophoneMute;
  boolean isSpeakerphoneOn;
  int mode;
  int ringerMode;
  private int[] stream_volume = new int[9];
  
  AbstractSoundService$SoundServiceParams(AbstractSoundService paramAbstractSoundService, ISoundService paramISoundService)
  {
    grabFrom(paramISoundService);
  }
  
  public void grabFrom(ISoundService paramISoundService)
  {
    this.mode = paramISoundService.getMode();
    this.ringerMode = paramISoundService.getRingerMode();
    for (int i = 0; i < this.stream_volume.length; i++) {
      this.stream_volume[i] = paramISoundService.getStreamVolume(i);
    }
    this.isBluetoothScoOn = paramISoundService.isBluetoothScoOn();
    this.isMicrophoneMute = paramISoundService.isMicrophoneMute();
    this.isSpeakerphoneOn = paramISoundService.isSpeakerphoneOn();
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.sound.AbstractSoundService.SoundServiceParams
 * JD-Core Version:    0.7.0.1
 */