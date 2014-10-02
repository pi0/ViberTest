package com.viber.voip.sound;

import java.util.Comparator;

class CommonAbstractSoundService$VocoderSettingsImpl$1
  implements Comparator<ISoundService.IVocoderSettings.IVocoderDescriptor>
{
  CommonAbstractSoundService$VocoderSettingsImpl$1(CommonAbstractSoundService.VocoderSettingsImpl paramVocoderSettingsImpl) {}
  
  public int compare(ISoundService.IVocoderSettings.IVocoderDescriptor paramIVocoderDescriptor1, ISoundService.IVocoderSettings.IVocoderDescriptor paramIVocoderDescriptor2)
  {
    return paramIVocoderDescriptor1.getVocoderId() - paramIVocoderDescriptor2.getVocoderId();
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.sound.CommonAbstractSoundService.VocoderSettingsImpl.1
 * JD-Core Version:    0.7.0.1
 */