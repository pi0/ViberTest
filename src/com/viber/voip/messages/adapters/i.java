package com.viber.voip.messages.adapters;

import com.viber.voip.as;
import com.viber.voip.messages.ui.view.ViewPagerWithPagingEnable;

class i
  implements com.viber.voip.messages.ui.view.i
{
  i(h paramh, ViewPagerWithPagingEnable paramViewPagerWithPagingEnable) {}
  
  public void a(int paramInt1, int paramInt2)
  {
    h.a(this.b).a(paramInt1, paramInt2);
    this.a.post(new j(this));
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.adapters.i
 * JD-Core Version:    0.7.0.1
 */