package com.viber.voip.messages.conversation.publicgroup;

import android.app.ProgressDialog;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.inputmethod.InputMethodManager;
import com.viber.voip.messages.conversation.ax;
import com.viber.voip.util.upload.ac;
import com.viber.voip.util.upload.ak;
import com.viber.voip.widget.TextViewWithDescription;
import com.viber.voip.widget.aa;

class y
  implements View.OnClickListener
{
  y(EditPublicGroupActivity paramEditPublicGroupActivity) {}
  
  public void onClick(View paramView)
  {
    ((InputMethodManager)this.a.getSystemService("input_method")).hideSoftInputFromWindow(this.a.b.getEditText().getWindowToken(), 0);
    if (this.a.a(true) != 1) {}
    do
    {
      return;
      this.a.m = ProgressDialog.show(this.a, "", this.a.getString(2131493613), true, true);
      EditPublicGroupActivity.a(this.a).a(this.a.b.getText().toString().trim());
      EditPublicGroupActivity.a(this.a).b(this.a.f.getText().toString().trim());
      EditPublicGroupActivity.a(this.a).a(this.a.e.a());
      EditPublicGroupActivity.a(this.a).a(this.a.q);
      EditPublicGroupActivity.a(this.a).c(this.a.c());
      if (this.a.p > 0L) {
        EditPublicGroupActivity.a(this.a).b(this.a.p);
      }
      if ((this.a.n == null) && (this.a.o == null))
      {
        if (EditPublicGroupActivity.b(this.a))
        {
          this.a.finish();
          return;
        }
        this.a.m.dismiss();
        this.a.m = null;
        return;
      }
      if (this.a.n != null) {
        ac.a(ak.d, this.a.n, this.a);
      }
    } while (this.a.o == null);
    ac.a(ak.e, this.a.o, this.a);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.conversation.publicgroup.y
 * JD-Core Version:    0.7.0.1
 */