package com.viber.voip.settings.ui;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Intent;
import android.os.Bundle;
import android.preference.CheckBoxPreference;
import android.preference.EditTextPreference;
import android.preference.ListPreference;
import android.preference.Preference;
import android.preference.Preference.OnPreferenceClickListener;
import android.preference.PreferenceCategory;
import android.preference.PreferenceGroup;
import android.preference.PreferenceScreen;
import android.support.v4.app.FragmentActivity;
import com.viber.provider.contacts.d;
import com.viber.provider.contacts.g;
import com.viber.voip.SoundSettingsActivity;
import com.viber.voip.ViberApplication;
import com.viber.voip.registration.cp;
import com.viber.voip.registration.dj;
import com.viber.voip.viberout.e;

public class j
  extends bv
  implements Preference.OnPreferenceClickListener, com.viber.voip.settings.m
{
  private ListPreference b;
  private ListPreference c;
  
  public j()
  {
    super(2131034118);
  }
  
  private Preference a(PreferenceGroup paramPreferenceGroup, CharSequence paramCharSequence)
  {
    Preference localPreference = new Preference(getActivity());
    localPreference.setTitle(paramCharSequence);
    localPreference.setLayoutResource(2130903059);
    paramPreferenceGroup.addPreference(localPreference);
    return localPreference;
  }
  
  private PreferenceCategory a(PreferenceScreen paramPreferenceScreen, String paramString)
  {
    PreferenceCategory localPreferenceCategory = new PreferenceCategory(getActivity());
    localPreferenceCategory.setLayoutResource(2130903300);
    localPreferenceCategory.setTitle(paramString);
    paramPreferenceScreen.addPreference(localPreferenceCategory);
    return localPreferenceCategory;
  }
  
  private void a(PreferenceCategory paramPreferenceCategory)
  {
    CheckBoxPreference localCheckBoxPreference = b("Use WebRTC EC");
    localCheckBoxPreference.setChecked(ViberApplication.preferences().b("webrtc_ec_enabled", true));
    paramPreferenceCategory.addPreference(localCheckBoxPreference);
    localCheckBoxPreference.setOnPreferenceClickListener(new s(this));
  }
  
  private void a(PreferenceGroup paramPreferenceGroup)
  {
    a(paramPreferenceGroup, "Your number: " + ViberApplication.getInstance().getRegistrationValues().f());
  }
  
  private void a(PreferenceGroup paramPreferenceGroup, String paramString1, String paramString2, boolean paramBoolean)
  {
    CheckBoxPreference localCheckBoxPreference = b(paramString1);
    localCheckBoxPreference.setChecked(ViberApplication.preferences().b(paramString2, paramBoolean));
    paramPreferenceGroup.addPreference(localCheckBoxPreference);
    localCheckBoxPreference.setOnPreferenceClickListener(new aj(this, paramString2));
  }
  
  private void a(com.viber.voip.settings.l paraml)
  {
    ListPreference localListPreference1 = (ListPreference)a(com.viber.voip.settings.j.B());
    if (localListPreference1 != null) {
      localListPreference1.setSummary("Current server type : " + paraml.b(com.viber.voip.settings.j.B(), "int"));
    }
    ListPreference localListPreference2 = (ListPreference)a("use_as_secondary");
    StringBuilder localStringBuilder;
    if (localListPreference2 != null)
    {
      localStringBuilder = new StringBuilder().append("Current device type : ");
      if (!ViberApplication.isTablet()) {
        break label209;
      }
    }
    label209:
    for (String str = "secondary";; str = "primary")
    {
      localListPreference2.setSummary(paraml.b("use_as_secondary", str));
      ListPreference localListPreference3 = this.b;
      if (localListPreference3 != null)
      {
        ViberApplication.log(3, "Settings", "updateSummaries, showing VO installation type: " + localListPreference3.getValue());
        localListPreference3.setSummary(localListPreference3.getValue());
      }
      ListPreference localListPreference4 = this.c;
      if (localListPreference4 != null)
      {
        ViberApplication.log(3, "Settings", "updateSummaries, vibes state: " + localListPreference4.getValue());
        localListPreference4.setSummary(localListPreference4.getValue());
      }
      return;
    }
  }
  
  private CheckBoxPreference b(CharSequence paramCharSequence)
  {
    CheckBoxPreference localCheckBoxPreference = new CheckBoxPreference(getActivity());
    localCheckBoxPreference.setTitle(paramCharSequence);
    localCheckBoxPreference.setLayoutResource(2130903059);
    return localCheckBoxPreference;
  }
  
  private void b()
  {
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("viber", Boolean.valueOf(false));
    getActivity().getContentResolver().delete(g.a, null, null);
    getActivity().getContentResolver().update(d.a, localContentValues, null, null);
    com.viber.voip.contacts.c.f.a.a(ViberApplication.getInstance()).a(0, false);
    dj.a(ViberApplication.isTablet());
    ViberApplication.getInstance().setActivated(false);
    ViberApplication.getInstance().getRegistrationValues().h();
    ViberApplication.exit(getActivity(), false);
  }
  
  private void b(PreferenceGroup paramPreferenceGroup)
  {
    CharSequence[] arrayOfCharSequence1 = { "Prod", "Int", "Dev" };
    CharSequence[] arrayOfCharSequence2 = { "prod", "int", "dev" };
    ListPreference localListPreference = new ListPreference(getActivity());
    localListPreference.setKey(com.viber.voip.settings.j.B());
    localListPreference.setEntries(arrayOfCharSequence1);
    localListPreference.setEntryValues(arrayOfCharSequence2);
    localListPreference.setDialogTitle("Server");
    localListPreference.setTitle("Server config");
    localListPreference.setLayoutResource(2130903059);
    localListPreference.setDefaultValue("int");
    paramPreferenceGroup.addPreference(localListPreference);
    localListPreference.setOnPreferenceChangeListener(new as(this, localListPreference));
  }
  
  private void c(PreferenceGroup paramPreferenceGroup)
  {
    CharSequence[] arrayOfCharSequence1 = { "Primary", "Secondary" };
    CharSequence[] arrayOfCharSequence2 = { "primary", "secondary" };
    ListPreference localListPreference = new ListPreference(getActivity());
    localListPreference.setEnabled(ViberApplication.isTablet());
    localListPreference.setKey("use_as_secondary");
    localListPreference.setEntries(arrayOfCharSequence1);
    localListPreference.setEntryValues(arrayOfCharSequence2);
    localListPreference.setDialogTitle("Type");
    localListPreference.setTitle("Device type");
    localListPreference.setLayoutResource(2130903059);
    if (ViberApplication.isTablet()) {}
    for (String str = "secondary";; str = "primary")
    {
      localListPreference.setDefaultValue(str);
      paramPreferenceGroup.addPreference(localListPreference);
      localListPreference.setOnPreferenceChangeListener(new at(this, localListPreference));
      return;
    }
  }
  
  private void d(PreferenceGroup paramPreferenceGroup)
  {
    if (com.viber.voip.sms.s.h())
    {
      CheckBoxPreference localCheckBoxPreference = b("Remove native SMS notification");
      localCheckBoxPreference.setDefaultValue(Boolean.valueOf(true));
      localCheckBoxPreference.setKey("viber_hide_native_sms");
      localCheckBoxPreference.setSummary("Hide system notification when SMS received");
      paramPreferenceGroup.addPreference(localCheckBoxPreference);
    }
  }
  
  private void e(PreferenceGroup paramPreferenceGroup)
  {
    EditTextPreference localEditTextPreference = new EditTextPreference(getActivity());
    localEditTextPreference.setLayoutResource(2130903059);
    localEditTextPreference.setKey("pref_ptt_autoclean_dirsize_key");
    localEditTextPreference.setDefaultValue(String.valueOf(157286400L));
    localEditTextPreference.setTitle("Ptt memory limit");
    localEditTextPreference.setSummary("Set max PTT-dirrectory size. Default: 150MB");
    localEditTextPreference.setOnPreferenceChangeListener(new au(this));
    paramPreferenceGroup.addPreference(localEditTextPreference);
    Preference localPreference1 = new Preference(getActivity());
    localPreference1.setTitle("Clear Ptt Autoclean");
    localPreference1.setSummary("Clear Ptt autoclean flag value to display autoclean dialog");
    localPreference1.setLayoutResource(2130903059);
    localPreference1.setOnPreferenceClickListener(new l(this));
    paramPreferenceGroup.addPreference(localPreference1);
    Preference localPreference2 = new Preference(getActivity());
    localPreference2.setTitle("Clear RakutenID");
    localPreference2.setSummary("This will clear rakuten id and reset integration state (can't be undone)");
    localPreference2.setLayoutResource(2130903059);
    localPreference2.setOnPreferenceClickListener(new m(this));
    paramPreferenceGroup.addPreference(localPreference2);
  }
  
  private void f(PreferenceGroup paramPreferenceGroup)
  {
    CheckBoxPreference localCheckBoxPreference1 = b("Proximity turn off screen");
    localCheckBoxPreference1.setDefaultValue(Boolean.valueOf(true));
    localCheckBoxPreference1.setKey("proximity_turn_off_screen");
    paramPreferenceGroup.addPreference(localCheckBoxPreference1);
    localCheckBoxPreference1.setOnPreferenceClickListener(new n(this));
    CheckBoxPreference localCheckBoxPreference2 = b(" Disable proximity white list");
    localCheckBoxPreference2.setDefaultValue(Boolean.valueOf(false));
    localCheckBoxPreference2.setKey("proximity_disable_white_list");
    paramPreferenceGroup.addPreference(localCheckBoxPreference2);
    localCheckBoxPreference2.setOnPreferenceClickListener(new o(this));
  }
  
  private void g(PreferenceGroup paramPreferenceGroup)
  {
    a(paramPreferenceGroup, "Show profile screen").setOnPreferenceClickListener(new p(this));
  }
  
  private void h(PreferenceGroup paramPreferenceGroup)
  {
    if (com.viber.voip.sms.s.h()) {
      a(paramPreferenceGroup, "Show Grow SMS").setOnPreferenceClickListener(new q(this));
    }
  }
  
  private void i(PreferenceGroup paramPreferenceGroup)
  {
    a(paramPreferenceGroup, "Show Country List").setOnPreferenceClickListener(new r(this));
  }
  
  private void j(PreferenceGroup paramPreferenceGroup)
  {
    Preference localPreference = a(paramPreferenceGroup, "Backup Messages");
    localPreference.setSummary("Copy into viber/.db/viber_messages.sqlite");
    localPreference.setOnPreferenceClickListener(new t(this));
  }
  
  private void k(PreferenceGroup paramPreferenceGroup)
  {
    Preference localPreference = a(paramPreferenceGroup, "Backup Contacts");
    localPreference.setSummary("Copy into viber/.db/viber_data.sqlite");
    localPreference.setOnPreferenceClickListener(new u(this));
  }
  
  private void l(PreferenceGroup paramPreferenceGroup)
  {
    Preference localPreference = a(paramPreferenceGroup, "Restore Messages");
    localPreference.setSummary("Restore from viber/.db/viber_messages.sqlite");
    localPreference.setOnPreferenceClickListener(new w(this));
  }
  
  private void m(PreferenceGroup paramPreferenceGroup)
  {
    Preference localPreference = a(paramPreferenceGroup, "Restore Contacts");
    localPreference.setSummary("Restore from viber/.db/viber_data.sqlite");
    localPreference.setOnPreferenceClickListener(new x(this));
  }
  
  private void n(PreferenceGroup paramPreferenceGroup)
  {
    CheckBoxPreference localCheckBoxPreference = b("ViberOut");
    localCheckBoxPreference.setChecked(e.c().b());
    paramPreferenceGroup.addPreference(localCheckBoxPreference);
    localCheckBoxPreference.setOnPreferenceClickListener(new y(this));
  }
  
  private void o(PreferenceGroup paramPreferenceGroup)
  {
    CheckBoxPreference localCheckBoxPreference = b("ViberIn");
    localCheckBoxPreference.setChecked(ViberApplication.preferences().b("viber_in_enabled", true));
    paramPreferenceGroup.addPreference(localCheckBoxPreference);
    localCheckBoxPreference.setOnPreferenceClickListener(new z(this));
  }
  
  private void p(PreferenceGroup paramPreferenceGroup)
  {
    a(paramPreferenceGroup, "show ACTION_PROMO_SCREEN_FREE_CALL").setOnPreferenceClickListener(new aa(this));
    a(paramPreferenceGroup, "show ACTION_PROMO_SCREEN_NO_FREE_CALL").setOnPreferenceClickListener(new ab(this));
    a(paramPreferenceGroup, "show ACTION_PROMO_SCREEN_CONTACTS").setOnPreferenceClickListener(new ac(this));
    a(paramPreferenceGroup, "show ACTION_PROMO_SCREEN_CONTACT_INFO").setOnPreferenceClickListener(new ad(this));
    a(paramPreferenceGroup, "show ACTION_PROMO_SCREEN_END_OF_TRIAL").setOnPreferenceClickListener(new ae(this));
    a(paramPreferenceGroup, "show dialog 381").setOnPreferenceClickListener(new af(this));
  }
  
  private void q(PreferenceGroup paramPreferenceGroup)
  {
    int i = 1;
    ListPreference localListPreference = new ListPreference(getActivity());
    this.b = localListPreference;
    localListPreference.setTitle("VO exposure type");
    String[] arrayOfString = new String[3];
    arrayOfString[0] = "Automatic";
    arrayOfString[i] = "Fresh Install";
    arrayOfString[2] = "Upgrade";
    localListPreference.setEntries(arrayOfString);
    localListPreference.setEntryValues(arrayOfString);
    localListPreference.setLayoutResource(2130903059);
    boolean bool = ViberApplication.preferences().b("PREF_VO_MANUAL_EXPOSURE_ENABLED", false);
    int j = ViberApplication.preferences().b("vo_exposure", i);
    if (bool) {
      if (j != i) {}
    }
    for (;;)
    {
      ViberApplication.log(3, "Settings", "read VO installation type: " + arrayOfString[i]);
      localListPreference.setValue(arrayOfString[i]);
      localListPreference.setOnPreferenceChangeListener(new ah(this, arrayOfString));
      paramPreferenceGroup.addPreference(localListPreference);
      return;
      i = 2;
      continue;
      i = 0;
    }
  }
  
  private void r(PreferenceGroup paramPreferenceGroup)
  {
    CheckBoxPreference localCheckBoxPreference = b("Grow ViberOut DEBUG");
    localCheckBoxPreference.setChecked(e.c().f().a());
    paramPreferenceGroup.addPreference(localCheckBoxPreference);
    localCheckBoxPreference.setOnPreferenceClickListener(new ai(this));
  }
  
  private void s(PreferenceGroup paramPreferenceGroup)
  {
    a(paramPreferenceGroup, "Consume prods on del pkgs", "PREF_MARKET_CONSUME_ON_DELETE_STICKER_PACKAGES", false);
    a(paramPreferenceGroup, "Enable URL change", "PREF_MARKET_ENABLE_URL_CHANGE", false);
  }
  
  private void t(PreferenceGroup paramPreferenceGroup)
  {
    CharSequence[] arrayOfCharSequence = { "UA-18303830-25", "UA-18303830-13", "UA-18303830-15", "UA-43943434-1", "UA-18303830-12" };
    ListPreference localListPreference = new ListPreference(getActivity());
    localListPreference.setKey(com.viber.voip.settings.j.ag());
    localListPreference.setEntries(arrayOfCharSequence);
    localListPreference.setEntryValues(arrayOfCharSequence);
    localListPreference.setDialogTitle("Analytics");
    localListPreference.setTitle("Analytics config");
    localListPreference.setDefaultValue("UA-18303830-12");
    paramPreferenceGroup.addPreference(localListPreference);
  }
  
  private void u(PreferenceGroup paramPreferenceGroup)
  {
    CheckBoxPreference localCheckBoxPreference = b("Zoobe");
    localCheckBoxPreference.setChecked(com.viber.voip.k.a.a().b());
    paramPreferenceGroup.addPreference(localCheckBoxPreference);
    localCheckBoxPreference.setOnPreferenceClickListener(new ak(this));
  }
  
  private void v(PreferenceGroup paramPreferenceGroup)
  {
    ListPreference localListPreference = new ListPreference(getActivity());
    this.c = localListPreference;
    localListPreference.setTitle("Vibes state");
    String[] arrayOfString = { "Disabled", "No create", "Full" };
    localListPreference.setEntries(arrayOfString);
    localListPreference.setEntryValues(arrayOfString);
    localListPreference.setLayoutResource(2130903059);
    localListPreference.setValue(arrayOfString[com.viber.voip.j.a.a().c()]);
    localListPreference.setOnPreferenceChangeListener(new al(this, arrayOfString, localListPreference));
    paramPreferenceGroup.addPreference(localListPreference);
  }
  
  private void w(PreferenceGroup paramPreferenceGroup)
  {
    a(paramPreferenceGroup, "Show gallery_empty_album_message").setOnPreferenceClickListener(new am(this));
    a(paramPreferenceGroup, "Show dialog_339_oops_create_group_body").setOnPreferenceClickListener(new an(this));
    a(paramPreferenceGroup, "Show get_viber_desktop").setOnPreferenceClickListener(new ao(this));
  }
  
  public void a() {}
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    PreferenceCategory localPreferenceCategory1 = a(this.e, "Settings (Debug option)");
    a(localPreferenceCategory1);
    b(localPreferenceCategory1);
    c(localPreferenceCategory1);
    d(localPreferenceCategory1);
    e(localPreferenceCategory1);
    f(localPreferenceCategory1);
    Preference localPreference1 = new Preference(getActivity());
    localPreference1.setTitle("Clear Gallery Coach");
    localPreference1.setSummary("Clear Gallery Coach shown flag");
    localPreference1.setLayoutResource(2130903059);
    localPreference1.setOnPreferenceClickListener(new k(this));
    localPreferenceCategory1.addPreference(localPreference1);
    Preference localPreference2 = new Preference(getActivity());
    localPreference2.setTitle("Clear Last Online");
    localPreference2.setSummary("Clear Last Online timer");
    localPreference2.setLayoutResource(2130903059);
    localPreference2.setOnPreferenceClickListener(new v(this));
    localPreferenceCategory1.addPreference(localPreference2);
    Preference localPreference3 = new Preference(getActivity());
    localPreference3.setTitle("New Stickers package");
    localPreference3.setSummary("Increment new stickers pakages count");
    localPreference3.setLayoutResource(2130903059);
    localPreference3.setOnPreferenceClickListener(new ag(this));
    localPreferenceCategory1.addPreference(localPreference3);
    PreferenceCategory localPreferenceCategory2 = a(this.e, "Start performance (Debug option)");
    CheckBoxPreference localCheckBoxPreference1 = b("Async loading of native library");
    localCheckBoxPreference1.setKey("async_native_lib_load");
    localCheckBoxPreference1.setDefaultValue(Boolean.valueOf(true));
    localCheckBoxPreference1.setSummary("Will be applied after application restart");
    localPreferenceCategory2.addPreference(localCheckBoxPreference1);
    CheckBoxPreference localCheckBoxPreference2 = b("Database performance");
    localCheckBoxPreference2.setDefaultValue(Boolean.valueOf(false));
    localPreferenceCategory2.addPreference(localCheckBoxPreference2);
    localCheckBoxPreference2.setSummary("Delay for every query 2sec");
    PreferenceCategory localPreferenceCategory3 = a(this.e, "Open Screen (Debug option)");
    g(localPreferenceCategory3);
    h(localPreferenceCategory3);
    i(localPreferenceCategory3);
    PreferenceCategory localPreferenceCategory4 = a(this.e, "Sound (Debug option)");
    a(localPreferenceCategory4, "Sound Settings").setIntent(new Intent(getActivity(), SoundSettingsActivity.class));
    a(localPreferenceCategory4);
    PreferenceCategory localPreferenceCategory5 = a(this.e, "Multi-device (Debug option)");
    CheckBoxPreference localCheckBoxPreference3 = b("Show deleted conversations");
    localCheckBoxPreference3.setKey(com.viber.voip.settings.j.D());
    localCheckBoxPreference3.setSummary("Will be applied after reopen Home screen");
    localPreferenceCategory5.addPreference(localCheckBoxPreference3);
    CheckBoxPreference localCheckBoxPreference4 = b("Show deleted messages");
    localCheckBoxPreference4.setKey(com.viber.voip.settings.j.C());
    localCheckBoxPreference4.setSummary("Will be applied after reopen Conversation screen");
    localPreferenceCategory5.addPreference(localCheckBoxPreference4);
    PreferenceCategory localPreferenceCategory6 = a(this.e, "Database (Debug option)");
    j(localPreferenceCategory6);
    l(localPreferenceCategory6);
    k(localPreferenceCategory6);
    m(localPreferenceCategory6);
    PreferenceCategory localPreferenceCategory7 = a(this.e, "ViberOut & ViberIn (Debug option)");
    n(localPreferenceCategory7);
    o(localPreferenceCategory7);
    p(localPreferenceCategory7);
    PreferenceCategory localPreferenceCategory8 = a(this.e, "ViberOut Trial (Debug option)");
    q(localPreferenceCategory8);
    r(localPreferenceCategory8);
    s(a(this.e, "Market (Debug options)"));
    t(a(this.e, "Analytics (Debug option)"));
    u(a(this.e, "Zoobe (Debug option)"));
    v(a(this.e, "Vibes (Debug option)"));
    PreferenceCategory localPreferenceCategory9 = a(this.e, "Sticker layout (Debug option)");
    CheckBoxPreference localCheckBoxPreference5 = b("Center sticker menu icon");
    localCheckBoxPreference5.setDefaultValue(Boolean.valueOf(com.viber.voip.settings.j.ai()));
    localCheckBoxPreference5.setKey(com.viber.voip.settings.j.ah());
    localCheckBoxPreference5.setSummary("Will center sticker menu item, when it is selected");
    localPreferenceCategory9.addPreference(localCheckBoxPreference5);
    PreferenceCategory localPreferenceCategory10 = a(this.e, "Conversation (Debug option)");
    a(localPreferenceCategory10, "Show Sticker Menu icon animation").setOnPreferenceClickListener(new ap(this));
    a(localPreferenceCategory10, "Generate Rakuten System Message").setOnPreferenceClickListener(new aq(this));
    PreferenceCategory localPreferenceCategory11 = a(this.e, "Developer tool (Debug option)");
    CheckBoxPreference localCheckBoxPreference6 = b("Enable Strict Mode");
    localCheckBoxPreference6.setKey(com.viber.voip.settings.j.aA());
    localCheckBoxPreference6.setOnPreferenceClickListener(new ar(this));
    localPreferenceCategory11.addPreference(localCheckBoxPreference6);
    PreferenceCategory localPreferenceCategory12 = a(this.e, "Goolge Maps Version (Debug option)");
    CheckBoxPreference localCheckBoxPreference7 = b("Use v1 (old)");
    localCheckBoxPreference7.setDefaultValue(Boolean.valueOf(com.viber.voip.settings.j.ak()));
    localCheckBoxPreference7.setKey(com.viber.voip.settings.j.aj());
    localCheckBoxPreference7.setSummary("Will use google maps v1 (deprecated from google)");
    localPreferenceCategory12.addPreference(localCheckBoxPreference7);
    w(a(this.e, "Localization Tests (Debug option)"));
  }
  
  public boolean onPreferenceClick(Preference paramPreference)
  {
    super.onPreferenceClick(paramPreference);
    return true;
  }
  
  public void onResume()
  {
    super.onResume();
    a(this.f);
  }
  
  public void onSharedPreferenceChanged(com.viber.voip.settings.l paraml, String paramString)
  {
    super.onSharedPreferenceChanged(paraml, paramString);
    a(this.f);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.settings.ui.j
 * JD-Core Version:    0.7.0.1
 */