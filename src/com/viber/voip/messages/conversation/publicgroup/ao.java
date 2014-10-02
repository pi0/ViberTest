package com.viber.voip.messages.conversation.publicgroup;

import android.view.MotionEvent;
import com.viber.jni.PhoneControllerDelegateAdapter;
import com.viber.jni.PublicGroupChangeEvent;
import com.viber.jni.PublicGroupMessage;
import com.viber.jni.controller.PhoneController;
import com.viber.voip.ViberApplication;
import com.viber.voip.messages.controller.GroupController;
import com.viber.voip.messages.conversation.a.a.a;
import com.viber.voip.messages.conversation.a.o;
import com.viber.voip.messages.conversation.a.s;
import com.viber.voip.messages.conversation.ui.ConversationData;
import com.viber.voip.messages.conversation.v;
import com.viber.voip.messages.conversation.w;
import com.viber.voip.messages.i;

class ao
  extends PhoneControllerDelegateAdapter
  implements s
{
  private PhoneController b;
  private int c = 0;
  
  public ao(PublicGroupConversationFragment paramPublicGroupConversationFragment, PhoneController paramPhoneController)
  {
    this.b = paramPhoneController;
  }
  
  private int b(int paramInt)
  {
    return 50 * (paramInt / 50);
  }
  
  public void a(int paramInt) {}
  
  public void a(int paramInt1, int paramInt2, int paramInt3)
  {
    if ((paramInt1 <= 7) && (!PublicGroupConversationFragment.l(this.a)) && (this.a.e().getCount() > 0))
    {
      aq localaq = (aq)PublicGroupConversationFragment.m(this.a).f();
      if ((localaq != null) && (3 == localaq.u()) && (PublicGroupConversationFragment.n(this.a).e().getCount() != 1)) {
        break label76;
      }
    }
    label76:
    int i;
    do
    {
      do
      {
        return;
        if (PublicGroupConversationFragment.o(this.a).j())
        {
          PublicGroupConversationFragment.p(this.a).i();
          PublicGroupConversationFragment.a(this.a, true);
          return;
        }
      } while (this.c != 0);
      i = b(this.a.e().a(0).af());
    } while (i <= 0);
    this.c = this.b.generateSequence();
    PublicGroupConversationFragment.a(this.a, true);
    ViberApplication.getInstance().getMessagesManager().d().a(this.c, this.a.g().m, i);
  }
  
  public void a(MotionEvent paramMotionEvent) {}
  
  public void onGetPublicGroupMessages(int paramInt1, long paramLong, PublicGroupMessage[] paramArrayOfPublicGroupMessage, PublicGroupChangeEvent[] paramArrayOfPublicGroupChangeEvent, int paramInt2)
  {
    if (paramInt1 == this.c) {
      this.c = 0;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.conversation.publicgroup.ao
 * JD-Core Version:    0.7.0.1
 */