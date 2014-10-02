package com.viber.voip.messages.ui;

import android.view.animation.Animation;
import android.widget.TextView;

class cl
  implements Runnable
{
  cl(MessageComposerView paramMessageComposerView, Animation paramAnimation) {}
  
  public void run()
  {
    MessageComposerView.D(this.b).setVisibility(8);
    MessageComposerView.D(this.b).startAnimation(this.a);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.ui.cl
 * JD-Core Version:    0.7.0.1
 */