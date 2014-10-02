package com.viber.voip.messages.controller;

import com.viber.voip.sound.ISoundService;
import com.viber.voip.sound.IVibratorService;

class dm
  implements Runnable
{
  private final int b;
  private int c;
  
  private dm(dk paramdk, int paramInt)
  {
    this.b = paramInt;
  }
  
  private void a()
  {
    this.c = (1 + this.c);
  }
  
  public void run()
  {
    this.c = 0;
    if (dk.a(this.a) == null) {}
    do
    {
      do
      {
        return;
        if (this.b != 0) {
          break;
        }
      } while (!dk.a(this.a).shouldVibrate(0));
      dk.a(this.a).getVibratorService().vibrate(new long[] { 0L, 300L, 300L, 300L, 300L, 300L, 300L }, -1);
      return;
      if (this.b == 1)
      {
        dk.a(this.a).playSample(2131099648, 1.0F, 1.0F, 0, 0, 1.0F);
        return;
      }
      if (this.b == 2)
      {
        dk.a(this.a).playMessageNotification(dk.a(this.a).getRingtone(dk.b(this.a), false, true));
        return;
      }
      if (this.b == 3)
      {
        ISoundService localISoundService = dk.a(this.a);
        if (dk.c(this.a)) {}
        for (int i = 2131099666;; i = 2131099665)
        {
          localISoundService.playSample(i, 1.0F, 1.0F, 0, 0, 1.0F);
          return;
        }
      }
    } while (this.b != 4);
    dk.a(this.a).playSample(2131099669, 1.0F, 1.0F, 0, 0, 1.0F);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.controller.dm
 * JD-Core Version:    0.7.0.1
 */