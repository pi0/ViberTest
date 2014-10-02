package com.viber.voip.calls.ui;

import android.app.AlertDialog.Builder;
import android.os.Handler;
import android.support.v4.app.FragmentActivity;
import android.widget.ListView;
import com.actionbarsherlock.app.SherlockFragmentActivity;
import com.actionbarsherlock.view.ActionMode;
import com.actionbarsherlock.view.ActionMode.Callback;
import com.actionbarsherlock.view.Menu;
import com.actionbarsherlock.view.MenuInflater;
import com.actionbarsherlock.view.MenuItem;
import com.viber.voip.HomeActivity;
import com.viber.voip.ViberApplication;
import com.viber.voip.calls.a.a;
import com.viber.voip.calls.entities.AggregatedCallEntity;
import com.viber.voip.dc;
import com.viber.voip.dk;
import com.viber.voip.messages.ui.bo;

public class PhoneFragmentModeManager
  extends bo<Integer>
{
  private n a;
  private a b;
  private PhoneFragment c;
  private MenuItem d;
  private MenuItem e;
  private boolean f = false;
  private AggregatedCallEntity g;
  
  public PhoneFragmentModeManager(n paramn, PhoneFragment paramPhoneFragment, a parama)
  {
    a(false);
    this.c = paramPhoneFragment;
    this.a = paramn;
    this.b = parama;
  }
  
  public PhoneFragmentModeManager(n paramn, PhoneFragment paramPhoneFragment, a parama, PhoneFragmentModeManager.PhoneFragmentModeManagerData paramPhoneFragmentModeManagerData)
  {
    this(paramn, paramPhoneFragment, parama);
    if (paramPhoneFragmentModeManagerData != null)
    {
      this.f = PhoneFragmentModeManager.PhoneFragmentModeManagerData.a(paramPhoneFragmentModeManagerData);
      a(PhoneFragmentModeManager.PhoneFragmentModeManagerData.b(paramPhoneFragmentModeManagerData));
      if (this.f) {
        dc.a(dk.a).postDelayed(new m(this), 400L);
      }
    }
  }
  
  private void b(boolean paramBoolean)
  {
    if ((this.c != null) && (this.c.getActivity() != null) && ((this.c.getActivity() instanceof HomeActivity))) {
      ((HomeActivity)this.c.getActivity()).b(paramBoolean);
    }
  }
  
  private void k()
  {
    if (this.a != null) {
      this.a.a(f());
    }
  }
  
  protected ActionMode a(ActionMode.Callback paramCallback)
  {
    if ((this.c == null) && (this.c.getSherlockActivity() != null)) {
      return null;
    }
    return this.c.getSherlockActivity().startActionMode(paramCallback);
  }
  
  public PhoneFragmentModeManager.PhoneFragmentModeManagerData a()
  {
    return new PhoneFragmentModeManager.PhoneFragmentModeManagerData(this, null);
  }
  
  public void a(int paramInt)
  {
    int i;
    if (!this.f) {
      if (ViberApplication.isTablet()) {
        i = 1;
      }
    }
    for (;;)
    {
      ListView localListView = this.c.getListView();
      int j = localListView.getChoiceMode();
      if (i != j)
      {
        if (j != 1) {
          break label67;
        }
        localListView.clearChoices();
        label45:
        localListView.setChoiceMode(i);
        if (i != 1) {
          break label80;
        }
        localListView.setItemChecked(paramInt, true);
      }
      label67:
      label80:
      while (i != 0)
      {
        return;
        i = 0;
        break;
        if (j != 2) {
          break label45;
        }
        localListView.clearChoices();
        break label45;
      }
      localListView.setAdapter(localListView.getAdapter());
      return;
      i = 2;
    }
  }
  
  public void a(AggregatedCallEntity paramAggregatedCallEntity)
  {
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(this.c.getActivity());
    localBuilder.setMessage(paramAggregatedCallEntity.toString().replace("-[", "\n").replace("[", "#\n").replace(",", "\n").replace("]", "").replace(" ", ""));
    localBuilder.setPositiveButton("Close", null);
    localBuilder.show();
  }
  
  public void a(boolean paramBoolean)
  {
    if (this.f != paramBoolean)
    {
      this.f = paramBoolean;
      a(this.c.getSelectedItemPosition());
      this.c.i();
    }
  }
  
  public boolean a(int paramInt, AggregatedCallEntity paramAggregatedCallEntity)
  {
    if (this.f)
    {
      if (c(Integer.valueOf(paramInt))) {
        b(Integer.valueOf(paramInt));
      }
    }
    else {
      return false;
    }
    a(Integer.valueOf(paramInt));
    this.g = paramAggregatedCallEntity;
    return true;
  }
  
  public void b()
  {
    if ((this.c != null) && (this.c.getActivity() != null)) {
      a(this.c.getActivity(), this.c.getActivity().getString(2131494389), g());
    }
  }
  
  public boolean b(int paramInt, AggregatedCallEntity paramAggregatedCallEntity)
  {
    if (!this.f)
    {
      d(Integer.valueOf(paramInt));
      a(true);
      this.g = paramAggregatedCallEntity;
      if (this.a != null) {
        this.a.e();
      }
      return true;
    }
    return false;
  }
  
  public boolean c()
  {
    return this.f;
  }
  
  protected void d()
  {
    MenuItem localMenuItem;
    if ((this.f) && (h() != null))
    {
      b();
      localMenuItem = this.d;
      if (g() <= 0) {
        break label68;
      }
    }
    label68:
    for (boolean bool = true;; bool = false)
    {
      localMenuItem.setVisible(bool);
      if (g() == 0) {
        j();
      }
      if (this.a != null) {
        this.a.e();
      }
      return;
    }
  }
  
  public void e()
  {
    if (this.f) {
      j();
    }
  }
  
  public boolean onActionItemClicked(ActionMode paramActionMode, MenuItem paramMenuItem)
  {
    int i = 0;
    boolean bool = true;
    switch (paramMenuItem.getItemId())
    {
    default: 
      bool = false;
    }
    do
    {
      do
      {
        do
        {
          return bool;
        } while ((this.c == null) || (this.c.getListView() == null));
        int j = this.c.getListView().getCount();
        if (g() == j)
        {
          i();
          this.c.getListView().clearChoices();
          this.c.w();
          return bool;
        }
        b(this.b.e());
        while (i < j)
        {
          this.c.getListView().setItemChecked(i, bool);
          i++;
        }
      } while (this.a == null);
      this.a.d();
      return bool;
      k();
      return bool;
    } while (this.g == null);
    a(this.g);
    return bool;
  }
  
  public boolean onCreateActionMode(ActionMode paramActionMode, Menu paramMenu)
  {
    a(true);
    b(false);
    a(paramActionMode);
    b();
    paramActionMode.getMenuInflater().inflate(2131755041, paramMenu);
    this.d = paramMenu.findItem(2131166290);
    MenuItem localMenuItem = this.d;
    if (g() > 0) {}
    for (boolean bool = true;; bool = false)
    {
      localMenuItem.setVisible(bool);
      this.e = paramMenu.findItem(2131166354);
      this.e.setVisible(false);
      b(false);
      return true;
    }
  }
  
  public void onDestroyActionMode(ActionMode paramActionMode)
  {
    a(false);
    b(true);
    i();
    if (this.a != null) {
      this.a.e();
    }
  }
  
  public boolean onPrepareActionMode(ActionMode paramActionMode, Menu paramMenu)
  {
    return false;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.calls.ui.PhoneFragmentModeManager
 * JD-Core Version:    0.7.0.1
 */