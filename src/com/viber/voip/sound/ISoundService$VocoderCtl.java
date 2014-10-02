package com.viber.voip.sound;

public enum ISoundService$VocoderCtl
{
  static
  {
    VOECTL_CODEC_TYPE = new VocoderCtl("VOECTL_CODEC_TYPE", 1);
    VOECTL_CODEC_BITRATE = new VocoderCtl("VOECTL_CODEC_BITRATE", 2);
    VOECTL_CODEC_PAYLOAD = new VocoderCtl("VOECTL_CODEC_PAYLOAD", 3);
    VOECTL_FORCE_CODEC = new VocoderCtl("VOECTL_FORCE_CODEC", 4);
    VocoderCtl[] arrayOfVocoderCtl = new VocoderCtl[5];
    arrayOfVocoderCtl[0] = VOECTL_UNKNOWN;
    arrayOfVocoderCtl[1] = VOECTL_CODEC_TYPE;
    arrayOfVocoderCtl[2] = VOECTL_CODEC_BITRATE;
    arrayOfVocoderCtl[3] = VOECTL_CODEC_PAYLOAD;
    arrayOfVocoderCtl[4] = VOECTL_FORCE_CODEC;
    $VALUES = arrayOfVocoderCtl;
  }
  
  private ISoundService$VocoderCtl() {}
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.sound.ISoundService.VocoderCtl
 * JD-Core Version:    0.7.0.1
 */