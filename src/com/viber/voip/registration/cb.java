package com.viber.voip.registration;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Spinner;
import android.widget.TextView;
import android.widget.Toast;
import com.viber.jni.PhoneControllerWrapper;
import com.viber.voip.ViberApplication;
import com.viber.voip.a.a;
import com.viber.voip.a.ak;
import com.viber.voip.a.bc;
import com.viber.voip.a.u;
import com.viber.voip.d;
import com.viber.voip.util.fq;
import com.viber.voip.util.hb;
import com.viber.voip.util.l;
import java.util.regex.Pattern;

public class cb
  extends ai
  implements DialogInterface.OnCancelListener, DialogInterface.OnClickListener, View.OnClickListener, d
{
  private static final String[] b = { "prod", "int", "dev" };
  private static final String[] c = { "primary", "secondary" };
  private Button d;
  private View e;
  private TextView f;
  private Spinner g;
  private Spinner h;
  private EditText i;
  private CountryCode j;
  private AlertDialog k;
  
  private void a(int paramInt)
  {
    Toast.makeText(getActivity(), paramInt, 0).show();
  }
  
  private void a(CountryCode paramCountryCode)
  {
    this.j = paramCountryCode;
    if (paramCountryCode == null)
    {
      this.f.setText(2131493548);
      return;
    }
    CharSequence localCharSequence = ViberApplication.getInstance().getBiDiAwareFormatter().a(paramCountryCode.c(), paramCountryCode.b());
    this.f.setText(localCharSequence);
  }
  
  private void a(boolean paramBoolean)
  {
    this.d.setEnabled(paramBoolean);
    this.i.setEnabled(paramBoolean);
    this.f.setEnabled(paramBoolean);
    this.e.setEnabled(paramBoolean);
  }
  
  private void m()
  {
    InputMethodManager localInputMethodManager = (InputMethodManager)getActivity().getSystemService("input_method");
    if ((localInputMethodManager != null) && (getActivity().getCurrentFocus() != null) && (getActivity().getCurrentFocus().getWindowToken() != null)) {
      localInputMethodManager.hideSoftInputFromWindow(getActivity().getCurrentFocus().getWindowToken(), 2);
    }
  }
  
  private void n()
  {
    if (this.j != null) {}
    for (String str1 = this.j.b(); TextUtils.isEmpty(str1); str1 = "")
    {
      a(2131493625);
      return;
    }
    String str2 = p();
    String str3 = ViberApplication.getInstance().getPhoneController(true).canonizePhoneNumberForCountryCode(Integer.parseInt(str1), str2);
    String str4 = cp.a(str3, str1);
    h("canonizePhoneNumber phoneNumber=" + str2 + ", code=" + str1 + ", alphaCountryCode=" + str4 + ", canonizedNumber=" + str3);
    if ((!str2.matches(fq.h.toString())) || (str3 == null))
    {
      bc localbc = bc.a();
      u localu = a.z;
      a.z.getClass();
      localbc.a(localu.b("103"));
      AlertDialog.Builder localBuilder = new AlertDialog.Builder(getActivity());
      localBuilder.setTitle(2131493775).setMessage(2131494137).setPositiveButton(2131493683, new ce(this)).setOnCancelListener(this);
      this.k = localBuilder.create();
      this.k.show();
      return;
    }
    a(str1, str4, str2);
  }
  
  private void o()
  {
    RegistrationScrollView localRegistrationScrollView = (RegistrationScrollView)getActivity().findViewById(2131166112);
    if (localRegistrationScrollView != null) {
      localRegistrationScrollView.setOnResizeViewListener(new cg(this, localRegistrationScrollView));
    }
  }
  
  private String p()
  {
    return this.i.getText().toString();
  }
  
  public void a(String paramString)
  {
    super.a(paramString);
    h("activationCodeReceived");
    ActivationController localActivationController = g();
    localActivationController.setActicationCode(paramString);
    new Intent("com.viber.voip.action.ACTIVATION").putExtra("activation_code", paramString);
    localActivationController.setStep(1, true);
  }
  
  public void a(String paramString1, String paramString2)
  {
    super.a(paramString1, paramString2);
    if ((ViberApplication.isTablet()) && ("114".equals(paramString2)))
    {
      g().setStep(5, true);
      return;
    }
    if ((ViberApplication.isTablet()) && ("115".equals(paramString2)))
    {
      i();
      return;
    }
    if ("104".equals(paramString2))
    {
      e(paramString1);
      return;
    }
    d(paramString1);
  }
  
  protected void b() {}
  
  protected void c()
  {
    if (ViberApplication.isTablet()) {
      a(false);
    }
    super.c();
  }
  
  protected void f()
  {
    super.f();
    FragmentActivity localFragmentActivity = getActivity();
    if ((localFragmentActivity != null) && (!localFragmentActivity.isFinishing()) && (ViberApplication.isTablet())) {
      a(true);
    }
  }
  
  public void l()
  {
    ViberApplication.getInstance().getCountryCodeManager().a(new cc(this));
  }
  
  public boolean onActivityBackPressed()
  {
    g().setStep(4, false);
    return super.onActivityBackPressed();
  }
  
  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    if (paramBundle != null)
    {
      this.j = ((CountryCode)paramBundle.getParcelable("country_code"));
      String str = paramBundle.getString("number");
      a(this.j);
      if (str != null) {
        this.i.setText(str);
      }
    }
    l();
  }
  
  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    if ((paramInt2 == -1) && (paramInt1 == 1) && (paramIntent != null) && (paramIntent.hasExtra("extra_selected_code")))
    {
      this.j = ((CountryCode)paramIntent.getParcelableExtra("extra_selected_code"));
      a(this.j);
    }
  }
  
  public void onCancel(DialogInterface paramDialogInterface)
  {
    TextView localTextView = (TextView)((Dialog)paramDialogInterface).findViewById(16908299);
    if ((localTextView != null) && (localTextView.getText().toString().equals(Integer.valueOf(2131494137))))
    {
      bc localbc = bc.a();
      u localu = a.z;
      a.z.getClass();
      localbc.a(localu.c("103"));
    }
  }
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface.cancel();
    ViberApplication localViberApplication = ViberApplication.getInstance();
    localViberApplication.getPhoneController(false).addInitializedListener(new ci(this, localViberApplication));
    g().setStep(1, true);
  }
  
  public void onClick(View paramView)
  {
    switch (paramView.getId())
    {
    default: 
      return;
    case 2131165881: 
      hb.a(getActivity());
      return;
    case 2131165532: 
      m();
      n();
      return;
    }
    bc localbc = bc.a();
    ak localak = a.b;
    if (this.j != null) {}
    for (String str = this.j.c();; str = "")
    {
      localbc.a(localak.b(str));
      Intent localIntent = new Intent(getActivity(), SelectCountryActivity.class);
      localIntent.putExtra("extra_selected_code", this.j);
      startActivityForResult(localIntent, 1);
      return;
    }
  }
  
  public void onCreate(Bundle paramBundle)
  {
    h("onCreate");
    super.onCreate(paramBundle);
    bc.a().a(a.b.a());
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    View localView = paramLayoutInflater.inflate(2130903320, paramViewGroup, false);
    this.i = ((EditText)localView.findViewById(2131165531));
    this.i.addTextChangedListener(new cf(this));
    this.d = ((Button)localView.findViewById(2131165532));
    this.d.setOnClickListener(this);
    this.e = localView.findViewById(2131166107);
    this.e.setOnClickListener(this);
    this.f = ((TextView)localView.findViewById(2131166108));
    this.g = ((Spinner)localView.findViewById(2131166109));
    this.h = ((Spinner)localView.findViewById(2131166110));
    dj.a(ViberApplication.isTablet());
    this.g.setVisibility(8);
    this.h.setVisibility(8);
    o();
    return localView;
  }
  
  public void onDestroy()
  {
    g().removeRegistrationCallback();
    g("waiting_for_activation_dialog");
    super.onDestroy();
  }
  
  public void onResume()
  {
    super.onResume();
    Intent localIntent = getActivity().getIntent();
    if ((localIntent != null) && (localIntent.hasExtra("extra_selected_code")))
    {
      this.j = ((CountryCode)localIntent.getParcelableExtra("extra_selected_code"));
      a(this.j);
    }
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    paramBundle.putParcelable("country_code", this.j);
    paramBundle.putString("number", p());
    super.onSaveInstanceState(paramBundle);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.registration.cb
 * JD-Core Version:    0.7.0.1
 */