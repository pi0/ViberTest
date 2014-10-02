package com.viber.voip.registration;

import android.app.Dialog;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.text.Html;
import android.text.Spannable;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.method.LinkMovementMethod;
import android.text.style.ForegroundColorSpan;
import android.view.KeyEvent;
import android.view.View;
import android.widget.TextView;
import android.widget.TextView.BufferType;
import com.viber.voip.ViberApplication;
import com.viber.voip.a.a;
import com.viber.voip.a.bc;
import com.viber.voip.a.u;
import com.viber.voip.d;
import com.viber.voip.util.at;
import com.viber.voip.util.gj;
import com.viber.voip.util.l;
import com.viber.voip.widget.MessageBar;
import com.viber.voip.widget.e;

public abstract class ai
  extends com.viber.voip.ui.al
  implements d, o, r
{
  protected Handler a;
  private String b = "0";
  private String c;
  
  private void l()
  {
    Message localMessage = this.a.obtainMessage(1);
    this.a.sendMessageDelayed(localMessage, 10000L);
  }
  
  public void a()
  {
    h("onError()");
    if ((getActivity() != null) && (!getActivity().isFinishing()))
    {
      getActivity().showDialog(2);
      f();
    }
    g("waiting_for_activation_dialog");
  }
  
  protected void a(View paramView)
  {
    TextView localTextView = (TextView)paramView.findViewById(2131165537);
    localTextView.setVisibility(0);
    String str = localTextView.getText().toString();
    int i = str.indexOf("<a>");
    if (i != -1)
    {
      localTextView.setHighlightColor(getResources().getColor(17170445));
      localTextView.setMovementMethod(LinkMovementMethod.getInstance());
      localTextView.setText(Html.fromHtml(str), TextView.BufferType.SPANNABLE);
      Spannable localSpannable = (Spannable)localTextView.getText();
      localSpannable.setSpan(new am(this), i, localSpannable.length(), 33);
      localSpannable.setSpan(new ForegroundColorSpan(-1), i, localSpannable.length(), 33);
      return;
    }
    localTextView.setOnClickListener(new an(this));
  }
  
  public void a(df paramdf)
  {
    h("onFastRegistrationAccepted()");
    f();
    ActivationController localActivationController = g();
    String str = localActivationController.getKeyChainDeviceKey();
    h("onFastRegistrationAccepted() from KeyChain deviceKey=" + str);
    localActivationController.setDeviceKey(str);
    localActivationController.setStep(3, true);
  }
  
  public void a(String paramString)
  {
    f();
    g("waiting_for_activation_dialog");
  }
  
  public void a(String paramString1, String paramString2)
  {
    h("onRegistrationRejected() errorMessage=" + paramString1 + ", errorCode=" + paramString2);
    f();
    g("waiting_for_activation_dialog");
  }
  
  protected void a(String paramString1, String paramString2, String paramString3)
  {
    SpannableStringBuilder localSpannableStringBuilder = new SpannableStringBuilder(paramString3);
    gj.a(localSpannableStringBuilder);
    CharSequence localCharSequence = ViberApplication.getInstance().getBiDiAwareFormatter().b(paramString1, localSpannableStringBuilder.toString());
    bc localbc = bc.a();
    u localu = a.z;
    a.z.getClass();
    localbc.a(localu.b("105"));
    FragmentActivity localFragmentActivity = getActivity();
    if (ViberApplication.isTablet()) {}
    for (int i = 2131493986;; i = 0)
    {
      ((Dialog)at.a(localFragmentActivity, i, localCharSequence, new ak(this, paramString1, paramString2, paramString3), null, 2131493557, 2131493665, false)).setOnCancelListener(new al(this));
      return;
    }
  }
  
  protected abstract void b();
  
  public void b(df paramdf)
  {
    h("onRegistrationAccepted()");
    if (dj.d())
    {
      f();
      d();
    }
    for (;;)
    {
      g().setKeyChainDeviceKey(null);
      return;
      if (getActivity() != null) {
        ((RegistrationActivity)getActivity()).b();
      }
    }
  }
  
  protected void c()
  {
    h("sendRegisterRequest()");
    ActivationController localActivationController = g();
    String str = localActivationController.getKeyChainDeviceKey();
    if (!TextUtils.isEmpty(str)) {
      c("1");
    }
    f("waiting_for_activation_dialog");
    l();
    localActivationController.startRegistration(localActivationController.getCountryCode(), localActivationController.getRegNumber(), e(), str, this);
  }
  
  protected void c(String paramString)
  {
    this.b = paramString;
  }
  
  protected void d()
  {
    g("waiting_for_activation_dialog");
    if (!ViberApplication.isActivated()) {
      g().setStep(1, true);
    }
  }
  
  protected void d(String paramString)
  {
    this.c = paramString;
    if (!getActivity().isFinishing()) {
      at.a(getActivity(), getResources().getString(2131493615), this.c, null);
    }
  }
  
  protected String e()
  {
    return this.b;
  }
  
  protected void e(String paramString)
  {
    this.c = paramString;
    if (!getActivity().isFinishing()) {
      getActivity().showDialog(6);
    }
  }
  
  protected void f()
  {
    this.a.removeMessages(1);
  }
  
  protected void f(String paramString)
  {
    if ((getActivity() == null) || (getActivity().isFinishing())) {
      return;
    }
    FragmentTransaction localFragmentTransaction = getActivity().getSupportFragmentManager().beginTransaction();
    Fragment localFragment = getActivity().getSupportFragmentManager().findFragmentByTag(paramString);
    if (localFragment != null) {
      localFragmentTransaction.remove(localFragment);
    }
    int i;
    if ("country_code_loading_dialog".equals(paramString)) {
      i = 2131493613;
    }
    for (;;)
    {
      if ((i != -1) && (!ViberApplication.isTablet()))
      {
        e.a(i, true).a(localFragmentTransaction, paramString, true);
        return;
        if ("waiting_for_activation_dialog".equals(paramString))
        {
          i = 2131493624;
          continue;
        }
        if ("activation_waiting_dialog".equals(paramString)) {
          i = 2131493733;
        }
      }
      else
      {
        ((RegistrationActivity)getActivity()).h().a(getString(i), "", 0, 0, false, true, true);
        return;
      }
      i = -1;
    }
  }
  
  protected ActivationController g()
  {
    return ViberApplication.getInstance().getActivationController();
  }
  
  protected void g(String paramString)
  {
    h("dismissDialog tag:" + paramString);
    if (getActivity() == null) {}
    FragmentTransaction localFragmentTransaction;
    Fragment localFragment;
    do
    {
      return;
      localFragmentTransaction = getActivity().getSupportFragmentManager().beginTransaction();
      localFragment = getActivity().getSupportFragmentManager().findFragmentByTag(paramString);
      if (ViberApplication.isTablet())
      {
        ((RegistrationActivity)getActivity()).h().a();
        return;
      }
    } while (localFragment == null);
    try
    {
      localFragmentTransaction.remove(localFragment);
      localFragmentTransaction.commit();
      return;
    }
    catch (IllegalStateException localIllegalStateException)
    {
      h("error in dismissDialog tag:" + localIllegalStateException);
    }
  }
  
  protected void h()
  {
    getActivity().showDialog(2);
  }
  
  public void h(String paramString) {}
  
  protected void i()
  {
    getActivity().showDialog(4);
  }
  
  protected void j()
  {
    ActivationController localActivationController = g();
    a(localActivationController.getCountryCode(), localActivationController.getAlphaCountryCode(), localActivationController.getRegNumber());
  }
  
  protected void k()
  {
    at.a(getActivity(), null, getResources().getString(2131494404), null);
  }
  
  public boolean onActivityBackPressed()
  {
    f();
    return super.onActivityBackPressed();
  }
  
  public boolean onActivityKeyUp(int paramInt, KeyEvent paramKeyEvent)
  {
    return false;
  }
  
  public boolean onActivitySearchRequested()
  {
    return false;
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.a = new Handler(new aj(this));
  }
  
  public Object onRetainCustomNonConfigurationInstance()
  {
    return null;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.registration.ai
 * JD-Core Version:    0.7.0.1
 */