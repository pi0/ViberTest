package com.viber.voip.sound;

import java.util.Set;
import java.util.TreeSet;

class CommonAbstractSoundService$VocoderSettingsImpl
  implements ISoundService.IVocoderSettings
{
  Set<ISoundService.IVocoderSettings.IVocoderDescriptor> _vocoders = null;
  
  private CommonAbstractSoundService$VocoderSettingsImpl(CommonAbstractSoundService paramCommonAbstractSoundService) {}
  
  private Set<ISoundService.IVocoderSettings.IVocoderDescriptor> fillVocodersList()
  {
    int i = AbstractSoundService.getSupportedCodecsCount();
    TreeSet localTreeSet = new TreeSet(new CommonAbstractSoundService.VocoderSettingsImpl.1(this));
    for (int j = 0; j < i; j++)
    {
      String str = AbstractSoundService.getCodecName(j);
      localTreeSet.add(new CommonAbstractSoundService.VocoderSettingsImpl.VocoderDescriptor(this, AbstractSoundService.getCodecCtl(ISoundService.VocoderCtl.VOECTL_CODEC_TYPE.ordinal(), j), str, AbstractSoundService.getCodecCtl(ISoundService.VocoderCtl.VOECTL_CODEC_PAYLOAD.ordinal(), j), AbstractSoundService.getCodecCtl(ISoundService.VocoderCtl.VOECTL_CODEC_BITRATE.ordinal(), j)));
    }
    return localTreeSet;
  }
  
  public Set<ISoundService.IVocoderSettings.IVocoderDescriptor> getSupportedCodecs()
  {
    try
    {
      if (this._vocoders == null) {
        this._vocoders = fillVocodersList();
      }
      Set localSet = this._vocoders;
      return localSet;
    }
    finally {}
  }
  
  public int getVocoderCtl(ISoundService.VocoderCtl paramVocoderCtl, int paramInt1, int paramInt2)
  {
    int i = AbstractSoundService.getCodecCtl(paramVocoderCtl.ordinal(), paramInt1);
    if (-1 == i) {
      return paramInt2;
    }
    return i;
  }
  
  public int setVocoderCtl(ISoundService.VocoderCtl paramVocoderCtl, int paramInt1, int paramInt2)
  {
    return AbstractSoundService.setCodecCtl(paramVocoderCtl.ordinal(), paramInt1, paramInt2);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.sound.CommonAbstractSoundService.VocoderSettingsImpl
 * JD-Core Version:    0.7.0.1
 */