package com.viber.voip.messages.conversation.publicgroup;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcelable;
import android.support.v4.app.FragmentActivity;
import android.text.SpannableStringBuilder;
import android.text.style.StyleSpan;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewStub;
import android.widget.TextView;
import com.actionbarsherlock.view.Menu;
import com.actionbarsherlock.view.MenuInflater;
import com.actionbarsherlock.view.MenuItem;
import com.viber.jni.PhoneControllerDelegateAdapter;
import com.viber.jni.PhoneControllerWrapper;
import com.viber.voip.ConversationListView;
import com.viber.voip.ViberApplication;
import com.viber.voip.messages.a.b;
import com.viber.voip.messages.controller.GroupController;
import com.viber.voip.messages.controller.c.e;
import com.viber.voip.messages.controller.di;
import com.viber.voip.messages.controller.x;
import com.viber.voip.messages.conversation.a.b.d;
import com.viber.voip.messages.conversation.a.o;
import com.viber.voip.messages.conversation.h;
import com.viber.voip.messages.conversation.ui.ConversationData;
import com.viber.voip.messages.conversation.ui.ConversationFragment;
import com.viber.voip.messages.conversation.ui.az;
import com.viber.voip.messages.conversation.ui.ba;
import com.viber.voip.messages.conversation.ui.co;
import com.viber.voip.messages.conversation.ui.m;
import com.viber.voip.messages.conversation.v;
import com.viber.voip.messages.conversation.w;
import com.viber.voip.messages.i;
import com.viber.voip.user.PublicGroupParticipantDetailsActivity;
import com.viber.voip.user.UserData;
import com.viber.voip.util.at;
import com.viber.voip.util.ft;
import com.viber.voip.util.gj;
import com.viber.voip.widget.MessageBar;
import com.viber.voip.widget.k;
import java.util.HashSet;
import java.util.Set;

