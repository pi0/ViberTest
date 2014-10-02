package com.viber.voip.user;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.widget.EditText;
import com.viber.voip.ViberApplication;
import com.viber.voip.messages.controller.dn;
import com.viber.voip.messages.i;

class YouFragment$FragmentDialogs$1
  implements DialogInterface.OnClickListener
{
  YouFragment$FragmentDialogs$1(YouFragment.FragmentDialogs paramFragmentDialogs, EditText paramEditText) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    String str = this.val$dialogEditTextName.getText().toString().trim();
    ViberApplication.getInstance().getMessagesManager().e().a(str);
    paramDialogInterface.dismiss();
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.user.YouFragment.FragmentDialogs.1
 * JD-Core Version:    0.7.0.1
 */