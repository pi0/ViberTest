package com.viber.voip.sound;

public enum VoiceStateListener$VoiceState
{
  static
  {
    VS_GSM = new VoiceState("VS_GSM", 2);
    VoiceState[] arrayOfVoiceState = new VoiceState[3];
    arrayOfVoiceState[0] = VS_RINGER;
    arrayOfVoiceState[1] = VS_VOICE;
    arrayOfVoiceState[2] = VS_GSM;
    $VALUES = arrayOfVoiceState;
  }
  
  private VoiceStateListener$VoiceState() {}
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.sound.VoiceStateListener.VoiceState
 * JD-Core Version:    0.7.0.1
 */