public class PublicGroupConversationFragment
  extends ConversationFragment
  implements View.OnClickListener, d, k
{
  final PhoneControllerDelegateAdapter a = new aj(this);
  private ao l;
  private View m;
  private View n;
  private int o = 3;
  private int p = 3;
  private long q;
  private String r;
  private int s;
  private ProgressDialog t;
  private MessageBar u;
  private Boolean v;
  private boolean w;
  private MenuItem x;
  private di y = new af(this);
  private di z = new ah(this);
  
  private void I()
  {
    if (this.m != null) {
      this.m.setVisibility(8);
    }
  }
  
  private void K()
  {
    if (this.n != null) {
      this.n.setVisibility(8);
    }
  }
  
  private void L()
  {
    Intent localIntent = new Intent("com.viber.voip.action.EDIT_PUBLIC_GROUP");
    localIntent.putExtra("public_group_id_extra", this.d.c());
    startActivity(localIntent);
  }
  
  private void M()
  {
    at.a(getActivity(), 2131494007, getString(2131494008), new ae(this), null, 2131493557, 2131494284, false);
  }
  
  private boolean N()
  {
    return (this.f != null) && (this.f.e().getCount() == 0) && (this.f.f() != null) && (((aq)this.f.f()).u() == 1) && (((aq)this.f.f()).F() == 1);
  }
  
  private void O()
  {
    if (N())
    {
      P();
      return;
    }
    Q();
  }
  
  private void P()
  {
    if ((this.v == null) || (!this.v.booleanValue()))
    {
      this.v = Boolean.valueOf(true);
      View localView = View.inflate(getActivity(), 2130903256, null);
      ((ViewGroup)getView().findViewById(2131165925)).addView(localView, new ViewGroup.LayoutParams(-1, -1));
      localView.findViewById(2131165944).setOnTouchListener(new ag(this));
    }
  }
  
  private void Q()
  {
    if ((this.v == null) || (this.v.booleanValue()))
    {
      this.v = Boolean.valueOf(false);
      View localView = getView().findViewById(2131165943);
      if (localView != null) {
        ((ViewGroup)getView().findViewById(2131165925)).removeView(localView);
      }
    }
  }
  
  private void R()
  {
    if ((this.u != null) && (!isDetached())) {
      this.u.a(ViberApplication.getInstance().getString(2131494591), ViberApplication.getInstance().getString(2131494592), 2130837874, false, false);
    }
  }
  
  private void S()
  {
    if ((this.u != null) && (!isDetached())) {
      this.u.a(ViberApplication.getInstance().getString(2131494593), null, 0, 0, false, true, true);
    }
  }
  
  private void T()
  {
    if (this.u != null) {
      this.u.a();
    }
  }
  
  private void U()
  {
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(new ContextThemeWrapper(getActivity(), 2131558708));
    localBuilder.setTitle(2131494642);
    localBuilder.setMessage(2131494643);
    localBuilder.setPositiveButton(2131494534, new al(this));
    localBuilder.setNegativeButton(2131493558, null);
    localBuilder.create().show();
  }
  
  private void V()
  {
    HashSet localHashSet = new HashSet();
    localHashSet.add(Long.valueOf(this.f.k()));
    this.g.c().a(localHashSet, new am(this));
  }
  
  private void W()
  {
    if ((!UserData.getViberName().isEmpty()) && (!UserData.getViberImage().isEmpty()))
    {
      this.g.d().a(this.q, 1);
      I();
      return;
    }
    M();
  }
  
  private void a(aq paramaq, View paramView)
  {
    ViewStub localViewStub = (ViewStub)paramView.findViewById(2131165938);
    if (localViewStub != null)
    {
      localViewStub.setLayoutResource(2130903306);
      this.m = localViewStub.inflate();
    }
    if (this.m != null)
    {
      TextView localTextView = (TextView)this.m.findViewById(2131165474);
      String str1 = b.d().b(paramaq.D(), true);
      String str2 = paramaq.c();
      StringBuilder localStringBuilder1 = new StringBuilder();
      StringBuilder localStringBuilder2 = new StringBuilder().append("‪");
      Object[] arrayOfObject = new Object[2];
      arrayOfObject[0] = ("‪" + str1 + "‬");
      arrayOfObject[1] = ("‪" + paramaq.c() + "‬");
      localStringBuilder1.append(getString(2131494535, arrayOfObject));
      String str3 = localStringBuilder1.toString();
      int i = str3.indexOf(str1);
      int j = str3.indexOf(str2);
      SpannableStringBuilder localSpannableStringBuilder = new SpannableStringBuilder(str3);
      localSpannableStringBuilder.setSpan(new StyleSpan(1), i, i + str1.length(), 17);
      localSpannableStringBuilder.setSpan(new StyleSpan(1), j, j + str2.length(), 17);
      localTextView.setText(localSpannableStringBuilder);
      this.m.findViewById(2131166063).setOnClickListener(this);
      this.m.findViewById(2131166064).setOnClickListener(this);
      this.m.setVisibility(0);
    }
  }
  
  private void b(long paramLong)
  {
    this.t = ProgressDialog.show(getActivity(), null, "Joining", false, true);
    this.s = ViberApplication.getInstance().getPhoneController(true).generateSequence();
    e.a().a(this.y);
    if (g() != null) {
      this.g.d().a(this.s, paramLong, 0, "", g().j, ((PublicGroupConversationData)g()).f, ((PublicGroupConversationData)g()).g);
    }
  }
  
  private void b(aq paramaq, View paramView)
  {
    ViewStub localViewStub = (ViewStub)paramView.findViewById(2131165940);
    if (localViewStub != null)
    {
      localViewStub.setLayoutResource(2130903310);
      this.n = localViewStub.inflate();
    }
    if (this.n != null)
    {
      this.n.findViewById(2131166092).setOnClickListener(this);
      this.n.setVisibility(0);
    }
  }
  
  private void f(boolean paramBoolean)
  {
    if ((paramBoolean) && (this.p != 3)) {}
    for (int i = 1;; i = 0)
    {
      if ((this.x != null) && (this.x.isVisible() != i)) {}
      return;
    }
  }
  
  public void a(Parcelable paramParcelable) {}
  
  public void a(com.viber.voip.messages.conversation.a.a.a parama)
  {
    if (!ft.b(D()))
    {
      D().startActivity(new Intent("com.viber.voip.action.CONNECTION_PROBLEM").setFlags(268435456));
      return;
    }
    this.g.c().a(parama.af(), this.q, parama.ah(), parama.Z());
  }
  
  public void a(h paramh, boolean paramBoolean1, boolean paramBoolean2)
  {
    int i = 1;
    super.a(paramh, paramBoolean1, paramBoolean2);
    if ((paramh == null) || (isDetached())) {
      return;
    }
    aq localaq = (aq)paramh;
    Object[] arrayOfObject = new Object[i];
    arrayOfObject[0] = Integer.valueOf(localaq.w());
    a(getString(2131494514, arrayOfObject));
    View localView = getView();
    this.o = localaq.u();
    this.q = localaq.d();
    this.p = localaq.b();
    az localaz = this.j;
    if (this.p == 3)
    {
      int j = i;
      localaz.c(j);
      switch (localaq.u())
      {
      default: 
        I();
        K();
        label156:
        O();
        if (j()) {
          break;
        }
      }
    }
    for (;;)
    {
      f(i);
      return;
      int k = 2;
      break;
      a(localaq, localView);
      K();
      break label156;
      localView.findViewById(2131165933).setVisibility(8);
      if (localaq.b() == 3) {
        b(localaq, localView);
      }
      for (;;)
      {
        I();
        break;
        K();
      }
      i = 0;
    }
  }
  
  protected void a(ConversationData paramConversationData)
  {
    super.a(paramConversationData);
    this.r = null;
  }
  
  public void a(v paramv, boolean paramBoolean, int paramInt)
  {
    super.a(paramv, paramBoolean, paramInt);
    O();
    if (this.w)
    {
      if (!this.c.j.d()) {
        this.c.j.a();
      }
      this.w = false;
    }
  }
  
  public void a(String paramString1, String paramString2, boolean paramBoolean)
  {
    if (this.f != null) {}
    for (h localh = this.f.f();; localh = null)
    {
      if (localh != null)
      {
        super.a(paramString1, paramString2, false);
        String str = ((aq)localh).G();
        if ((this.r == null) || (!this.r.equals(str)))
        {
          this.r = str;
          ViberApplication.getInstance().getMessagesManager().d().b(localh.a(), str);
        }
      }
      return;
    }
  }
  
  public void a(boolean paramBoolean) {}
  
  protected boolean a(View paramView)
  {
    return false;
  }
  
  public void b()
  {
    int i = 1;
    co localco;
    if ((this.b != null) && (this.d.g()))
    {
      this.b.a(false, false);
      localco = this.b;
      if (this.o != i) {
        break label52;
      }
    }
    for (;;)
    {
      localco.c(i);
      f(false);
      return;
      label52:
      int j = 0;
    }
  }
  
  public void b(com.viber.voip.messages.conversation.a.a.a parama)
  {
    if (C().i()) {
      return;
    }
    if ((parama.p()) && (!parama.V()))
    {
      Uri localUri = b.d().a(parama.aa(), true);
      FragmentActivity localFragmentActivity = getActivity();
      if (gj.c(parama.z())) {}
      for (String str = getString(2131493744);; str = parama.z())
      {
        startActivity(PublicGroupParticipantDetailsActivity.buildIntent(localFragmentActivity, localUri, str));
        return;
      }
    }
    super.b(parama);
  }
  
  public void c()
  {
    super.c();
    this.b.c(false);
    f(true);
  }
  
  public void d()
  {
    L();
  }
  
  protected o e()
  {
    if (this.e == null)
    {
      this.e = super.e();
      ViberApplication.getInstance().getPhoneController(false).addInitializedListener(new ad(this));
    }
    return super.e();
  }
  
  protected void f()
  {
    if (1 == this.o) {
      super.f();
    }
  }
  
  public void onClick(View paramView)
  {
    switch (paramView.getId())
    {
    default: 
      return;
    case 2131166064: 
      W();
      return;
    case 2131166063: 
      U();
      return;
    }
    b(this.f.f().d());
  }
  
  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    super.onConfigurationChanged(paramConfiguration);
    if ((this.v != null) && (this.v.booleanValue()))
    {
      Q();
      P();
    }
  }
  
  public void onCreateOptionsMenu(Menu paramMenu, MenuInflater paramMenuInflater)
  {
    paramMenuInflater.inflate(2131755038, paramMenu);
    this.i = paramMenu;
    this.x = paramMenu.findItem(2131166352);
    this.x.setVisible(false);
    f(true);
    if ((this.b != null) && (paramMenu != null))
    {
      this.b.a(paramMenu);
      this.b.b(true);
    }
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    View localView = super.onCreateView(paramLayoutInflater, paramViewGroup, paramBundle);
    this.m = localView.findViewById(2131165939);
    this.n = localView.findViewById(2131165941);
    this.u = new MessageBar(paramLayoutInflater, E());
    this.u.a(this);
    return localView;
  }
  
  public void onDetach()
  {
    e.a().b(this.y);
    super.onDetach();
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    switch (paramMenuItem.getItemId())
    {
    default: 
      return this.b.a(paramMenuItem);
    }
    Intent localIntent = new Intent("com.viber.voip.action.INVITE_TO_PUBLIC_GROUP");
    localIntent.putExtra("extra_group_id", this.q);
    localIntent.putExtra("extra_group_name", G().f().c());
    startActivity(localIntent);
    return true;
  }
  
  public void onPause()
  {
    ViberApplication.getInstance().getPhoneController(false).removeDelegate(this.l);
    super.onPause();
  }
  
  public void onStart()
  {
    super.onStart();
    if (!ft.b(D())) {
      R();
    }
    ViberApplication.getInstance().getPhoneController(false).registerDelegate(this.a);
    e.a().a(this.z);
    if (e.a().b(this.q)) {
      S();
    }
  }
  
  public void onStop()
  {
    super.onStop();
    ViberApplication.getInstance().getPhoneController(false).removeDelegate(this.a);
    e.a().b(this.z);
    T();
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.conversation.publicgroup.PublicGroupConversationFragment
 * JD-Core Version:    0.7.0.1
 */