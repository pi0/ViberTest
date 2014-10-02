package com.viber.voip.ui;

import android.view.View;
import android.view.ViewStub;

class j
  implements Runnable
{
  private j(h paramh) {}
  
  public void run()
  {
    if (this.a.getView() != null)
    {
      ViewStub localViewStub = (ViewStub)this.a.getView().findViewById(2131165394);
      if (localViewStub != null) {
        localViewStub.inflate();
      }
      this.a.h();
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.ui.j
 * JD-Core Version:    0.7.0.1
 */