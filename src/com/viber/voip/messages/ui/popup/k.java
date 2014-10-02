package com.viber.voip.messages.ui.popup;

import android.os.Handler;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import com.viber.jni.PhoneControllerWrapper;
import com.viber.voip.ViberApplication;
import com.viber.voip.a.a;
import com.viber.voip.a.ah;
import com.viber.voip.a.bc;
import com.viber.voip.messages.orm.entity.impl.ConversationEntityImpl;
import java.util.concurrent.atomic.AtomicBoolean;

class k
  implements TextWatcher
{
  private int b = 0;
  private boolean c;
  private boolean d = true;
  private final Runnable e = new l(this);
  private final Runnable f = new m(this);
  
  private k(PopupMessageActivity paramPopupMessageActivity) {}
  
  private void a()
  {
    if (PopupMessageActivity.t(this.a) != null)
    {
      if (!PopupMessageActivity.t(this.a).isConversationGroup()) {
        ViberApplication.getInstance().getPhoneController(true).handleUserIsTyping(PopupMessageActivity.t(this.a).getNumber(), this.c);
      }
    }
    else {
      return;
    }
    ViberApplication.getInstance().getPhoneController(true).handleGroupUserIsTyping(PopupMessageActivity.t(this.a).getGroupId(), this.c);
  }
  
  private void b()
  {
    PopupMessageActivity.m(this.a).removeCallbacks(this.e);
    PopupMessageActivity.m(this.a).removeCallbacks(this.f);
    PopupMessageActivity.m(this.a).post(this.f);
  }
  
  public void afterTextChanged(Editable paramEditable)
  {
    if (TextUtils.isEmpty(paramEditable.toString()))
    {
      PopupMessageActivity.m(this.a).removeCallbacks(this.e);
      PopupMessageActivity.m(this.a).removeCallbacks(this.f);
      PopupMessageActivity.m(this.a).postDelayed(this.f, 2000L);
    }
    if (this.d) {
      this.d = false;
    }
  }
  
  public void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
  
  public void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
    if ((!PopupMessageActivity.r(this.a)) && (TextUtils.getTrimmedLength(paramCharSequence) > 1))
    {
      PopupMessageActivity.b(this.a, true);
      bc.a().a(a.y.c());
    }
    if (PopupMessageActivity.s(this.a).get())
    {
      PopupMessageActivity.j(this.a);
      PopupMessageActivity.s(this.a).set(false);
    }
    int i = 1 + this.b;
    this.b = i;
    if (i == 3)
    {
      this.b = 0;
      if (!this.c)
      {
        this.c = true;
        a();
        PopupMessageActivity.m(this.a).removeCallbacks(this.f);
        PopupMessageActivity.m(this.a).removeCallbacks(this.e);
        PopupMessageActivity.m(this.a).postDelayed(this.e, 10000L);
      }
    }
    PopupMessageActivity.q(this.a);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.ui.popup.k
 * JD-Core Version:    0.7.0.1
 */