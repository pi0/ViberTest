package com.viber.voip.sound;

class CommonAbstractSoundService$VocoderSettingsImpl$VocoderDescriptor
  implements ISoundService.IVocoderSettings.IVocoderDescriptor
{
  final int _bitrate;
  final int _ident;
  final String _name;
  final int _pltype;
  
  public CommonAbstractSoundService$VocoderSettingsImpl$VocoderDescriptor(CommonAbstractSoundService.VocoderSettingsImpl paramVocoderSettingsImpl, int paramInt1, String paramString, int paramInt2, int paramInt3)
  {
    this._ident = paramInt1;
    this._name = paramString;
    this._pltype = paramInt2;
    this._bitrate = paramInt3;
  }
  
  public int getVocoderBitrate()
  {
    return this._bitrate;
  }
  
  public int getVocoderId()
  {
    return this._ident;
  }
  
  public String getVocoderName()
  {
    return this._name;
  }
  
  public int getVocoderPayloadType()
  {
    return this._pltype;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.sound.CommonAbstractSoundService.VocoderSettingsImpl.VocoderDescriptor
 * JD-Core Version:    0.7.0.1
 */