package com.viber.voip;

import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentPagerAdapter;
import com.viber.voip.calls.ui.PhoneFragment;
import com.viber.voip.contacts.ui.bm;
import com.viber.voip.messages.conversation.publicgroup.bf;
import com.viber.voip.messages.ui.dp;

class an
  extends FragmentPagerAdapter
{
  public an(HomeActivity paramHomeActivity, FragmentManager paramFragmentManager)
  {
    super(paramFragmentManager);
  }
  
  public int getCount()
  {
    return HomeActivity.f(this.a);
  }
  
  public Fragment getItem(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return null;
    case 0: 
      return new dp();
    case 1: 
      return new bm();
    case 2: 
      return new PhoneFragment();
    }
    return new bf();
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.an
 * JD-Core Version:    0.7.0.1
 */