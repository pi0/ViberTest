package com.viber.voip.sound.bluetooth;

class BTControl$3
  implements Runnable
{
  BTControl$3(BTControl paramBTControl) {}
  
  public void run()
  {
    if (!BTControl.access$300(this.this$0)) {}
    while ((BTControl.access$400(this.this$0)) || (!this.this$0.isHeadsetConnected())) {
      return;
    }
    BTControl.access$100("{Bt} handling button");
    BTControl.access$500(this.this$0);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.sound.bluetooth.BTControl.3
 * JD-Core Version:    0.7.0.1
 */