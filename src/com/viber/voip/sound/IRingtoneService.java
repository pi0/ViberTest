package com.viber.voip.sound;

import android.net.Uri;

public abstract interface IRingtoneService
{
  public abstract IRingtoneService.Ringtone getRingtone(int paramInt);
  
  public abstract IRingtoneService.Ringtone getRingtone(int paramInt, boolean paramBoolean);
  
  public abstract IRingtoneService.Ringtone getRingtone(int paramInt, boolean paramBoolean1, boolean paramBoolean2);
  
  public abstract IRingtoneService.Ringtone getRingtone(Uri paramUri);
  
  public abstract IRingtoneService.Ringtone getRingtone(Uri paramUri, boolean paramBoolean);
  
  public abstract IRingtoneService.Ringtone getRingtone(Uri paramUri, boolean paramBoolean1, boolean paramBoolean2);
  
  public abstract void playRingtone(Uri paramUri);
  
  public abstract void playRingtone(IRingtoneService.Ringtone paramRingtone);
  
  public abstract void stopRingtone(IRingtoneService.Ringtone paramRingtone);
  
  public abstract boolean stopRingtone();
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.sound.IRingtoneService
 * JD-Core Version:    0.7.0.1
 */