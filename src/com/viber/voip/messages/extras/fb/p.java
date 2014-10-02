package com.viber.voip.messages.extras.fb;

import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import com.viber.voip.settings.l;
import com.viber.voip.util.ak;

final class p
  implements CompoundButton.OnCheckedChangeListener
{
  p(l paraml, CheckBox paramCheckBox1, CheckBox paramCheckBox2) {}
  
  public void onCheckedChanged(CompoundButton paramCompoundButton, boolean paramBoolean)
  {
    boolean bool1 = true;
    FacebookLikeDialogActivity.a(paramBoolean);
    this.a.a("show_rate_dialog", FacebookLikeDialogActivity.a());
    long l;
    boolean bool2;
    label67:
    CheckBox localCheckBox2;
    if (FacebookLikeDialogActivity.a())
    {
      l = 0L;
      FacebookLikeDialogActivity.a(l);
      this.a.a("rate_dialog_shown_time", FacebookLikeDialogActivity.b());
      CheckBox localCheckBox1 = this.b;
      if (FacebookLikeDialogActivity.a()) {
        break label122;
      }
      bool2 = bool1;
      localCheckBox1.setEnabled(bool2);
      localCheckBox2 = this.c;
      if ((FacebookLikeDialogActivity.a()) || (FacebookLikeDialogActivity.b() == 0L)) {
        break label128;
      }
    }
    for (;;)
    {
      localCheckBox2.setEnabled(bool1);
      this.c.setChecked(ak.isToday(FacebookLikeDialogActivity.b()));
      return;
      l = System.currentTimeMillis();
      break;
      label122:
      bool2 = false;
      break label67;
      label128:
      bool1 = false;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.extras.fb.p
 * JD-Core Version:    0.7.0.1
 */