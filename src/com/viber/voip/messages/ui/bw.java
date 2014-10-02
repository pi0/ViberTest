package com.viber.voip.messages.ui;

import android.text.Editable;
import android.text.TextWatcher;
import android.text.style.ImageSpan;
import android.widget.ImageButton;
import com.viber.voip.a.a;
import com.viber.voip.a.ad;
import com.viber.voip.a.bc;
import com.viber.voip.a.m;
import com.viber.voip.h.b;
import com.viber.voip.h.d;
import com.viber.voip.messages.LocationEditText;
import com.viber.voip.messages.conversation.h;
import com.viber.voip.widget.RadioButton;

class bw
  implements TextWatcher
{
  private boolean b;
  
  bw(MessageComposerView paramMessageComposerView) {}
  
  public void afterTextChanged(Editable paramEditable) {}
  
  public void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
  
  public void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
    if (!this.b)
    {
      this.b = true;
      int i = paramInt1 + paramInt3;
      MessageComposerView.q(this.a).a(MessageComposerView.g(this.a), bd.b, paramInt1, i, false);
      Editable localEditable = MessageComposerView.g(this.a).getText();
      ImageSpan[] arrayOfImageSpan = (ImageSpan[])localEditable.getSpans(i, i, ImageSpan.class);
      if ((arrayOfImageSpan != null) && (arrayOfImageSpan.length > 0))
      {
        ImageSpan localImageSpan = arrayOfImageSpan[0];
        if (localEditable.getSpanStart(localImageSpan) < i) {
          MessageComposerView.g(this.a).setSelection(localEditable.getSpanEnd(localImageSpan));
        }
      }
      this.b = false;
    }
    b localb;
    if (!MessageComposerView.r(this.a))
    {
      MessageComposerView.a(this.a, true);
      if ((!MessageComposerView.s(this.a)) || (MessageComposerView.t(this.a) == null) || (MessageComposerView.t(this.a).t())) {
        break label295;
      }
      MessageComposerView.u(this.a).setVisibility(8);
      MessageComposerView.v(this.a).setVisibility(0);
      localb = b.d();
      if (MessageComposerView.t(this.a) == null) {
        break label287;
      }
    }
    label287:
    for (long l = MessageComposerView.t(this.a).a();; l = -1L)
    {
      localb.a(false, new d(l), true);
      a.r.a(MessageComposerView.f(this.a).b());
      bc.a().a(a.r.e());
      return;
      MessageComposerView.b(this.a, false);
      break;
    }
    label295:
    MessageComposerView.u(this.a).setVisibility(0);
    ImageButton localImageButton = MessageComposerView.u(this.a);
    boolean bool1 = MessageComposerView.s(this.a);
    boolean bool2 = false;
    if (!bool1) {
      bool2 = true;
    }
    localImageButton.setEnabled(bool2);
    MessageComposerView.v(this.a).setVisibility(8);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.ui.bw
 * JD-Core Version:    0.7.0.1
 */