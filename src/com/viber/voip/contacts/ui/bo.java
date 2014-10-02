package com.viber.voip.contacts.ui;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import com.viber.voip.messages.adapters.a.a.b;
import com.viber.voip.messages.adapters.k;
import com.viber.voip.messages.conversation.ConversationLoaderEntity;
import com.viber.voip.messages.conversation.i;
import com.viber.voip.messages.ui.MessagesFragmentModeManager;

class bo
  extends k
{
  public bo(Context paramContext, i<ConversationLoaderEntity> parami, MessagesFragmentModeManager paramMessagesFragmentModeManager, boolean paramBoolean)
  {
    super(parami, paramMessagesFragmentModeManager, paramBoolean, bool);
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    View localView = super.getView(paramInt, paramView, paramViewGroup);
    b localb = (b)localView.getTag();
    if (paramView == null) {}
    for (boolean bool = true;; bool = false)
    {
      localb.a(bool);
      localb.a();
      return localView;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.contacts.ui.bo
 * JD-Core Version:    0.7.0.1
 */