package com.viber.voip.sound;

public enum ToneGeneratorFactory$ToneType
{
  static
  {
    BUSY_TONE = new ToneType("BUSY_TONE", 1);
    RINGBACK_TONE = new ToneType("RINGBACK_TONE", 2);
    HANGUP_TONE = new ToneType("HANGUP_TONE", 3);
    HOLD_TONE = new ToneType("HOLD_TONE", 4);
    DATA_INTERRUPTION_TONE = new ToneType("DATA_INTERRUPTION_TONE", 5);
    ToneType[] arrayOfToneType = new ToneType[6];
    arrayOfToneType[0] = NO_TONE;
    arrayOfToneType[1] = BUSY_TONE;
    arrayOfToneType[2] = RINGBACK_TONE;
    arrayOfToneType[3] = HANGUP_TONE;
    arrayOfToneType[4] = HOLD_TONE;
    arrayOfToneType[5] = DATA_INTERRUPTION_TONE;
    $VALUES = arrayOfToneType;
  }
  
  private ToneGeneratorFactory$ToneType() {}
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.sound.ToneGeneratorFactory.ToneType
 * JD-Core Version:    0.7.0.1
 */