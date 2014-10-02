package com.viber.voip.sound.tonegen;

 enum TonePlayer$PlayerStates
{
  static
  {
    PlayerStates[] arrayOfPlayerStates = new PlayerStates[3];
    arrayOfPlayerStates[0] = STATE_IDLE;
    arrayOfPlayerStates[1] = STATE_PLAY;
    arrayOfPlayerStates[2] = STATE_SUSPENDED;
    $VALUES = arrayOfPlayerStates;
  }
  
  private TonePlayer$PlayerStates() {}
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.sound.tonegen.TonePlayer.PlayerStates
 * JD-Core Version:    0.7.0.1
 */