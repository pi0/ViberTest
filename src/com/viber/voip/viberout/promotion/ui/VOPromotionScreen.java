package com.viber.voip.viberout.promotion.ui;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.TextView;
import com.viber.voip.a.as;
import com.viber.voip.a.at;
import com.viber.voip.a.c;
import com.viber.voip.bd;
import com.viber.voip.dl;
import com.viber.voip.viberout.e;
import com.viber.voip.viberout.ui.ViberOutDialogs;
import com.viber.voip.viberout.ui.ViberOutWebViewActivity;

public class VOPromotionScreen
  extends Activity
  implements View.OnClickListener
{
  private static final String a = VOPromotionScreen.class.getSimpleName();
  private static boolean b;
  private static boolean c;
  private static boolean d;
  private static boolean e;
  private boolean f;
  
  private void a(String paramString) {}
  
  private void a(String paramString1, String paramString2)
  {
    a("Opening page: " + paramString1);
    if (paramString1 != null) {
      ViberOutWebViewActivity.a(this, paramString1, paramString2);
    }
  }
  
  private void a(boolean paramBoolean)
  {
    if (this.f)
    {
      a("close(), already closed");
      return;
    }
    a("close()");
    this.f = true;
    String str = getIntent().getAction();
    com.viber.voip.viberout.promotion.a locala;
    if (dl.a(str, new String[] { "com.viber.voip.action.vo_promotion_free_call", "com.viber.voip.action.vo_promotion_no_free_call" }))
    {
      locala = com.viber.voip.viberout.promotion.a.h;
      d = true;
      if (locala != null) {
        e.c().a(locala);
      }
      if (paramBoolean)
      {
        if (!dl.a(str, new String[] { "com.viber.voip.action.vo_promotion_free_call", "com.viber.voip.action.vo_promotion_no_free_call" })) {
          break label181;
        }
        com.viber.voip.a.bc.a().a(com.viber.voip.a.a.k.d.d());
      }
    }
    for (;;)
    {
      finish();
      return;
      if ("com.viber.voip.action.vo_promotion_contacts".equals(str))
      {
        locala = com.viber.voip.viberout.promotion.a.i;
        e = true;
        break;
      }
      if ("com.viber.voip.action.vo_promotion_contact_info".equals(str))
      {
        locala = com.viber.voip.viberout.promotion.a.j;
        break;
      }
      boolean bool = "com.viber.voip.action.vo_promotion_end_of_trial".equals(str);
      locala = null;
      if (!bool) {
        break;
      }
      locala = com.viber.voip.viberout.promotion.a.k;
      break;
      label181:
      if (dl.a(str, new String[] { "com.viber.voip.action.vo_promotion_end_of_trial" })) {
        com.viber.voip.a.bc.a().a(com.viber.voip.a.a.k.d.g());
      }
    }
  }
  
  public static boolean a()
  {
    return b;
  }
  
  public static boolean b()
  {
    return c;
  }
  
  public static boolean c()
  {
    return d;
  }
  
  public static boolean d()
  {
    return e;
  }
  
  private void e()
  {
    String str = getIntent().getAction();
    a("reportPropoScreen, action:" + str);
    c localc;
    if ("com.viber.voip.action.vo_promotion_free_call".equals(str)) {
      localc = com.viber.voip.a.a.k.d.l();
    }
    for (;;)
    {
      if (localc != null) {
        com.viber.voip.a.bc.a().a(localc);
      }
      return;
      if ("com.viber.voip.action.vo_promotion_no_free_call".equals(str))
      {
        localc = com.viber.voip.a.a.k.d.m();
      }
      else if ("com.viber.voip.action.vo_promotion_contacts".equals(str))
      {
        localc = com.viber.voip.a.a.k.d.n();
      }
      else if ("com.viber.voip.action.vo_promotion_contact_info".equals(str))
      {
        localc = com.viber.voip.a.a.k.d.o();
      }
      else
      {
        boolean bool = "com.viber.voip.action.vo_promotion_end_of_trial".equals(str);
        localc = null;
        if (bool) {
          localc = com.viber.voip.a.a.k.d.p();
        }
      }
    }
  }
  
  private void f()
  {
    int i = 2130903376;
    Intent localIntent = getIntent();
    String str = localIntent.getAction();
    a("setupPromoScreen, action:" + str);
    Button localButton;
    if ("com.viber.voip.action.vo_promotion_free_call".equals(str))
    {
      g();
      b = true;
      setContentView(i);
      TextView localTextView1 = (TextView)findViewById(2131166262);
      if (localTextView1 != null)
      {
        localTextView1.setPaintFlags(0x8 | localTextView1.getPaintFlags());
        localTextView1.setOnClickListener(this);
      }
      TextView localTextView2 = (TextView)findViewById(2131165727);
      if (localTextView2 != null)
      {
        localTextView2.setPaintFlags(0x8 | localTextView2.getPaintFlags());
        localTextView2.setOnClickListener(this);
      }
      View localView1 = findViewById(2131166261);
      if (localView1 != null) {
        localView1.setOnClickListener(this);
      }
      View localView2 = findViewById(2131166264);
      if (localView2 != null) {
        localView2.setOnClickListener(this);
      }
      localButton = (Button)findViewById(2131166259);
      if (localButton != null)
      {
        if (!"com.viber.voip.action.vo_promotion_free_call".equals(localIntent.getAction())) {
          break label309;
        }
        localButton.setText(2131494288);
      }
    }
    for (;;)
    {
      localButton.setOnClickListener(this);
      View localView3 = findViewById(2131166263);
      if (localView3 != null) {
        localView3.setOnClickListener(this);
      }
      return;
      if ("com.viber.voip.action.vo_promotion_no_free_call".equals(str))
      {
        g();
        b = true;
        break;
      }
      if ("com.viber.voip.action.vo_promotion_contacts".equals(str))
      {
        i = 2130903378;
        g();
        c = true;
        break;
      }
      if ("com.viber.voip.action.vo_promotion_contact_info".equals(str))
      {
        i = 2130903377;
        break;
      }
      if ("com.viber.voip.action.vo_promotion_end_of_trial".equals(str))
      {
        i = 2130903379;
        break;
      }
      finish();
      i = 0;
      break;
      label309:
      if ("com.viber.voip.action.vo_promotion_no_free_call".equals(localIntent.getAction())) {
        localButton.setText(2131494289);
      }
    }
  }
  
  private void g()
  {
    e.c().d();
  }
  
  private void h()
  {
    startActivity(new Intent("com.viber.voip.action.CONTACTS"));
  }
  
  public void onBackPressed()
  {
    super.onBackPressed();
    a(true);
  }
  
  public void onClick(View paramView)
  {
    switch (paramView.getId())
    {
    default: 
      return;
    case 2131166261: 
      a(true);
      return;
    case 2131166263: 
      a(true);
      return;
    case 2131166262: 
      a(false);
      com.viber.voip.a.bc.a().a(com.viber.voip.a.a.k.d.e());
      return;
    case 2131166259: 
      a(false);
      com.viber.voip.a.bc.a().a(com.viber.voip.a.a.k.d.c());
      h();
      return;
    case 2131166264: 
      a(false);
      ViberOutDialogs.b();
      return;
    }
    a(false);
    a(com.viber.voip.billing.a.a(com.viber.voip.bc.b().L), getString(2131494253));
    com.viber.voip.a.bc.a().a(com.viber.voip.a.a.k.d.f());
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    f();
    e();
  }
  
  public void onDestroy()
  {
    super.onDestroy();
    a(false);
  }
  
  public void onNewIntent(Intent paramIntent)
  {
    setIntent(paramIntent);
    f();
    e();
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.viberout.promotion.ui.VOPromotionScreen
 * JD-Core Version:    0.7.0.1
 */