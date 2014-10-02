package com.viber.voip.sound.quirks;

import android.content.Context;
import com.viber.voip.sound.GenericSoundService;

public class ModeNormalGenericSoundService
  extends GenericSoundService
{
  public ModeNormalGenericSoundService(Context paramContext)
  {
    super(paramContext);
  }
  
  public int mode_InCall()
  {
    return 0;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.sound.quirks.ModeNormalGenericSoundService
 * JD-Core Version:    0.7.0.1
 */