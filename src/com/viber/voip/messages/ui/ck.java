package com.viber.voip.messages.ui;

import android.view.animation.Animation;
import android.widget.TextView;

class ck
  implements Runnable
{
  ck(MessageComposerView paramMessageComposerView, Animation paramAnimation) {}
  
  public void run()
  {
    MessageComposerView.D(this.b).setVisibility(0);
    MessageComposerView.D(this.b).startAnimation(this.a);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.ui.ck
 * JD-Core Version:    0.7.0.1
 */