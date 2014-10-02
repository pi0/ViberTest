package com.viber.voip.messages.ui.media;

import com.actionbarsherlock.ActionBarSherlock;

class bp
  implements Runnable
{
  bp(bo parambo) {}
  
  public void run()
  {
    if (!this.a.a.isFinishing()) {
      WebMapPreViewActivity.a(this.a.a).a().setProgressBarIndeterminateVisibility(false);
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.ui.media.bp
 * JD-Core Version:    0.7.0.1
 */