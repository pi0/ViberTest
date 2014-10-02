package com.viber.voip.messages.ui;

import android.view.View;

class eg
  implements Runnable
{
  eg(TabListIndicator paramTabListIndicator, View paramView) {}
  
  public void run()
  {
    int i = this.a.getLeft() - (this.b.getWidth() - this.a.getWidth()) / 2;
    this.b.smoothScrollTo(i, 0);
    TabListIndicator.a(this.b, null);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.ui.eg
 * JD-Core Version:    0.7.0.1
 */