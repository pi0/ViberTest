package com.viber.voip.sound;

class CommonAbstractSoundService$DbgAudioSettingsTracer
  implements ISoundService.IAudioSettings.IAudioSettingsListener
{
  final String TAG = DbgAudioSettingsTracer.class.getSimpleName();
  final String _tag;
  
  CommonAbstractSoundService$DbgAudioSettingsTracer(CommonAbstractSoundService paramCommonAbstractSoundService)
  {
    this(paramCommonAbstractSoundService, null);
  }
  
  CommonAbstractSoundService$DbgAudioSettingsTracer(CommonAbstractSoundService paramCommonAbstractSoundService, String paramString)
  {
    StringBuilder localStringBuilder = new StringBuilder().append(this.TAG);
    if (paramString != null) {}
    for (String str = "[" + paramString + "]";; str = "")
    {
      this._tag = str;
      return;
    }
  }
  
  public void onAECChange(int paramInt1, int paramInt2)
  {
    SoundFactory.log(3, this._tag, "AEC changed from " + paramInt1 + " to " + paramInt2);
  }
  
  public void onAGCChange(int paramInt1, int paramInt2)
  {
    SoundFactory.log(3, this._tag, "AGC changed from " + paramInt1 + " to " + paramInt2);
  }
  
  public void onNSChange(int paramInt1, int paramInt2)
  {
    SoundFactory.log(3, this._tag, "NS changed from " + paramInt1 + " to " + paramInt2);
  }
  
  public void onRxAGCChange(int paramInt1, int paramInt2)
  {
    SoundFactory.log(3, this._tag, "RxAGC changed from " + paramInt1 + " to " + paramInt2);
  }
  
  public void onRxNSChange(int paramInt1, int paramInt2)
  {
    SoundFactory.log(3, this._tag, "RxNS changed from " + paramInt1 + " to " + paramInt2);
  }
  
  public void onVADChange(int paramInt1, int paramInt2)
  {
    SoundFactory.log(3, this._tag, "VAD changed from " + paramInt1 + " to " + paramInt2);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.sound.CommonAbstractSoundService.DbgAudioSettingsTracer
 * JD-Core Version:    0.7.0.1
 */