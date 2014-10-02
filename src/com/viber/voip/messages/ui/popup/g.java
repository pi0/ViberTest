package com.viber.voip.messages.ui.popup;

import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import com.viber.voip.ViberApplication;
import com.viber.voip.messages.controller.x;
import com.viber.voip.messages.conversation.as;
import com.viber.voip.messages.i;
import com.viber.voip.messages.orm.entity.impl.ConversationEntityImpl;

class g
  implements Runnable
{
  g(f paramf, ConversationEntityImpl paramConversationEntityImpl) {}
  
  public void run()
  {
    if ((PopupMessageActivity.o(this.b.a)) && (!this.a.isConversationGroup()))
    {
      this.b.a.a("sendHandleGetLastOnline lastOnlineEnabled:" + PopupMessageActivity.o(this.b.a));
      ViberApplication.getInstance().getMessagesManager().c().a(this.a.getNumber());
    }
    if (this.a.isSystemConversation())
    {
      Button localButton2 = PopupMessageActivity.d(this.b.a).j;
      boolean bool2 = PopupMessageActivity.p(this.b.a);
      int k = 0;
      if (bool2) {
        k = 8;
      }
      localButton2.setVisibility(k);
      PopupMessageActivity.d(this.b.a).k.setVisibility(8);
      PopupMessageActivity.d(this.b.a).m.setVisibility(8);
      PopupMessageActivity.a(this.b.a, new as(this.b.a.getApplicationContext(), this.b.a.getSupportLoaderManager(), ViberApplication.getInstance().getMessagesManager(), this.b.a));
      PopupMessageActivity.d(this.b.a).i.setText(this.a.getMessageDraft());
      PopupMessageActivity.q(this.b.a);
      PopupMessageActivity.e(this.b.a).a(this.a.getId());
      PopupMessageActivity.e(this.b.a).e();
      PopupMessageActivity.e(this.b.a).v();
      return;
    }
    Button localButton1 = PopupMessageActivity.d(this.b.a).j;
    int i;
    label337:
    View localView;
    int j;
    if (PopupMessageActivity.p(this.b.a))
    {
      i = 8;
      localButton1.setVisibility(i);
      localView = PopupMessageActivity.d(this.b.a).k;
      boolean bool1 = PopupMessageActivity.p(this.b.a);
      j = 0;
      if (!bool1) {
        break label390;
      }
    }
    for (;;)
    {
      localView.setVisibility(j);
      break;
      i = 0;
      break label337;
      label390:
      j = 8;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.ui.popup.g
 * JD-Core Version:    0.7.0.1
 */