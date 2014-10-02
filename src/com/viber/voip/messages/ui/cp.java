package com.viber.voip.messages.ui;

import android.content.res.Resources;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.Drawable;
import com.viber.voip.widget.RadioButton;

class cp
  implements Runnable
{
  cp(MessageComposerView paramMessageComposerView) {}
  
  public void run()
  {
    Drawable localDrawable = this.a.getResources().getDrawable(2130837726);
    MessageComposerView.k(this.a).setButtonDrawable(localDrawable);
    MessageComposerView.a(this.a, (AnimationDrawable)localDrawable);
    if (!MessageComposerView.l(this.a).isRunning()) {
      MessageComposerView.k(this.a).postDelayed(new cq(this), 1600L);
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.ui.cp
 * JD-Core Version:    0.7.0.1
 */