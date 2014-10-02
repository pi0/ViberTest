package com.viber.voip.messages.ui;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.res.Resources;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.Button;
import android.widget.ListView;
import android.widget.TextView;
import com.actionbarsherlock.app.SherlockFragmentActivity;
import com.actionbarsherlock.view.ActionMode;
import com.actionbarsherlock.view.ActionMode.Callback;
import com.actionbarsherlock.view.Menu;
import com.actionbarsherlock.view.MenuInflater;
import com.actionbarsherlock.view.MenuItem;
import com.actionbarsherlock.widget.SearchView;
import com.viber.voip.HomeActivity;
import com.viber.voip.ViberApplication;
import com.viber.voip.a.ad;
import com.viber.voip.a.bc;
import com.viber.voip.a.u;
import com.viber.voip.dc;
import com.viber.voip.messages.ui.forward.ForwardActivity;
import com.viber.voip.ui.k;
import com.viber.voip.util.at;
import com.viber.voip.util.gl;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;

public class MessagesFragmentModeManager
  extends br<Long, dl>
{
  protected dk b;
  protected dn c;
  protected AlertDialog d;
  private k e;
  private int f = 0;
  private String g = "";
  private MenuItem h;
  private MenuItem i;
  private MenuItem j;
  private MenuItem k;
  private MenuItem l;
  private MenuItem m;
  private boolean n;
  
  public MessagesFragmentModeManager(dk paramdk, dn paramdn)
  {
    this.b = paramdk;
    this.c = paramdn;
    if (this.b.p() != null) {
      this.e = new k(this.b.p(), new dh(this));
    }
  }
  
  public MessagesFragmentModeManager(dk paramdk, dn paramdn, MessagesFragmentModeManager.MessagesFragmentModeManagerData paramMessagesFragmentModeManagerData, do paramdo)
  {
    this(paramdk, paramdn);
    this.n = gl.a(paramdk.p());
    Handler localHandler;
    dg localdg;
    if (paramMessagesFragmentModeManagerData != null)
    {
      this.f = paramMessagesFragmentModeManagerData.a;
      this.g = paramMessagesFragmentModeManagerData.b;
      a(paramMessagesFragmentModeManagerData.c);
      if (this.f == 1)
      {
        localHandler = dc.a(com.viber.voip.dk.a);
        localdg = new dg(this, paramdo, paramMessagesFragmentModeManagerData);
        if (!this.n) {
          break label99;
        }
      }
    }
    label99:
    for (long l1 = 1400L;; l1 = 1000L)
    {
      localHandler.postDelayed(localdg, l1);
      return;
    }
  }
  
  private void a(Activity paramActivity, boolean paramBoolean)
  {
    View localView = LayoutInflater.from(paramActivity).inflate(2130903183, null);
    this.d = new AlertDialog.Builder(paramActivity).setView(localView).create();
    di localdi = new di(this);
    Button localButton1 = (Button)localView.findViewById(2131165756);
    localButton1.setOnClickListener(localdi);
    localButton1.setText(2131493558);
    Button localButton2 = (Button)localView.findViewById(2131165757);
    localButton2.setOnClickListener(localdi);
    localButton2.setText(2131493673);
    Button localButton3 = (Button)localView.findViewById(2131165758);
    localButton3.setOnClickListener(localdi);
    localButton3.setText(2131494046);
    TextView localTextView = (TextView)localView.findViewById(2131165474);
    if (paramBoolean) {}
    for (String str = paramActivity.getString(2131493839);; str = paramActivity.getString(2131493840))
    {
      localTextView.setText(str + " " + paramActivity.getString(2131493841));
      this.d.setTitle(2131493838);
      this.d.show();
      return;
    }
  }
  
  private void a(boolean paramBoolean1, boolean paramBoolean2)
  {
    com.viber.voip.a.a.z.getClass();
    String str;
    if (paramBoolean1)
    {
      com.viber.voip.a.a.z.getClass();
      str = "Mute";
    }
    for (;;)
    {
      bc.a().a(com.viber.voip.a.a.z.a("343", str));
      return;
      if (paramBoolean2)
      {
        com.viber.voip.a.a.z.getClass();
        str = "Cancel";
      }
      else
      {
        com.viber.voip.a.a.z.getClass();
        str = "Leave and Delete";
      }
    }
  }
  
  private void b(Activity paramActivity, boolean paramBoolean)
  {
    bc localbc = bc.a();
    u localu = com.viber.voip.a.a.z;
    com.viber.voip.a.a.z.getClass();
    localbc.a(localu.b("343"));
    if (paramBoolean) {}
    for (int i1 = 2131493839;; i1 = 2131493840)
    {
      this.d = ((AlertDialog)at.a(paramActivity, 2131493838, paramActivity.getString(i1), new dj(this), null, 2131494046, false));
      return;
    }
  }
  
  private void d(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      a(2);
      return;
    }
    a(0);
  }
  
  private void e(boolean paramBoolean)
  {
    if (this.b != null) {}
    for (Activity localActivity = this.b.p();; localActivity = null)
    {
      if ((localActivity != null) && ((localActivity instanceof HomeActivity))) {
        ((HomeActivity)localActivity).b(paramBoolean);
      }
      return;
    }
  }
  
  private boolean z()
  {
    return (this.d != null) && (this.d.isShowing());
  }
  
  protected ActionMode a(ActionMode.Callback paramCallback)
  {
    if ((this.b == null) || (this.b.getSherlockActivity() == null)) {
      return null;
    }
    return this.b.getSherlockActivity().startActionMode(paramCallback);
  }
  
  public dl a(com.viber.voip.messages.adapters.a.a parama)
  {
    return new dl(parama.e(), parama.B(), parama.C());
  }
  
  public void a(int paramInt)
  {
    if (this.f != paramInt)
    {
      this.f = paramInt;
      b(this.b.getSelectedItemPosition());
      p();
      if (this.c != null) {
        this.c.b(this.f);
      }
    }
  }
  
  protected void a(Activity paramActivity, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3, boolean paramBoolean4)
  {
    if ((!paramBoolean4) && ((paramBoolean2) || (paramBoolean1))) {
      if (paramBoolean3) {
        b(paramActivity, paramBoolean2);
      }
    }
    do
    {
      return;
      a(paramActivity, paramBoolean2);
      return;
      bc localbc = bc.a();
      u localu = com.viber.voip.a.a.z;
      com.viber.voip.a.a.z.getClass();
      localbc.a(localu.b("330"));
    } while (this.c == null);
    this.c.b(a());
  }
  
  public void a(Menu paramMenu, boolean paramBoolean)
  {
    if ((this.b != null) && (this.b.p() != null))
    {
      this.j = paramMenu.findItem(2131166267);
      this.k = paramMenu.findItem(2131166293);
      this.l = paramMenu.findItem(2131166294);
      this.m = paramMenu.findItem(2131166269);
      if (this.j != null) {}
    }
    else
    {
      return;
    }
    Resources localResources = ViberApplication.getInstance().getResources();
    SearchView localSearchView = (SearchView)this.j.getActionView();
    localSearchView.setQueryHint(localResources.getString(2131493623));
    localSearchView.setQueryHintColor(localResources.getColor(2131296415));
    ViberApplication localViberApplication = ViberApplication.getInstance();
    label162:
    k localk;
    MenuItem localMenuItem;
    if ((this.m != null) && (!gl.c(localViberApplication)))
    {
      if (gl.a(localViberApplication)) {
        this.m.setShowAsAction(0);
      }
    }
    else
    {
      if (!paramBoolean) {
        break label235;
      }
      localk = this.e;
      localMenuItem = this.j;
      if (this.f != 2) {
        break label237;
      }
    }
    label235:
    label237:
    for (boolean bool = true;; bool = false)
    {
      localk.a(localMenuItem, bool, this.g);
      if (this.f != 2) {
        break;
      }
      c(true);
      return;
      if (!gl.e(localViberApplication)) {
        break label162;
      }
      this.m.setShowAsAction(1);
      break label162;
      break;
    }
  }
  
  public void a(boolean paramBoolean)
  {
    if ((this.b != null) && (this.b.p() != null))
    {
      if (!i()) {
        break label48;
      }
      ((ForwardActivity)this.b.p()).a(paramBoolean);
      d(paramBoolean);
    }
    label48:
    while (!h()) {
      return;
    }
    c(paramBoolean);
    d(paramBoolean);
  }
  
  public boolean a(long paramLong, dl paramdl)
  {
    if (this.f == 0)
    {
      b(Long.valueOf(paramLong), paramdl);
      if (this.c != null) {
        this.c.d();
      }
      bc.a().a(com.viber.voip.a.a.q.c());
      return true;
    }
    return false;
  }
  
  public void b(int paramInt)
  {
    int i1;
    if ((this.f == 0) || (this.f == 2)) {
      if ((ViberApplication.isTablet()) || (this.b.l())) {
        i1 = 1;
      }
    }
    for (;;)
    {
      ListView localListView = this.b.getListView();
      int i2 = localListView.getChoiceMode();
      if (i1 != i2)
      {
        if (i2 != 1) {
          break label89;
        }
        localListView.clearChoices();
        label67:
        localListView.setChoiceMode(i1);
        if (i1 != 1) {
          break label102;
        }
        localListView.setItemChecked(paramInt, true);
      }
      label89:
      label102:
      while (i1 != 0)
      {
        return;
        i1 = 0;
        break;
        if (i2 != 2) {
          break label67;
        }
        localListView.clearChoices();
        break label67;
      }
      localListView.setAdapter(localListView.getAdapter());
      return;
      i1 = 2;
    }
  }
  
  public void b(boolean paramBoolean)
  {
    if (this.f == 0) {
      if (paramBoolean) {
        this.e.d();
      }
    }
    while ((this.f != 2) || (!paramBoolean)) {
      return;
    }
    this.e.f();
  }
  
  public boolean b(long paramLong, dl paramdl)
  {
    if (this.f == 1)
    {
      if (b(Long.valueOf(paramLong))) {
        a(Long.valueOf(paramLong));
      }
    }
    else {
      return false;
    }
    a(Long.valueOf(paramLong), paramdl);
    return true;
  }
  
  public void c(int paramInt)
  {
    MenuItem localMenuItem;
    if (this.m != null)
    {
      localMenuItem = this.m;
      if (paramInt <= 0) {
        break label29;
      }
    }
    label29:
    for (int i1 = 2130838267;; i1 = 2130838266)
    {
      localMenuItem.setIcon(i1);
      return;
    }
  }
  
  public void c(boolean paramBoolean)
  {
    Activity localActivity = this.b.p();
    if ((localActivity instanceof HomeActivity)) {
      ((HomeActivity)localActivity).a(paramBoolean);
    }
    p();
  }
  
  protected void f()
  {
    int i1 = 1;
    if (i1 == this.f)
    {
      o();
      if (this.h != null)
      {
        localMenuItem = this.h;
        if (b() > 0) {
          localMenuItem.setVisible(i1);
        }
      }
      else
      {
        if (b() == 0) {
          e();
        }
        if (this.c != null) {
          this.c.d();
        }
      }
    }
    while (this.f != 0) {
      for (;;)
      {
        MenuItem localMenuItem;
        return;
        int i2 = 0;
      }
    }
    this.e.a(m());
  }
  
  public MessagesFragmentModeManager.MessagesFragmentModeManagerData g()
  {
    return new MessagesFragmentModeManager.MessagesFragmentModeManagerData(this);
  }
  
  public boolean h()
  {
    return this.b.p() instanceof HomeActivity;
  }
  
  public boolean i()
  {
    return this.b.p() instanceof ForwardActivity;
  }
  
  public int j()
  {
    return this.f;
  }
  
  public boolean k()
  {
    return this.f == 2;
  }
  
  public boolean l()
  {
    return this.f == 1;
  }
  
  public boolean m()
  {
    return (this.b != null) && (this.b.j());
  }
  
  public void n()
  {
    if (l()) {
      e();
    }
  }
  
  public void o()
  {
    if (this.b != null) {}
    for (SherlockFragmentActivity localSherlockFragmentActivity = this.b.getSherlockActivity();; localSherlockFragmentActivity = null)
    {
      if (localSherlockFragmentActivity != null) {
        a(localSherlockFragmentActivity, localSherlockFragmentActivity.getString(2131494218), b());
      }
      return;
    }
  }
  
  public boolean onActionItemClicked(ActionMode paramActionMode, MenuItem paramMenuItem)
  {
    int i1 = 0;
    boolean bool = true;
    switch (paramMenuItem.getItemId())
    {
    default: 
      bool = false;
    case 2131166291: 
    case 2131166289: 
      do
      {
        return bool;
      } while ((this.b == null) || (this.b.getListView() == null));
      int i2 = this.b.getListView().getCount();
      if (b() == i2)
      {
        c();
        this.b.getListView().clearChoices();
        return bool;
      }
      b(this.b.m());
      while (i1 < i2)
      {
        this.b.getListView().setItemChecked(i1, bool);
        i1++;
      }
    }
    u();
    return bool;
  }
  
  public boolean onCreateActionMode(ActionMode paramActionMode, Menu paramMenu)
  {
    a(1);
    e(false);
    a(paramActionMode);
    o();
    paramActionMode.getMenuInflater().inflate(2131755013, paramMenu);
    this.h = paramMenu.findItem(2131166290);
    MenuItem localMenuItem = this.h;
    if (b() > 0) {}
    for (boolean bool = true;; bool = false)
    {
      localMenuItem.setVisible(bool);
      this.i = paramMenu.findItem(2131166291);
      this.i.setVisible(false);
      return true;
    }
  }
  
  public void onDestroyActionMode(ActionMode paramActionMode)
  {
    a(0);
    e(true);
    c();
    if (this.c != null) {
      this.c.d();
    }
  }
  
  public boolean onPrepareActionMode(ActionMode paramActionMode, Menu paramMenu)
  {
    return false;
  }
  
  public void p()
  {
    if ((this.b == null) || (this.b.p() == null)) {
      return;
    }
    if (this.f != 2) {}
    for (boolean bool = true;; bool = false)
    {
      if (this.j != null) {
        this.j.setVisible(true);
      }
      if (this.k != null) {
        this.k.setVisible(bool);
      }
      if (this.l != null) {
        this.l.setVisible(bool);
      }
      if (this.m != null) {
        this.m.setVisible(bool);
      }
      if (this.f != 2) {
        break;
      }
      this.e.a(true);
      return;
    }
  }
  
  public boolean q()
  {
    b(true);
    return false;
  }
  
  public boolean r()
  {
    return false;
  }
  
  public void s()
  {
    if (this.f == 2) {
      this.e.g();
    }
  }
  
  public String t()
  {
    String str = "";
    if (this.f == 2) {
      str = this.e.a();
    }
    return str;
  }
  
  protected void u()
  {
    boolean bool1 = false;
    if (this.b != null) {}
    for (SherlockFragmentActivity localSherlockFragmentActivity = this.b.getSherlockActivity(); localSherlockFragmentActivity == null; localSherlockFragmentActivity = null) {
      return;
    }
    int i1;
    label38:
    boolean bool2;
    boolean bool3;
    boolean bool4;
    label65:
    dl localdl;
    if (b() > 0)
    {
      i1 = 1;
      if (i1 == 0) {
        break label150;
      }
      Iterator localIterator = a().values().iterator();
      bool2 = true;
      bool3 = true;
      bool4 = false;
      if (!localIterator.hasNext()) {
        break label170;
      }
      localdl = (dl)localIterator.next();
      if ((bool4) || (!localdl.a)) {
        break label152;
      }
      bool4 = true;
    }
    for (;;)
    {
      if (localdl.a) {
        bool3 &= localdl.b;
      }
      if ((localdl.c) && (!bool2)) {
        break label65;
      }
      bool2 &= localdl.c;
      break label65;
      i1 = 0;
      break label38;
      label150:
      break;
      label152:
      if ((bool4) && (localdl.a)) {
        bool1 = true;
      }
    }
    label170:
    a(localSherlockFragmentActivity, bool4, bool1, bool3, bool2);
  }
  
  public boolean v()
  {
    return this.b.l();
  }
  
  public void w() {}
  
  protected void x()
  {
    if (z()) {
      this.d.dismiss();
    }
  }
  
  public void y()
  {
    this.e.b();
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.ui.MessagesFragmentModeManager
 * JD-Core Version:    0.7.0.1
 */