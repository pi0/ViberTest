package com.viber.voip.phone.b.b;

import android.app.Dialog;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.app.DialogFragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.Window;
import android.view.WindowManager.LayoutParams;
import android.widget.Button;
import android.widget.TextView;
import com.viber.jni.PhoneControllerWrapper;
import com.viber.jni.secure.SecureCallsController;
import com.viber.voip.ViberApplication;
import com.viber.voip.contacts.b.b;
import com.viber.voip.phone.call.CallerInfo;
import com.viber.voip.phone.call.k;
import com.viber.voip.phone.call.n;
import com.viber.voip.util.fy;

public class c
  extends DialogFragment
{
  private k a = ViberApplication.getInstance().getPhoneController(false).getCurrentCall();
  private SecureCallsController b = ViberApplication.getInstance().getPhoneController(false).getSecureCallsController();
  private TextView c;
  private TextView d;
  private Button e;
  private fy f = new fy(new int[][] { { 1, 4, 8, 2, 2131494494 }, { 4, 8, 2, 2131494495 }, { 1, 4, 8, 2131494496 }, { 4, 8, 2131494497 }, { 1, 4, 2131494498 }, { 4, 2131494499 }, { 1, 8, 2, 2131494493 }, { 1, 8, 2131494491 }, { 1, 2131494492 }, { 8, 2131494490 } });
  
  public void a(boolean paramBoolean)
  {
    if (isResumed())
    {
      if (paramBoolean) {
        getDialog().hide();
      }
    }
    else {
      return;
    }
    getDialog().show();
  }
  
  public Dialog onCreateDialog(Bundle paramBundle)
  {
    Dialog localDialog = new Dialog(getActivity(), 2131558488);
    View localView = localDialog.getLayoutInflater().inflate(2130903147, null);
    this.e = ((Button)localView.findViewById(2131165617));
    this.e.setOnClickListener(new d(this));
    this.c = ((TextView)localView.findViewById(2131165616));
    this.d = ((TextView)localView.findViewById(2131165618));
    this.d.setOnClickListener(new e(this));
    localDialog.requestWindowFeature(1);
    localDialog.setContentView(localView);
    return localDialog;
  }
  
  public void onResume()
  {
    super.onResume();
    Dialog localDialog = getDialog();
    WindowManager.LayoutParams localLayoutParams = new WindowManager.LayoutParams();
    localLayoutParams.copyFrom(localDialog.getWindow().getAttributes());
    if (ViberApplication.isTablet()) {}
    for (localLayoutParams.width = getResources().getDimensionPixelSize(2131361972);; localLayoutParams.width = -1)
    {
      localLayoutParams.height = -2;
      localDialog.getWindow().setAttributes(localLayoutParams);
      if (this.a != null) {
        break;
      }
      return;
    }
    n localn = this.a.d();
    if ((this.a.c().c() != null) && (-1L != this.a.c().c().getId())) {}
    for (String str1 = this.a.c().a();; str1 = this.a.c().b())
    {
      String str2 = localn.j();
      this.c.setText(getString(this.f.a(localn.g()), new Object[] { str1, str2 }));
      if ((localn.l()) && ((localn.m()) || (!localn.k()))) {
        break;
      }
      this.e.setVisibility(8);
      return;
    }
    this.e.setVisibility(0);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.phone.b.b.c
 * JD-Core Version:    0.7.0.1
 */