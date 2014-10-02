package com.viber.voip.sound;

public abstract interface IVibratorService
  extends IRingtoneService
{
  public abstract boolean shouldVibrate();
  
  public abstract void vibrate(long paramLong);
  
  public abstract void vibrate(long[] paramArrayOfLong, int paramInt);
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.sound.IVibratorService
 * JD-Core Version:    0.7.0.1
 */