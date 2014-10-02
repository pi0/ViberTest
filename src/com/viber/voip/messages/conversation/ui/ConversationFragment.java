package com.viber.voip.messages.conversation.ui;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.support.v4.app.FragmentActivity;
import android.text.TextUtils;
import android.view.ContextMenu;
import android.view.ContextMenu.ContextMenuInfo;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.Button;
import android.widget.TextView;
import com.actionbarsherlock.view.Menu;
import com.viber.jni.PhoneControllerWrapper;
import com.viber.voip.ConversationListView;
import com.viber.voip.HomeActivity;
import com.viber.voip.ViberApplication;
import com.viber.voip.a.bc;
import com.viber.voip.a.n;
import com.viber.voip.a.p;
import com.viber.voip.a.q;
import com.viber.voip.a.y;
import com.viber.voip.app.ViberFragmentActivity;
import com.viber.voip.dc;
import com.viber.voip.dk;
import com.viber.voip.messages.LocationEditText;
import com.viber.voip.messages.controller.x;
import com.viber.voip.messages.conversation.a.b.e;
import com.viber.voip.messages.conversation.a.b.f;
import com.viber.voip.messages.conversation.a.o;
import com.viber.voip.messages.conversation.an;
import com.viber.voip.messages.conversation.publicgroup.PublicGroupConversationData;
import com.viber.voip.messages.conversation.w;
import com.viber.voip.messages.extras.fb.s;
import com.viber.voip.messages.orm.entity.impl.MessageEntityImpl;
import com.viber.voip.messages.ui.ConversationActivity;
import com.viber.voip.messages.ui.ExpandablePanelLayout;
import com.viber.voip.messages.ui.MessageComposerView;
import com.viber.voip.settings.l;
import com.viber.voip.util.bj;
import com.viber.voip.util.gl;
import com.viber.voip.util.gn;
import com.viber.voip.util.hv;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

