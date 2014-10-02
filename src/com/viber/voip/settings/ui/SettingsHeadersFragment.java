package com.viber.voip.settings.ui;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.net.Uri;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListView;
import com.actionbarsherlock.app.SherlockListFragment;
import com.viber.voip.ViberApplication;
import com.viber.voip.registration.ActivationController;
import com.viber.voip.user.UserData;
import com.viber.voip.user.YouFragment.PreferenceItem;
import java.util.ArrayList;
import java.util.List;

public class SettingsHeadersFragment
  extends SherlockListFragment
{
  private List<YouFragment.PreferenceItem> a = new ArrayList(ca.a);
  private bz b;
  private by c;
  private bv d = null;
  private int e = -1;
  
  private void c()
  {
    ViberApplication.log("Settings.restoreDefaultPref");
    ViberApplication.getInstance().getFacebookManager().a();
    ViberApplication.getInstance().getTwitterManager().a();
    com.viber.voip.settings.l locall = ViberApplication.preferences();
    locall.a(com.viber.voip.settings.j.G(), com.viber.voip.settings.j.H().booleanValue());
    locall.a(com.viber.voip.settings.j.ao(), com.viber.voip.settings.j.ap());
    String str1 = com.google.android.gcm.a.d(ViberApplication.getInstance());
    ViberApplication localViberApplication = ViberApplication.getInstance();
    ActivationController localActivationController = localViberApplication.getActivationController();
    String str2 = localActivationController.getCountryCode();
    String str3 = localActivationController.getAlphaCountryCode();
    String str4 = localActivationController.getRegNumber();
    String str5 = localActivationController.getRegNumberCanonized();
    int i = locall.b("ViberAccountVersion", 1);
    int j = (short)localViberApplication.getAddressBookVersion();
    String str6 = localViberApplication.getActivationController().getDeviceKey();
    boolean bool = com.viber.voip.sms.s.b();
    String str7 = UserData.getName();
    Uri localUri = UserData.getImage();
    String str8 = locall.b(com.viber.voip.settings.j.B(), "int");
    com.google.android.gcm.a.a(ViberApplication.getInstance(), str1);
    localActivationController.storeRegValues(str2, str3, str4);
    localActivationController.storeRegNumberCanonized(str5);
    locall.a("pref_clear_prefs", false);
    locall.a("pref_started_before", true);
    locall.a("ViberAccountVersion", i);
    locall.a(com.viber.voip.settings.j.B(), str8);
    localViberApplication.setAddressBookVersion(j);
    localViberApplication.getActivationController().setDeviceKey(str6);
    ViberApplication.preferences().a("NeverShowAgain", false);
    ViberApplication.preferences().a("NeverShowAgainSms", false);
    com.viber.voip.sms.s.a(bool);
    UserData.setUserData(str7, localUri);
  }
  
  private void d()
  {
    com.viber.voip.settings.l locall = ViberApplication.preferences();
    ax.a(locall);
    bb.a(locall);
    bj.a(getActivity(), locall);
    bf.a(locall);
    a.a(locall);
    av.b();
    if (this.d != null) {
      this.d.a();
    }
  }
  
  public Fragment a()
  {
    if (this.e == 2131493534) {
      this.d = new bj();
    }
    for (;;)
    {
      return this.d;
      if (this.e == 2131493535) {
        this.d = new bf();
      } else if (this.e == 2131493536) {
        this.d = new a();
      } else if (this.e == 2131493537) {
        this.d = new bb();
      } else if (this.e == 2131493538) {
        this.d = new av();
      } else if (this.e == 2131493539) {
        this.d = new ax();
      } else if (this.e == 2131493540) {
        this.d = new j();
      }
    }
  }
  
  public void a(int paramInt)
  {
    this.e = paramInt;
  }
  
  public void b()
  {
    if (getView() == null) {}
    for (;;)
    {
      return;
      if (this.e != -1) {
        for (int i = 0; i < this.a.size(); i++) {
          if (((YouFragment.PreferenceItem)this.a.get(i)).id == this.e) {
            getListView().setItemChecked(i, true);
          }
        }
      }
    }
  }
  
  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    b();
  }
  
  public void onAttach(Activity paramActivity)
  {
    super.onAttach(paramActivity);
    if (!(paramActivity instanceof by)) {
      throw new ClassCastException("Activity must implement fragment's callbacks.");
    }
    this.c = ((by)paramActivity);
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setRetainInstance(true);
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    View localView = paramLayoutInflater.inflate(2130903049, null);
    this.b = new bz(getActivity(), this.a, 2130903328);
    setListAdapter(this.b);
    ListView localListView = (ListView)localView.findViewById(16908298);
    if (ViberApplication.isTablet()) {}
    for (int i = 1;; i = 0)
    {
      localListView.setChoiceMode(i);
      return localView;
    }
  }
  
  public void onDestroyView()
  {
    this.e = -1;
    super.onDestroyView();
  }
  
  public void onListItemClick(ListView paramListView, View paramView, int paramInt, long paramLong)
  {
    super.onListItemClick(paramListView, paramView, paramInt, paramLong);
    this.e = ((int)paramLong);
    if (this.e == 2131493518)
    {
      new AlertDialog.Builder(getActivity()).setMessage(2131494129).setNegativeButton(2131493558, new bx(this, paramListView)).setPositiveButton(2131493550, new bw(this, paramListView)).create().show();
      return;
    }
    this.c.b(paramInt, this.e);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.settings.ui.SettingsHeadersFragment
 * JD-Core Version:    0.7.0.1
 */