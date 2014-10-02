package com.viber.voip.sound.quirks;

import android.content.Context;
import com.viber.voip.sound.GenericSoundService;

public class ModeInCallGenericSoundService
  extends GenericSoundService
{
  public ModeInCallGenericSoundService(Context paramContext)
  {
    super(paramContext);
  }
  
  public int mode_InCall()
  {
    return 2;
  }
  
  public int mode_Tone()
  {
    return 2;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.sound.quirks.ModeInCallGenericSoundService
 * JD-Core Version:    0.7.0.1
 */