public class ConversationFragment
  extends com.viber.voip.ui.am
  implements com.viber.voip.contacts.c.c.d, com.viber.voip.d, com.viber.voip.messages.conversation.a.b.a, com.viber.voip.messages.conversation.a.b.b, com.viber.voip.messages.conversation.a.b.c, e, f, com.viber.voip.messages.conversation.a.r, com.viber.voip.messages.conversation.ad, com.viber.voip.messages.conversation.ao, bu, cm, cp, cr
{
  private static final String a = ConversationFragment.class.getSimpleName();
  protected co b;
  protected ba c;
  protected m d;
  protected o e;
  protected w f;
  protected com.viber.voip.messages.i g;
  protected ConversationData h;
  protected Menu i;
  protected az j;
  protected Handler k;
  private com.viber.voip.messages.ui.h l;
  private cq m;
  private com.viber.voip.messages.conversation.a.g n;
  private com.viber.voip.messages.ui.ad o;
  private com.viber.voip.e.u p;
  private s q;
  private long r;
  private long s;
  private boolean t = false;
  private boolean u;
  private String v = "";
  private String w = null;
  private boolean x;
  private com.viber.voip.contacts.c.c.c y;
  private com.viber.voip.a.m z = com.viber.voip.a.a.n;
  
  private void I()
  {
    if ((getActivity() instanceof ConversationActivity)) {
      ((ConversationActivity)getActivity()).e();
    }
    while (!(getActivity() instanceof HomeActivity)) {
      return;
    }
    ((HomeActivity)getActivity()).m();
  }
  
  private void K()
  {
    if (this.d.b() > 0L)
    {
      if (!this.d.h()) {
        break label42;
      }
      if (this.d.j()) {
        M();
      }
    }
    else
    {
      return;
    }
    N();
    return;
    label42:
    at localat = new at(this);
    au localau = new au(this);
    com.viber.voip.util.at.a(getActivity(), 2131493837, getString(2131493842), localat, localau, 2131493706, false);
    bc localbc = bc.a();
    com.viber.voip.a.u localu = com.viber.voip.a.a.z;
    com.viber.voip.a.a.z.getClass();
    localbc.a(localu.b("330"));
  }
  
  private void L()
  {
    O();
  }
  
  private void M()
  {
    bc localbc = bc.a();
    com.viber.voip.a.u localu = com.viber.voip.a.a.z;
    com.viber.voip.a.a.z.getClass();
    localbc.a(localu.b("343"));
    com.viber.voip.util.at.a(getActivity(), 2131493838, getString(2131494041), new av(this), null, 2131494046, false);
  }
  
  private void N()
  {
    bc localbc1 = bc.a();
    com.viber.voip.a.u localu1 = com.viber.voip.a.a.z;
    com.viber.voip.a.a.z.getClass();
    localbc1.a(localu1.b("343"));
    bc localbc2 = bc.a();
    com.viber.voip.a.u localu2 = com.viber.voip.a.a.z;
    com.viber.voip.a.a.z.getClass();
    localbc2.a(localu2.b("501b"));
    View localView = LayoutInflater.from(getActivity()).inflate(2130903183, null);
    AlertDialog localAlertDialog = new AlertDialog.Builder(getActivity()).setView(localView).create();
    aw localaw = new aw(this, localAlertDialog);
    localAlertDialog.setOnCancelListener(new ax(this));
    Button localButton1 = (Button)localView.findViewById(2131165756);
    localButton1.setOnClickListener(localaw);
    localButton1.setText(2131493558);
    Button localButton2 = (Button)localView.findViewById(2131165757);
    localButton2.setOnClickListener(localaw);
    localButton2.setText(2131493673);
    Button localButton3 = (Button)localView.findViewById(2131165758);
    localButton3.setOnClickListener(localaw);
    localButton3.setText(2131494046);
    ((TextView)localView.findViewById(2131165474)).setText(2131494044);
    localAlertDialog.setTitle(2131493838);
    localAlertDialog.show();
  }
  
  private void O()
  {
    HashSet localHashSet = new HashSet();
    localHashSet.add(Long.valueOf(this.d.b()));
    this.g.c().a(localHashSet, new ay(this));
  }
  
  private void P()
  {
    this.g.c().a(this.d.b(), true, new af(this));
  }
  
  private void Q()
  {
    this.e.a(this.h.n);
    int i1 = this.f.e().getCount();
    for (int i2 = 0;; i2++) {
      if (i2 < i1)
      {
        if (this.h.n == this.f.e().a_(i2)) {
          this.c.j.a(i2);
        }
      }
      else {
        return;
      }
    }
  }
  
  private void R()
  {
    this.k.postDelayed(new aj(this), 500L);
  }
  
  private void S()
  {
    if (this.f != null)
    {
      this.c.j.setHasNew(this.f.e().m());
      this.c.j.a();
    }
    f(false);
    this.e.notifyDataSetChanged();
    com.viber.voip.messages.conversation.a.g localg = this.n;
    boolean bool1 = this.f.c();
    if ((this.m != null) && (this.m.a())) {}
    for (boolean bool2 = true;; bool2 = false)
    {
      localg.a(bool1, false, bool2);
      return;
    }
  }
  
  private void T()
  {
    if (this.f != null)
    {
      startActivity(new Intent("com.viber.voip.action.ACTION_CLOSE_HOME"));
      if (this.j != null) {
        this.j.c(false);
      }
      gn.b(ViberApplication.getInstance(), this.f.k());
    }
  }
  
  private void a(Menu paramMenu)
  {
    boolean bool1 = true;
    boolean bool2;
    co localco2;
    if ((this.b != null) && (paramMenu != null))
    {
      this.b.a(paramMenu);
      co localco1 = this.b;
      if ((this.d == null) || (!this.d.i())) {
        break label150;
      }
      bool2 = bool1;
      localco1.a(bool2);
      a(false);
      if (this.d.g())
      {
        this.b.a(j(), this.d.h());
        this.b.a(j(), this.d.h(), this.d.e());
        localco2 = this.b;
        if ((this.d.h()) || (j()) || (this.d.i())) {
          break label156;
        }
      }
    }
    for (;;)
    {
      localco2.d(bool1);
      return;
      label150:
      bool2 = false;
      break;
      label156:
      bool1 = false;
    }
  }
  
  private void a(ConversationData paramConversationData, boolean paramBoolean1, boolean paramBoolean2)
  {
    String str = ViberApplication.getInstance().getRegistrationValues().f();
    int i1;
    boolean bool1;
    int i2;
    if ((paramConversationData.l > 0L) || (paramConversationData.m > 0L) || (!TextUtils.isEmpty(paramConversationData.k)))
    {
      i1 = 1;
      bool1 = b(paramConversationData);
      if ((this.h == null) || (paramConversationData.l <= 0L) || (this.h.l != paramConversationData.l)) {
        break label159;
      }
      i2 = 1;
      label83:
      boolean bool2 = false;
      if (str != null) {
        bool2 = str.equals(paramConversationData.k);
      }
      if ((str == null) && ((!bool2) && (i1 != 0))) {
        break label165;
      }
      if (bool2) {
        ViberApplication.getInstance().showToast(getString(2131494181));
      }
      if (this.j != null) {
        this.j.c(true);
      }
    }
    label159:
    label165:
    label340:
    do
    {
      for (;;)
      {
        return;
        i1 = 0;
        break;
        i2 = 0;
        break label83;
        if ((paramConversationData == null) || (bool1) || (i2 != 0)) {
          break label340;
        }
        if (this.c != null) {
          this.c.a(paramConversationData);
        }
        a(paramConversationData);
        if (this.c != null)
        {
          this.c.j.l();
          this.c.h.setFragment(this);
          this.c.h.c();
        }
        if ((this.m != null) && (this.m.a())) {
          d();
        }
        if (this.n != null) {
          this.n.e();
        }
        if (this.f != null)
        {
          this.f.a(this.h, paramBoolean1, this.t);
          if (this.c != null) {
            this.c.j.g();
          }
        }
        while (this.d != null)
        {
          this.d.a(this.h);
          return;
          b(paramBoolean1);
        }
      }
      if (this.c != null)
      {
        this.c.i();
        if (this.v != null)
        {
          this.c.h.setMessageDraft(this.v);
          this.v = null;
        }
      }
    } while ((paramBoolean2) || (this.j == null));
    this.j.e_();
  }
  
  private void a(boolean paramBoolean, Set<String> paramSet)
  {
    if ((this.d != null) && (this.d.g()))
    {
      if (this.n != null) {
        runOnUiThread(new ap(this));
      }
      if ((this.c != null) && (!this.d.h()) && (paramSet != null) && (paramSet.contains(this.d.e()))) {
        this.c.h.setBlocked(paramBoolean);
      }
    }
  }
  
  private boolean b(ConversationData paramConversationData)
  {
    boolean bool = true;
    if (this.f == null) {
      bool = false;
    }
    com.viber.voip.messages.conversation.h localh;
    do
    {
      do
      {
        return bool;
      } while ((paramConversationData.l > 0L) && (paramConversationData.l == this.f.k()));
      localh = this.f.f();
    } while ((localh != null) && (((!localh.l()) && (!TextUtils.isEmpty(paramConversationData.k)) && (paramConversationData.k.equals(localh.e()))) || ((localh.l()) && (paramConversationData.m > 0L) && (paramConversationData.m == localh.d()))));
    return false;
  }
  
  private void f(boolean paramBoolean)
  {
    this.e.b(paramBoolean);
    this.c.j.setHasNew(paramBoolean);
  }
  
  public void A()
  {
    if (this.u)
    {
      if (!(getActivity() instanceof HomeActivity)) {
        break label42;
      }
      this.k.postDelayed(new aq(this), 400L);
    }
    for (;;)
    {
      this.u = false;
      return;
      label42:
      I();
    }
  }
  
  public ba B()
  {
    return this.c;
  }
  
  public m C()
  {
    return this.d;
  }
  
  public Context D()
  {
    return getActivity();
  }
  
  public View E()
  {
    return getActivity().getWindow().getDecorView();
  }
  
  protected String F()
  {
    return "Messages";
  }
  
  public w G()
  {
    return this.f;
  }
  
  public void a() {}
  
  public void a(int paramInt)
  {
    this.c.j.s();
  }
  
  public void a(long paramLong)
  {
    if ((this.f != null) && (this.f.k() == paramLong))
    {
      this.j.c(true);
      this.f.a(-1L);
    }
  }
  
  protected void a(ContextMenu paramContextMenu, View paramView, android.view.MenuInflater paramMenuInflater)
  {
    if ((paramView.getTag() instanceof com.viber.voip.messages.conversation.a.a.a.k)) {
      this.l.a(paramContextMenu, paramMenuInflater, paramView);
    }
    do
    {
      return;
      if ((paramView.getTag() instanceof Uri))
      {
        this.l.b(paramContextMenu, paramMenuInflater, paramView);
        return;
      }
    } while (!(paramView instanceof LocationEditText));
    this.l.c(paramContextMenu, paramMenuInflater, paramView);
  }
  
  public void a(com.viber.voip.messages.conversation.h paramh, boolean paramBoolean1, boolean paramBoolean2)
  {
    com.viber.voip.a.m localm;
    boolean bool1;
    label144:
    boolean bool2;
    label195:
    boolean bool3;
    label213:
    boolean bool4;
    label233:
    long l1;
    if (paramh != null)
    {
      if ((paramBoolean1) && (!paramBoolean2))
      {
        if (!paramh.l()) {
          break label436;
        }
        localm = com.viber.voip.a.a.o;
        this.z = localm;
        this.z.a(F());
        bc.a().a(this.z);
        f();
      }
      this.c.a(paramh);
      this.b.a(this.d.i());
      this.b.a(j(), paramh.l());
      this.b.a(j(), paramh.l(), paramh.q());
      co localco = this.b;
      if ((paramh.l()) || (j()) || (this.d.i())) {
        break label444;
      }
      bool1 = true;
      localco.d(bool1);
      this.d.a(paramh);
      int i1 = this.f.e().getCount();
      com.viber.voip.messages.conversation.a.g localg = this.n;
      if ((!this.f.c()) || (i1 <= 0)) {
        break label450;
      }
      bool2 = true;
      if ((!this.f.d()) || (i1 <= 0)) {
        break label456;
      }
      bool3 = true;
      if ((this.m == null) || (!this.m.a())) {
        break label462;
      }
      bool4 = true;
      localg.a(bool2, bool3, bool4);
      if (i1 == 0) {
        break label468;
      }
      l1 = this.f.e().e(i1 - 1).m();
      label268:
      this.r = l1;
      if (this.m == null) {
        break label474;
      }
    }
    label436:
    label444:
    label450:
    label456:
    label462:
    label468:
    label474:
    for (boolean bool5 = this.m.a();; bool5 = false)
    {
      a(bool5);
      if (this.i != null) {
        a(this.i);
      }
      if ((!this.t) && (this.f.c()) && (!paramBoolean1)) {
        this.c.j.a(true);
      }
      if ((getActivity() != null) && ((getActivity() instanceof HomeActivity))) {
        A();
      }
      if (this.w != null) {
        this.c.h.b(this.w);
      }
      if (!paramBoolean2)
      {
        this.n.a(paramh);
        a(paramh.g(), paramh.f(), true);
        a(null, false);
      }
      if (this.j != null) {
        this.j.a(paramh, paramBoolean1);
      }
      return;
      localm = com.viber.voip.a.a.n;
      break;
      bool1 = false;
      break label144;
      bool2 = false;
      break label195;
      bool3 = false;
      break label213;
      bool4 = false;
      break label233;
      l1 = 0L;
      break label268;
    }
  }
  
  protected void a(ConversationData paramConversationData)
  {
    this.h = paramConversationData;
  }
  
  public void a(com.viber.voip.messages.conversation.v paramv)
  {
    this.c.j.g();
  }
  
  public void a(com.viber.voip.messages.conversation.v paramv, boolean paramBoolean, int paramInt)
  {
    if ((paramv.getCount() > 0) && (paramv.e(0).j() != paramv.w())) {}
    this.c.a(false);
    this.c.i();
    this.c.j.g();
    this.c.h.setConversationMessageLoader(paramv);
    boolean bool1;
    boolean bool2;
    label107:
    boolean bool3;
    label127:
    boolean bool4;
    label147:
    int i1;
    if (this.m != null)
    {
      bool1 = this.m.a();
      a(bool1);
      com.viber.voip.messages.conversation.a.g localg = this.n;
      if ((!this.f.c()) || (paramv.getCount() <= 0)) {
        break label458;
      }
      bool2 = true;
      if ((!this.f.d()) || (paramv.getCount() <= 0)) {
        break label464;
      }
      bool3 = true;
      if ((this.m == null) || (!this.m.a())) {
        break label470;
      }
      bool4 = true;
      localg.a(bool2, bool3, bool4);
      this.n.l();
      if (this.c.j.q())
      {
        this.c.j.f();
        if (paramv.p()) {
          this.c.j.h();
        }
        this.c.j.d();
      }
      if (paramv.p()) {
        break label476;
      }
      this.c.j.j();
      com.viber.voip.z localz = this.c.i;
      localz.a(1);
      label256:
      i1 = this.f.e().getCount();
      if ((!paramBoolean) && (!this.x)) {
        break label489;
      }
      this.x = false;
      f(paramv.m());
      label292:
      if (!paramBoolean) {
        break label524;
      }
      if ((this.t) && ((this.h == null) || (this.h.n != 0L))) {
        break label517;
      }
      if (paramInt == -1) {
        break label504;
      }
      this.c.j.a(paramInt + 1);
      label340:
      if (this.s != 0L) {
        R();
      }
      label353:
      this.t = false;
      label358:
      if (i1 == 0) {
        break label591;
      }
    }
    label458:
    label591:
    for (long l1 = this.f.e().e(i1 - 1).m();; l1 = 0L)
    {
      this.r = l1;
      if (i1 > 0) {
        this.d.a(this.f.e().e(i1 - 1).l(), this.f.e().e(i1 - 1).T());
      }
      if (this.j != null) {
        this.j.d(paramBoolean);
      }
      return;
      bool1 = false;
      break;
      bool2 = false;
      break label107;
      label464:
      bool3 = false;
      break label127;
      label470:
      bool4 = false;
      break label147;
      label476:
      this.c.j.k();
      break label256;
      label489:
      if (paramv.m()) {
        break label292;
      }
      f(false);
      break label292;
      label504:
      this.c.j.a();
      break label340;
      Q();
      break label353;
      if ((this.c.j.a(true)) || (i1 == 0) || (this.r == this.f.e().e(i1 - 1).m()) || (!this.f.e().m())) {
        break label358;
      }
      this.c.h();
      break label358;
    }
  }
  
  public void a(MessageEntityImpl paramMessageEntityImpl)
  {
    this.f.a(paramMessageEntityImpl);
    S();
  }
  
  public void a(CharSequence paramCharSequence, boolean paramBoolean)
  {
    this.c.a(paramCharSequence, paramBoolean);
  }
  
  public void a(String paramString)
  {
    gl.b(getSherlockActivity(), paramString);
  }
  
  protected void a(String paramString1, String paramString2, boolean paramBoolean)
  {
    boolean bool1 = true;
    if ((this.e == null) || (this.c == null) || (this.c.j == null)) {
      return;
    }
    if ((paramBoolean) && ((TextUtils.isEmpty(paramString1)) || (!bj.a(getActivity(), paramString1)) || (!bj.a(getActivity(), paramString2))))
    {
      paramString1 = ViberApplication.preferences().b(com.viber.voip.settings.j.ar(), "");
      paramString2 = ViberApplication.preferences().b(com.viber.voip.settings.j.as(), "");
    }
    boolean bool2;
    label126:
    com.viber.voip.messages.conversation.a.g localg;
    boolean bool3;
    label163:
    boolean bool4;
    if (!TextUtils.isEmpty(paramString1))
    {
      bool2 = bool1;
      this.e.a(bool2);
      if (!this.d.i()) {
        break label217;
      }
      this.c.e();
      int i1 = this.f.e().getCount();
      localg = this.n;
      if ((!this.f.c()) || (i1 <= 0)) {
        break label230;
      }
      bool3 = bool1;
      if ((!this.f.d()) || (i1 <= 0)) {
        break label236;
      }
      bool4 = bool1;
      label182:
      if ((this.m == null) || (!this.m.a())) {
        break label242;
      }
    }
    for (;;)
    {
      localg.a(bool3, bool4, bool1);
      return;
      bool2 = false;
      break;
      label217:
      this.c.a(paramString1, paramString2);
      break label126;
      label230:
      bool3 = false;
      break label163;
      label236:
      bool4 = false;
      break label182;
      label242:
      bool1 = false;
    }
  }
  
  public void a(List<Long> paramList)
  {
    if (ViberApplication.getInstance().getPhoneController(false).isReady()) {
      ViberApplication.getInstance().getPhoneController(false).getPttPlaylist().b(null, true);
    }
    this.g.c().a(new HashSet(paramList), false, new am(this));
  }
  
  public void a(Set<String> paramSet, boolean paramBoolean)
  {
    a(true, paramSet);
  }
  
  public void a(boolean paramBoolean)
  {
    boolean bool1 = true;
    boolean bool2;
    co localco;
    if ((this.f != null) && (this.f.e().getCount() != 0))
    {
      bool2 = bool1;
      localco = this.b;
      if ((this.d.i()) || (!bool2) || (paramBoolean) || (j())) {
        break label67;
      }
    }
    for (;;)
    {
      localco.c(bool1);
      return;
      bool2 = false;
      break;
      label67:
      bool1 = false;
    }
  }
  
  public void a(MessageEntityImpl[] paramArrayOfMessageEntityImpl)
  {
    this.f.a(paramArrayOfMessageEntityImpl);
    S();
  }
  
  public boolean a(Intent paramIntent, boolean paramBoolean1, boolean paramBoolean2)
  {
    if ((paramIntent != null) && (paramIntent.getExtras() != null))
    {
      if (ViberApplication.getInstance().getPhoneController(false).isReady()) {
        ViberApplication.getInstance().getPhoneController(false).getPttPlaylist().b(null, true);
      }
      ConversationData localConversationData = (ConversationData)paramIntent.getExtras().getParcelable("extra_conversation_data");
      this.t = paramIntent.getExtras().getBoolean("extra_search_message", false);
      long l1 = paramIntent.getLongExtra("notif_extra_message", 0L);
      this.s = paramIntent.getLongExtra("notif_extra_ptt_message_id_for_playing", 0L);
      if (l1 != 0L) {
        this.p.c(l1);
      }
      if (paramIntent.hasExtra("open_conversation_info")) {
        this.u = paramIntent.getExtras().getBoolean("open_conversation_info", false);
      }
      this.v = paramIntent.getExtras().getString("draft");
      this.w = paramIntent.getStringExtra("open_custom_menu");
      if (localConversationData != null)
      {
        this.c.b(paramIntent);
        a(localConversationData, paramBoolean1, paramBoolean2);
        return true;
      }
    }
    return false;
  }
  
  protected boolean a(View paramView)
  {
    com.viber.voip.messages.conversation.a.a.a.k localk = (com.viber.voip.messages.conversation.a.a.a.k)paramView.getTag();
    this.m.a(true);
    this.m.a(((com.viber.voip.messages.conversation.a.a.a)localk.c()).a());
    return true;
  }
  
  public void a_(com.viber.voip.messages.conversation.a.a.a parama)
  {
    this.c.g();
  }
  
  public void b()
  {
    if (this.b != null)
    {
      this.b.c(false);
      if (this.d.g())
      {
        this.b.a(true, this.d.h());
        this.b.a(true, this.d.h(), this.d.e());
        this.b.d(false);
      }
    }
    bc.a().a(this.z.a.a());
  }
  
  public void b(int paramInt)
  {
    int i1 = 1;
    ba localba = this.c;
    if (paramInt == i1) {}
    for (;;)
    {
      localba.b(i1);
      return;
      i1 = 0;
    }
  }
  
  public void b(com.viber.voip.messages.conversation.a.a.a parama)
  {
    if (this.d.i()) {
      return;
    }
    if (parama.p())
    {
      if (parama.X() != 0L)
      {
        this.d.a(parama.X(), parama.ad(), parama.z(), null, this.z.f.a());
        return;
      }
      if (this.d.h())
      {
        Uri localUri = com.viber.voip.messages.a.b.d().a(parama.aa(), true);
        this.d.a(parama.Y(), parama.z(), localUri, this.z.f.a());
        return;
      }
      this.d.a(parama.Y(), null, null, this.z.f.a());
      return;
    }
    this.d.n();
  }
  
  public void b(String paramString)
  {
    gl.a(getSherlockActivity(), paramString);
  }
  
  public void b(Set<String> paramSet, boolean paramBoolean)
  {
    a(false, paramSet);
  }
  
  public void b(boolean paramBoolean)
  {
    com.viber.voip.messages.ui.h localh;
    if (getActivity() == null)
    {
      this.f = new w(ViberApplication.getInstance(), this.g, this.h.r, this);
      this.f.h();
      this.l = new com.viber.voip.messages.ui.h(D(), this);
      if (this.b == null) {
        this.b = new co(ViberApplication.getInstance(), this);
      }
      if (getActivity() != null)
      {
        this.m = new cq(this, (ViberFragmentActivity)getActivity(), this.f, this.c.a);
        a(this.m.a());
      }
      this.y = new com.viber.voip.contacts.c.c.a.g();
      this.y.a(this);
      this.e = e();
      this.n = new com.viber.voip.messages.conversation.a.g(D(), this, this.e);
      this.c.j.setAdapter(this.n);
      this.c.j.setOnScrollListener(this.e);
      this.c.j.setOnTouchListener(new ae(this));
      this.c.j.setOnItemClickListener(new ar(this));
      this.c.j.setOnLongItemClickListener(new as(this));
      this.f.a(this.h, paramBoolean, this.t);
      this.d.a(this.h);
      localh = this.l;
      if ((!this.h.p) && (!this.h.q)) {
        break label354;
      }
    }
    label354:
    for (boolean bool = true;; bool = false)
    {
      localh.a(bool);
      return;
      this.f = new w(getActivity(), getLoaderManager(), this.g, this.h.r, this);
      break;
    }
  }
  
  protected boolean b(View paramView)
  {
    return false;
  }
  
  public void c()
  {
    boolean bool1 = true;
    boolean bool2;
    co localco;
    if ((this.f != null) && (this.f.e().getCount() != 0))
    {
      bool2 = bool1;
      this.b.c(bool2);
      this.b.a(false, this.d.h());
      this.b.a(false, this.d.h(), this.d.e());
      localco = this.b;
      if (this.d.h()) {
        break label95;
      }
    }
    for (;;)
    {
      localco.d(bool1);
      return;
      bool2 = false;
      break;
      label95:
      bool1 = false;
    }
  }
  
  public void c(boolean paramBoolean)
  {
    if (this.f != null) {
      this.f.a(paramBoolean);
    }
    com.viber.voip.h.b.d().a(paramBoolean);
  }
  
  public boolean c(com.viber.voip.messages.conversation.a.a.a parama)
  {
    if ((parama != null) && (parama.e() != null) && ((getActivity() != null) || (D() != null)))
    {
      if (("image".equals(parama.e())) || ("video".equals(parama.e())) || ("animated_message".equals(parama.e())))
      {
        if ("image".equals(parama.e()))
        {
          bc.a().a(this.z.a(n.e));
          if (getActivity() != null) {
            break label167;
          }
        }
        label167:
        for (Object localObject1 = D();; localObject1 = getActivity())
        {
          gn.a((Context)localObject1, this.d.b(), parama.a(), this.d.a(), this.z.a());
          return true;
          bc.a().a(this.z.a(n.d));
          break;
        }
      }
      if ("location".equals(parama.e()))
      {
        bc.a().a(this.z.a(n.c));
        if (getActivity() == null) {}
        for (Object localObject2 = D();; localObject2 = getActivity())
        {
          gn.a((Context)localObject2, parama, false, this.z.a(), true);
          return true;
        }
      }
      if ("formatted_follow".equals(parama.e()))
      {
        if (!ViberApplication.isTablet()) {
          break label274;
        }
        if (!ViberApplication.isTablet()) {}
      }
      return true;
      label274:
      Intent localIntent1 = com.viber.voip.messages.j.a(new PublicGroupConversationData(parama.ag(), parama.y(), hv.b(parama.I()), parama.E(), parama.M(), (int)parama.h(), parama.ah(), parama.Y()), true);
      localIntent1.addFlags(268435456);
      if (getActivity() != null) {}
      for (Intent localIntent2 = getActivity().getIntent();; localIntent2 = null)
      {
        localIntent1.putExtra("back_intent", localIntent2);
        D().startActivity(localIntent1);
        break;
      }
    }
    return false;
  }
  
  public void d()
  {
    cq localcq = this.m;
    if (!this.m.a()) {}
    for (boolean bool = true;; bool = false)
    {
      localcq.a(bool);
      this.n.a(this.f.c(), this.f.d(), this.m.a());
      this.c.h.c();
      return;
    }
  }
  
  public void d(com.viber.voip.messages.conversation.a.a.a parama)
  {
    i().f();
  }
  
  public void d(boolean paramBoolean)
  {
    if (!gn.a(getActivity())) {
      return;
    }
    if (!this.d.h()) {
      bc.a().a(com.viber.voip.a.a.v.f(paramBoolean));
    }
    for (;;)
    {
      this.d.a(paramBoolean);
      return;
      bc.a().a(com.viber.voip.a.a.v.g(false));
    }
  }
  
  protected o e()
  {
    if (this.e == null)
    {
      com.viber.voip.stickers.b localb = com.viber.voip.stickers.r.a().d();
      this.e = new o(this, this.f.e(), this.m, localb, true, this.h.r, this);
    }
    return this.e;
  }
  
  public void e(com.viber.voip.messages.conversation.a.a.a parama)
  {
    if ((parama != null) && ((getActivity() != null) || (D() != null)))
    {
      if (!"image".equals(parama.e())) {
        break label86;
      }
      bc.a().a(com.viber.voip.a.a.p.a(com.viber.voip.a.z.b));
    }
    Intent localIntent;
    for (;;)
    {
      localIntent = new Intent("com.viber.voip.action.ACTION_FORWARD");
      localIntent.putExtra("default_message_id", parama.a());
      if (getActivity() == null) {
        break;
      }
      startActivity(localIntent);
      return;
      label86:
      if ("video".equals(parama.e())) {
        bc.a().a(com.viber.voip.a.a.p.a(com.viber.voip.a.z.c));
      } else if ("animated_message".equals(parama.e())) {
        bc.a().a(com.viber.voip.a.a.p.a(com.viber.voip.a.z.f));
      }
    }
    localIntent.addFlags(268435456);
    D().startActivity(localIntent);
  }
  
  public void e(boolean paramBoolean)
  {
    boolean bool1 = true;
    int i1 = this.f.e().getCount();
    this.e.c(paramBoolean);
    com.viber.voip.messages.conversation.a.g localg = this.n;
    boolean bool2;
    if ((this.f.c()) && (i1 > 0))
    {
      bool2 = bool1;
      if ((!this.f.d()) || (i1 <= 0)) {
        break label80;
      }
    }
    for (;;)
    {
      localg.a(bool2, bool1, this.m.a());
      return;
      bool2 = false;
      break;
      label80:
      bool1 = false;
    }
  }
  
  protected void f()
  {
    if (this.d.g()) {
      this.d.d(this.c.h.getMessageDraft());
    }
  }
  
  public void f(com.viber.voip.messages.conversation.a.a.a parama)
  {
    this.g.c().a(parama.a(), new ak(this));
  }
  
  public ConversationData g()
  {
    return this.h;
  }
  
  public void g(com.viber.voip.messages.conversation.a.a.a parama)
  {
    bc localbc = bc.a();
    com.viber.voip.a.m localm = this.z;
    n localn;
    ViberApplication localViberApplication;
    boolean bool1;
    String str;
    if (parama.p())
    {
      localn = n.b;
      localbc.a(localm.a(localn));
      localViberApplication = ViberApplication.getInstance();
      bool1 = parama.S();
      str = this.z.a();
      if (parama.T()) {
        break label88;
      }
    }
    label88:
    for (boolean bool2 = true;; bool2 = false)
    {
      gn.a(localViberApplication, parama, bool1, str, bool2);
      return;
      localn = n.a;
      break;
    }
  }
  
  public IBinder h()
  {
    return getView().getWindowToken();
  }
  
  public void h(com.viber.voip.messages.conversation.a.a.a parama)
  {
    this.g.c().b(parama.a());
    this.g.c().b();
  }
  
  public com.viber.voip.messages.ui.ad i()
  {
    if (this.o == null) {
      this.o = new k(this);
    }
    return this.o;
  }
  
  public void i(com.viber.voip.messages.conversation.a.a.a parama)
  {
    if ("image".equals(parama.e())) {
      bc.a().a(this.z.b(n.e));
    }
    for (;;)
    {
      this.g.c().b(parama.a(), parama.H());
      return;
      if ("video".equals(parama.e())) {
        bc.a().a(this.z.b(n.d));
      }
    }
  }
  
  protected boolean j()
  {
    boolean bool2;
    if ((getActivity() instanceof ConversationActivity)) {
      bool2 = ((ConversationActivity)getActivity()).c();
    }
    boolean bool1;
    do
    {
      return bool2;
      bool1 = getActivity() instanceof HomeActivity;
      bool2 = false;
    } while (!bool1);
    return ((HomeActivity)getActivity()).l();
  }
  
  public void k()
  {
    bc.a().a(((p)this.z).i());
    this.g.c().a(this.d.b(), false, new ah(this));
  }
  
  public com.viber.voip.a.m l()
  {
    return this.z;
  }
  
  public void m()
  {
    this.j.d();
  }
  
  public List<View> n()
  {
    return this.c.f();
  }
  
  public void o()
  {
    this.f.i();
    this.e.d();
  }
  
  public boolean onActivityBackPressed()
  {
    if (this.c.n.b())
    {
      this.c.n.a();
      this.c.h.g();
      return true;
    }
    return false;
  }
  
  public boolean onActivityKeyUp(int paramInt, KeyEvent paramKeyEvent)
  {
    return false;
  }
  
  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    this.c.a(paramInt1, paramInt2, paramIntent);
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
  }
  
  public boolean onActivitySearchRequested()
  {
    return false;
  }
  
  public void onAttach(Activity paramActivity)
  {
    super.onAttach(paramActivity);
    if (!(paramActivity instanceof az)) {
      throw new ClassCastException("Activity must implement fragment's callbacks.");
    }
    this.j = ((az)paramActivity);
  }
  
  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    this.e.b();
    if ((this.f != null) && (this.f.f() != null))
    {
      com.viber.voip.messages.conversation.h localh = this.f.f();
      a(localh.g(), localh.f(), true);
    }
    super.onConfigurationChanged(paramConfiguration);
  }
  
  public boolean onContextItemSelected(android.view.MenuItem paramMenuItem)
  {
    if (paramMenuItem.getGroupId() == 2131166308) {
      return super.onContextItemSelected(paramMenuItem);
    }
    this.l.a(paramMenuItem, this.d);
    return true;
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.k = dc.a(dk.a);
    setHasOptionsMenu(true);
    ViberApplication localViberApplication = ViberApplication.getInstance();
    this.g = localViberApplication.getMessagesManager();
    this.p = localViberApplication.getPhoneApp().a();
    this.q = ViberApplication.getInstance().getFacebookManager();
  }
  
  public void onCreateContextMenu(ContextMenu paramContextMenu, View paramView, ContextMenu.ContextMenuInfo paramContextMenuInfo)
  {
    super.onCreateContextMenu(paramContextMenu, paramView, paramContextMenuInfo);
    a(paramContextMenu, paramView, getActivity().getMenuInflater());
  }
  
  public void onCreateOptionsMenu(Menu paramMenu, com.actionbarsherlock.view.MenuInflater paramMenuInflater)
  {
    paramMenuInflater.inflate(2131755037, paramMenu);
    this.i = paramMenu;
    a(paramMenu);
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    View localView = paramLayoutInflater.inflate(2130903255, paramViewGroup, false);
    this.d = new m(this);
    this.c = new ba(this, this, this.d, localView, paramBundle, i());
    this.d.a(this.c);
    this.c.h.setFragment(this);
    this.c.h.setMessageSender(this);
    return localView;
  }
  
  public void onDestroyView()
  {
    super.onDestroyView();
    this.d.m();
    this.c.c();
    if (this.f != null) {
      this.f.g();
    }
    if (this.y != null) {
      this.y.b(this);
    }
    if (this.n != null) {
      this.n.b();
    }
  }
  
  public void onDetach()
  {
    super.onDetach();
    if (this.f != null)
    {
      this.f.a();
      z();
    }
  }
  
  public boolean onOptionsItemSelected(com.actionbarsherlock.view.MenuItem paramMenuItem)
  {
    return this.b.a(paramMenuItem);
  }
  
  public void onPause()
  {
    f();
    if (ViberApplication.getInstance().getPhoneController(false).isReady()) {
      ViberApplication.getInstance().getPhoneController(false).getPttPlaylist().b(null, true);
    }
    this.c.b();
    this.x = true;
    super.onPause();
  }
  
  public void onPrepareOptionsMenu(Menu paramMenu)
  {
    if (this.b != null) {
      this.b.b(paramMenu);
    }
  }
  
  public void onResume()
  {
    this.c.a();
    super.onResume();
  }
  
  public Object onRetainCustomNonConfigurationInstance()
  {
    return null;
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    this.c.a(paramBundle);
  }
  
  public void onStart()
  {
    super.onStart();
    if (this.e != null) {
      this.e.notifyDataSetChanged();
    }
    this.d.k();
  }
  
  public void onStop()
  {
    super.onStop();
    this.d.l();
    if ((this.f != null) && (this.f.e() != null)) {
      this.f.e().t();
    }
  }
  
  public void p()
  {
    K();
  }
  
  public void q() {}
  
  public void r()
  {
    this.c.h.c();
    this.c.h.setVisibility(8);
  }
  
  public void s()
  {
    if (this.d.i()) {
      return;
    }
    this.c.h.setVisibility(0);
    a(false);
    this.b.a(j(), this.d.h());
    this.b.a(j(), this.d.h(), this.d.e());
    co localco = this.b;
    boolean bool1 = this.d.h();
    boolean bool2 = false;
    if (!bool1)
    {
      boolean bool3 = j();
      bool2 = false;
      if (!bool3) {
        bool2 = true;
      }
    }
    localco.d(bool2);
  }
  
  public MessageComposerView t()
  {
    return this.c.h;
  }
  
  public View u()
  {
    return this.c.n;
  }
  
  public void v()
  {
    if (this.e != null) {
      this.e.c();
    }
  }
  
  public void w()
  {
    this.c.n.a(2131165913);
  }
  
  public void x()
  {
    FragmentActivity localFragmentActivity;
    String str2;
    HashSet localHashSet;
    if ((this.d != null) && (this.d.g()))
    {
      String str1 = this.d.e();
      if (!TextUtils.isEmpty(str1))
      {
        localFragmentActivity = getActivity();
        str2 = this.d.d();
        localHashSet = new HashSet();
        localHashSet.add(str1);
        if (!com.viber.voip.block.i.a(str1)) {
          break label78;
        }
        com.viber.voip.block.i.a(localFragmentActivity, str2, localHashSet);
      }
    }
    return;
    label78:
    com.viber.voip.block.i.a(localFragmentActivity, str2, localHashSet, null, true);
  }
  
  public void y()
  {
    if (!ViberApplication.preferences().b(com.viber.voip.settings.j.aB(), com.viber.voip.settings.j.aC()))
    {
      com.viber.voip.util.at.a(getActivity(), 2131494505, getString(2131494506), new ao(this), null, 2131493557, 2131494174, false);
      bc localbc = bc.a();
      com.viber.voip.a.u localu = com.viber.voip.a.a.z;
      com.viber.voip.a.a.z.getClass();
      localbc.a(localu.b("383"));
      return;
    }
    T();
  }
  
  public void z()
  {
    if (this.f != null) {
      this.f.b();
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.conversation.ui.ConversationFragment
 * JD-Core Version:    0.7.0.1
 */