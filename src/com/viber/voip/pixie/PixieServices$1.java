package com.viber.voip.pixie;

import com.viber.voip.ViberApplication;

class PixieServices$1
  extends Thread
{
  PixieServices$1(PixieServices paramPixieServices) {}
  
  public void run()
  {
    for (;;)
    {
      PixieServices.access$200(this.this$0);
      long l1 = System.currentTimeMillis();
      long l2 = Math.min(Math.max(PixieServices.access$300(this.this$0) - l1, 0L), Math.max(PixieServices.access$400(this.this$0) - l1, 0L));
      try
      {
        ViberApplication.log(3, PixieServices.access$500(), "Pixie: refresher gonna sleep : " + l2);
        Thread.sleep(l2);
        label71:
        if (!PixieServices.access$600(this.this$0, false)) {
          PixieServices.access$302(this.this$0, l1 + 3600000L);
        }
        if (PixieServices.access$700(this.this$0, false)) {
          continue;
        }
        PixieServices.access$402(this.this$0, l1 + 3600000L);
      }
      catch (InterruptedException localInterruptedException)
      {
        break label71;
      }
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.pixie.PixieServices.1
 * JD-Core Version:    0.7.0.1
 */