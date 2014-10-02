package com.viber.voip.viberout.promotion;

import com.viber.voip.ViberApplication;
import com.viber.voip.settings.l;

class d
  extends g
{
  private boolean c;
  
  d(b paramb)
  {
    super(paramb);
  }
  
  private void d()
  {
    this.a.a("IdleState: onOpenedFromIcon()");
    int i = b.a(this.a, "PREF_VO_APP_ENTRY_ICON_COUNT");
    if (b.a(this.a)) {
      this.c = b.b(this.a);
    }
    while (i < 3) {
      return;
    }
    this.c = b.b(this.a);
  }
  
  private void e()
  {
    if (!this.c)
    {
      this.a.a("IdleState: onContactsShown()");
      if (b.a(this.a)) {
        b.a(this.a, "com.viber.voip.action.vo_promotion_contacts", "vo_contacts_splash_shown");
      }
    }
    else
    {
      return;
    }
    if ((b.c(this.a, "PREF_VO_APP_ENTRY_ICON_COUNT") + b.c(this.a, "PREF_VO_APP_ENTRY_NOTIFICATION_COUNT") >= 3) && (!ViberApplication.preferences().b("vo_intro_splash_shown", false)))
    {
      this.a.a("contacts shown after 3rd visit, showing intro splash");
      b.b(this.a);
      return;
    }
    b.a(this.a, "com.viber.voip.action.vo_promotion_contacts", "vo_contacts_splash_shown");
  }
  
  private void f()
  {
    this.a.a("IdleState: onContactInfoShown()");
    if (!this.c) {
      b.a(this.a, "com.viber.voip.action.vo_promotion_contact_info", "vo_contact_info_splash_shown");
    }
  }
  
  private void g()
  {
    this.a.a("IdleState: onTrialEnded()");
    b.b(this.a, "com.viber.voip.action.vo_promotion_end_of_trial", "vo_trial_call_ended");
  }
  
  protected boolean a(a parama)
  {
    switch (c.a[parama.ordinal()])
    {
    case 3: 
    default: 
      return false;
    case 1: 
      d();
    }
    for (;;)
    {
      return true;
      b.b(this.a, this.a.c);
      continue;
      e();
      continue;
      f();
      continue;
      g();
      continue;
      this.c = false;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.viberout.promotion.d
 * JD-Core Version:    0.7.0.1
 */