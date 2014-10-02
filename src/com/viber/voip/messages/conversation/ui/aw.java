package com.viber.voip.messages.conversation.ui;

import android.app.AlertDialog;
import android.view.View;
import android.view.View.OnClickListener;
import com.viber.voip.a.a;
import com.viber.voip.a.bc;
import com.viber.voip.a.u;

class aw
  implements View.OnClickListener
{
  aw(ConversationFragment paramConversationFragment, AlertDialog paramAlertDialog) {}
  
  public void onClick(View paramView)
  {
    switch (paramView.getId())
    {
    default: 
      return;
    case 2131165756: 
      bc localbc3 = bc.a();
      u localu3 = a.z;
      a.z.getClass();
      a.z.getClass();
      localbc3.a(localu3.a("501b", "Cancel"));
      if ((ConversationFragment.a(this.b) != null) && (ConversationFragment.a(this.b).a())) {
        ConversationFragment.a(this.b).i();
      }
      this.a.dismiss();
      return;
    case 2131165757: 
      bc localbc2 = bc.a();
      u localu2 = a.z;
      a.z.getClass();
      a.z.getClass();
      localbc2.a(localu2.a("501b", "Mute"));
      ConversationFragment.d(this.b);
      this.a.dismiss();
      return;
    }
    bc localbc1 = bc.a();
    u localu1 = a.z;
    a.z.getClass();
    a.z.getClass();
    localbc1.a(localu1.a("501b", "Leave and Delete"));
    ConversationFragment.c(this.b);
    this.a.dismiss();
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.conversation.ui.aw
 * JD-Core Version:    0.7.0.1
 */