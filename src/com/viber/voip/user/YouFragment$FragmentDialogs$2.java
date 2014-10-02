package com.viber.voip.user;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.viber.voip.ViberApplication;

class YouFragment$FragmentDialogs$2
  implements DialogInterface.OnClickListener
{
  YouFragment$FragmentDialogs$2(YouFragment.FragmentDialogs paramFragmentDialogs) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    ViberApplication.exit(this.this$0.getActivity(), false);
    paramDialogInterface.dismiss();
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.user.YouFragment.FragmentDialogs.2
 * JD-Core Version:    0.7.0.1
 */