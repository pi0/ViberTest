package com.viber.voip.registration;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.content.Intent;
import android.content.res.Resources;
import android.net.Uri;
import android.os.AsyncTask.Status;
import android.os.Bundle;
import android.os.CountDownTimer;
import android.os.Handler;
import android.support.v4.app.FragmentActivity;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import com.viber.voip.ViberApplication;
import com.viber.voip.a.a;
import com.viber.voip.a.d;
import com.viber.voip.bd;
import com.viber.voip.dc;
import com.viber.voip.dk;
import com.viber.voip.settings.l;
import com.viber.voip.util.hb;
import java.text.SimpleDateFormat;

public class t
  extends ai
  implements DialogInterface.OnCancelListener, View.OnClickListener
{
  private Button b;
  private EditText c;
  private View d;
  private View e;
  private TextView f;
  private Button g;
  private z h;
  private aa i;
  private String j;
  private String k;
  private CountDownTimer l;
  private int m = 0;
  private long n = 60000L;
  private int o;
  
  private void a(int paramInt)
  {
    this.m = paramInt;
    switch (paramInt)
    {
    default: 
      return;
    case 0: 
      this.d.setVisibility(0);
      this.e.setVisibility(8);
      m();
      return;
    case 1: 
      if (dj.d()) {}
      this.d.setVisibility(8);
      this.e.setVisibility(0);
      g("activation_waiting_dialog");
      return;
    }
    this.d.setVisibility(8);
    this.e.setVisibility(8);
    n();
  }
  
  private void b(View paramView)
  {
    this.c = ((EditText)paramView.findViewById(2131165531));
    this.c.addTextChangedListener(new u(this));
    this.d = paramView.findViewById(2131165533);
    this.f = ((TextView)paramView.findViewById(2131165534));
    this.e = paramView.findViewById(2131165535);
    this.g = ((Button)paramView.findViewById(2131165536));
    this.g.setOnClickListener(this);
    this.b = ((Button)paramView.findViewById(2131165532));
    this.b.setOnClickListener(this);
    if (dj.d())
    {
      this.g.setText(2131494354);
      a(paramView);
    }
  }
  
  private void c(df paramdf)
  {
    h("onActivationAccepted");
    if (paramdf.e) {}
    for (int i1 = 3;; i1 = 2)
    {
      ActivationController localActivationController = ViberApplication.getInstance().getActivationController();
      h("onActivationAccepted :: setting device key " + paramdf.d);
      localActivationController.setDeviceKey(paramdf.d);
      localActivationController.setKeyChainDeviceKey(paramdf.d);
      localActivationController.setStep(i1, true);
      a(2);
      return;
    }
  }
  
  private void i(String paramString)
  {
    this.c.setText(paramString);
  }
  
  private void j(String paramString)
  {
    this.b.setEnabled(true);
    if ((paramString == null) || (paramString.length() == 0)) {}
    for (this.k = getString(2131493616);; this.k = paramString)
    {
      h("onActivationRejected");
      com.viber.voip.a.bc localbc = com.viber.voip.a.bc.a();
      com.viber.voip.a.u localu = a.z;
      a.z.getClass();
      localbc.a(localu.b("104"));
      new AlertDialog.Builder(getActivity()).setCancelable(true).setTitle(2131494177).setMessage(this.k).setPositiveButton(2131493683, new y(this)).setOnCancelListener(this).create().show();
      return;
    }
  }
  
  private String l()
  {
    Bundle localBundle1 = getActivity().getIntent().getExtras();
    String str1;
    if ((localBundle1 != null) && (localBundle1.getString("activation_code") != null)) {
      str1 = localBundle1.getString("activation_code");
    }
    for (;;)
    {
      h("lookupActivationCode activationCode:" + str1);
      return str1;
      Bundle localBundle2 = getArguments();
      str1 = null;
      if (localBundle2 != null)
      {
        String str2 = getArguments().getString("activation_code");
        str1 = null;
        if (str2 != null) {
          str1 = getArguments().getString("activation_code");
        }
      }
    }
  }
  
  private void m()
  {
    SimpleDateFormat localSimpleDateFormat = new SimpleDateFormat("mm:ss");
    this.l = new v(this, this.n, 1000L, localSimpleDateFormat);
    this.l.start();
  }
  
  private void n()
  {
    if (this.l != null)
    {
      this.l.cancel();
      this.l = null;
    }
  }
  
  private void o()
  {
    this.j = r();
    if (TextUtils.isEmpty(this.j)) {
      getActivity().showDialog(5);
    }
    while ((this.h != null) || (getActivity().isFinishing())) {
      return;
    }
    this.b.setEnabled(false);
    f("activation_waiting_dialog");
    z localz = new z(this, null);
    this.h = localz;
    String[] arrayOfString = new String[1];
    arrayOfString[0] = this.j;
    localz.execute(arrayOfString);
  }
  
  private void p()
  {
    InputMethodManager localInputMethodManager = (InputMethodManager)getActivity().getSystemService("input_method");
    if ((localInputMethodManager != null) && (getActivity().getCurrentFocus() != null) && (getActivity().getCurrentFocus().getWindowToken() != null)) {
      localInputMethodManager.hideSoftInputFromWindow(getActivity().getCurrentFocus().getWindowToken(), 2);
    }
  }
  
  private void q()
  {
    getActivity().runOnUiThread(new w(this));
  }
  
  private String r()
  {
    return this.c.getText().toString();
  }
  
  private void s()
  {
    h("saveState");
    ViberApplication.preferences().a("activation_code_key", r());
  }
  
  private void t()
  {
    h("restoreState");
    String str = ViberApplication.preferences().b("activation_code_key", null);
    Bundle localBundle = getActivity().getIntent().getExtras();
    if ((str != null) && (localBundle != null) && (localBundle.getString("activation_code") == null)) {
      this.c.setText(str);
    }
  }
  
  public void a(String paramString)
  {
    com.viber.voip.a.bc.a().a(a.d.a((60000L - this.n) / 1000L));
    ViberApplication.getInstance().getActivationController().setActicationCode(paramString);
    dc.a(dk.a).post(new x(this, paramString));
  }
  
  protected void b()
  {
    dj.a(false);
    j();
    getActivity().findViewById(2131165537).setVisibility(8);
  }
  
  protected void b(String paramString)
  {
    i(paramString);
    o();
    this.b.setEnabled(false);
  }
  
  protected void c()
  {
    if (ViberApplication.isTablet())
    {
      this.b.setEnabled(false);
      this.c.setEnabled(false);
      this.g.setEnabled(false);
    }
    super.c();
  }
  
  protected void d()
  {
    super.d();
    if ((!getActivity().isFinishing()) && (ViberApplication.isTablet()))
    {
      this.c.setEnabled(true);
      this.g.setEnabled(true);
    }
  }
  
  public boolean onActivityBackPressed()
  {
    if ((this.h != null) && (this.h.getStatus() == AsyncTask.Status.RUNNING)) {
      this.h.cancel(true);
    }
    if ((this.i != null) && (this.i.getStatus() == AsyncTask.Status.RUNNING)) {
      this.i.cancel(true);
    }
    g("activation_waiting_dialog");
    n();
    ViberApplication.getInstance().getActivationController().setStep(0, true);
    return true;
  }
  
  public void onAttach(Activity paramActivity)
  {
    super.onAttach(paramActivity);
    if (dj.d()) {
      k();
    }
  }
  
  public void onCancel(DialogInterface paramDialogInterface)
  {
    TextView localTextView = (TextView)((Dialog)paramDialogInterface).findViewById(16908299);
    if ((localTextView != null) && (localTextView.getText().toString().equals(this.k)))
    {
      com.viber.voip.a.bc localbc = com.viber.voip.a.bc.a();
      com.viber.voip.a.u localu = a.z;
      a.z.getClass();
      localbc.a(localu.c("104"));
    }
  }
  
  public void onClick(View paramView)
  {
    switch (paramView.getId())
    {
    default: 
    case 2131165532: 
    case 2131165536: 
      do
      {
        return;
        p();
        o();
        return;
        if (!dj.d())
        {
          com.viber.voip.a.bc.a().a(a.d.d());
          ViberApplication localViberApplication = ViberApplication.getInstance();
          String str1 = localViberApplication.getHardwareParameters().getUdid();
          ActivationController localActivationController = localViberApplication.getActivationController();
          String str2 = localActivationController.getCountryCode() + localActivationController.getRegNumber();
          h("onClick: GET: " + str2);
          String str3 = String.format(com.viber.voip.bc.b().w, new Object[] { str2, str1 });
          h("onClick: LINK: " + str3);
          startActivity(new Intent("android.intent.action.VIEW", Uri.parse(str3)));
          return;
        }
      } while ((this.i != null) || (getActivity().isFinishing()));
      this.g.setEnabled(false);
      f("activation_waiting_dialog");
      aa localaa = new aa(this, null);
      this.i = localaa;
      localaa.execute(new Void[0]);
      return;
    }
    hb.a(getActivity());
  }
  
  public void onCreate(Bundle paramBundle)
  {
    ViberApplication.log(4, "ActivationFragment", "ActivationFragment.onCreate");
    super.onCreate(paramBundle);
    if (paramBundle != null)
    {
      this.m = paramBundle.getInt("key_status");
      this.n = paramBundle.getLong("key_millis_until_finished");
      this.k = paramBundle.getString("activation_error_message_key");
    }
    for (;;)
    {
      this.o = getResources().getDimensionPixelSize(2131362332);
      return;
      com.viber.voip.a.bc.a().a(a.d.a());
    }
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    View localView = paramLayoutInflater.inflate(2130903124, paramViewGroup, false);
    b(localView);
    a(this.m);
    String str = l();
    if (str != null)
    {
      b(str);
      return localView;
    }
    this.b.setEnabled(false);
    return localView;
  }
  
  public void onDestroy()
  {
    if (this.h != null)
    {
      this.h.cancel(true);
      this.h = null;
    }
    if (this.i != null)
    {
      this.i.cancel(true);
      this.i = null;
    }
    g("activation_waiting_dialog");
    super.onDestroy();
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    paramBundle.putString("activation_error_message_key", this.k);
    paramBundle.putInt("key_status", this.m);
    paramBundle.putLong("key_millis_until_finished", this.n);
    super.onSaveInstanceState(paramBundle);
  }
  
  public void onStart()
  {
    super.onStart();
    t();
  }
  
  public void onStop()
  {
    super.onStop();
    s();
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.registration.t
 * JD-Core Version:    0.7.0.1
 */