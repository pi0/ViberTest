package com.viber.voip.sound;

public enum ISoundService$AudioCtl
{
  static
  {
    AUCTL_AEC_MODE = new AudioCtl("AUCTL_AEC_MODE", 1);
    AUCTL_AGC_MODE = new AudioCtl("AUCTL_AGC_MODE", 2);
    AUCTL_RX_AGC_MODE = new AudioCtl("AUCTL_RX_AGC_MODE", 3);
    AUCTL_NS_MODE = new AudioCtl("AUCTL_NS_MODE", 4);
    AUCTL_RX_NS_MODE = new AudioCtl("AUCTL_RX_NS_MODE", 5);
    AUCTL_VAD_MODE = new AudioCtl("AUCTL_VAD_MODE", 6);
    AudioCtl[] arrayOfAudioCtl = new AudioCtl[7];
    arrayOfAudioCtl[0] = AUCTL_UNKNOWN;
    arrayOfAudioCtl[1] = AUCTL_AEC_MODE;
    arrayOfAudioCtl[2] = AUCTL_AGC_MODE;
    arrayOfAudioCtl[3] = AUCTL_RX_AGC_MODE;
    arrayOfAudioCtl[4] = AUCTL_NS_MODE;
    arrayOfAudioCtl[5] = AUCTL_RX_NS_MODE;
    arrayOfAudioCtl[6] = AUCTL_VAD_MODE;
    $VALUES = arrayOfAudioCtl;
  }
  
  private ISoundService$AudioCtl() {}
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.sound.ISoundService.AudioCtl
 * JD-Core Version:    0.7.0.1
 */