package com.viber.voip.contacts.ui;

import android.app.Activity;
import android.content.Intent;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Parcelable;
import android.support.v4.app.FragmentActivity;
import android.telephony.PhoneNumberUtils;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.actionbarsherlock.view.Menu;
import com.actionbarsherlock.view.MenuInflater;
import com.actionbarsherlock.view.MenuItem;
import com.viber.jni.PhoneControllerListener;
import com.viber.jni.PhoneControllerWrapper;
import com.viber.jni.lastonline.LastOnlineController;
import com.viber.jni.lastonline.LastOnlineDelegate;
import com.viber.jni.lastonline.LastOnlineListener;
import com.viber.voip.ViberApplication;
import com.viber.voip.a.bc;
import com.viber.voip.calls.entities.CallEntity;
import com.viber.voip.contacts.c.c.c;
import com.viber.voip.dc;
import com.viber.voip.dk;
import com.viber.voip.phone.v;
import com.viber.voip.registration.dj;
import com.viber.voip.ui.am;
import com.viber.voip.user.UserDetailPhotoSetter;
import com.viber.voip.util.ao;
import com.viber.voip.util.b.al;
import com.viber.voip.util.ft;
import com.viber.voip.util.fz;
import com.viber.voip.util.gl;
import com.viber.voip.util.gn;
import com.viber.voip.util.gv;
import com.viber.voip.viberout.ui.ViberOutDialogs;
import com.viber.voip.widget.AvatarView;
import com.viber.voip.widget.ProportionalLayout;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

public class ContactDetailsFragment
  extends am
  implements AdapterView.OnItemClickListener, com.viber.voip.contacts.c.c.d, com.viber.voip.contacts.c.d.d
{
  private static ac P = new o();
  public static final String a = ContactDetailsFragment.class.getSimpleName();
  private boolean A;
  private Collection<com.viber.voip.contacts.d.a> B = new ArrayList();
  private List<com.viber.voip.contacts.b.g> C = Collections.emptyList();
  private List<CallEntity> D = new ArrayList();
  private Map<String, Boolean> E = new HashMap();
  private MenuItem F;
  private MenuItem G;
  private Menu H;
  private boolean I;
  private com.viber.voip.a.k J = new com.viber.voip.a.k();
  private final UserDetailPhotoSetter K = new UserDetailPhotoSetter();
  private View.OnClickListener L;
  private com.viber.voip.util.b.w M;
  private com.viber.voip.util.b.x N;
  private final al O = new a(this);
  private ac Q = P;
  private Runnable R = new w(this);
  private Runnable S = new j(this);
  private final LastOnlineDelegate T = new m(this);
  private ImageView b;
  private View c;
  private ProportionalLayout d;
  private ListView e;
  private View f;
  private View g;
  private View h;
  private aa i;
  private boolean j;
  private boolean k;
  private TextView l;
  private TextView m;
  private Handler n;
  private com.viber.voip.contacts.c.d.b o;
  private c p;
  private String q;
  private String r;
  private long s;
  private long t;
  private Uri u;
  private String v;
  private boolean w;
  private boolean x;
  private boolean y;
  private boolean z;
  
  private View a(boolean paramBoolean1, boolean paramBoolean2, String paramString, com.viber.voip.contacts.b.d paramd, boolean paramBoolean3)
  {
    a(paramBoolean1, paramBoolean2, paramBoolean3, paramString, paramd);
    return this.h;
  }
  
  private List<com.viber.voip.contacts.d.a> a(Collection<com.viber.voip.contacts.d.a> paramCollection, com.viber.voip.contacts.d.b paramb)
  {
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = paramCollection.iterator();
    while (localIterator.hasNext())
    {
      com.viber.voip.contacts.d.a locala = (com.viber.voip.contacts.d.a)localIterator.next();
      if (paramb.equals(locala.a)) {
        localArrayList.add(locala);
      }
    }
    return localArrayList;
  }
  
  private List<com.viber.voip.contacts.d.a> a(Collection<com.viber.voip.contacts.d.a> paramCollection, com.viber.voip.contacts.d.b paramb, String paramString)
  {
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = paramCollection.iterator();
    while (localIterator.hasNext())
    {
      com.viber.voip.contacts.d.a locala = (com.viber.voip.contacts.d.a)localIterator.next();
      if ((paramb.equals(locala.a)) && (paramString.equals(locala.f))) {
        localArrayList.add(locala);
      }
    }
    return localArrayList;
  }
  
  private void a(View paramView)
  {
    this.e = ((ListView)paramView.findViewById(2131165639));
    this.f = paramView.findViewById(16908292);
    float f1;
    if ((gl.e(getActivity())) || (this.j))
    {
      this.b = ((ImageView)paramView.findViewById(2131165458));
      this.c = paramView.findViewById(2131165459);
      this.d = ((ProportionalLayout)paramView.findViewById(2131165435));
      if (this.d != null)
      {
        ProportionalLayout localProportionalLayout = this.d;
        if (!b()) {
          break label145;
        }
        f1 = 0.5F;
        localProportionalLayout.setRatio(f1);
      }
    }
    for (;;)
    {
      if ((this.j) && (!b()))
      {
        this.l = ((TextView)paramView.findViewById(2131165357));
        this.m = ((TextView)paramView.findViewById(2131165631));
      }
      return;
      label145:
      f1 = 1.0F;
      break;
      this.e.setOnTouchListener(this.K.getTouchListener());
    }
  }
  
  private void a(ListAdapter paramListAdapter)
  {
    this.e.setAdapter(paramListAdapter);
    this.e.setOnItemClickListener(this);
  }
  
  private void a(com.viber.voip.contacts.b.d paramd)
  {
    a(ad.b, true);
    if (!paramd.a(new int[] { 0 })) {}
    ArrayList localArrayList1;
    int i1;
    for (boolean bool1 = true;; bool1 = false)
    {
      this.w = bool1;
      String str = paramd.a();
      if (TextUtils.isEmpty(this.v)) {
        this.v = str;
      }
      e(str);
      localArrayList1 = new ArrayList();
      i1 = 1;
      this.B.clear();
      if ((paramd.h() == null) || (paramd.h().size() == 0)) {
        break label334;
      }
      Iterator localIterator2 = paramd.h().iterator();
      while (localIterator2.hasNext())
      {
        com.viber.voip.contacts.b.i locali = (com.viber.voip.contacts.b.i)localIterator2.next();
        ai.a(getActivity(), this.B, paramd.a(locali).b(), locali.a(), paramd.a(locali).c(), paramd.a(locali).d(), paramd, false);
        i1 = 0;
      }
    }
    a(null, paramd);
    boolean bool2 = true;
    int i2 = i1;
    ArrayList localArrayList2;
    for (;;)
    {
      List localList = b(paramd);
      a(localList);
      a(paramd.o());
      if (!com.viber.voip.viberout.e.c().b()) {
        break label418;
      }
      localArrayList2 = new ArrayList();
      Iterator localIterator1 = localList.iterator();
      while (localIterator1.hasNext())
      {
        com.viber.voip.contacts.b.g localg = (com.viber.voip.contacts.b.g)localIterator1.next();
        ai.a(getActivity(), localArrayList2, localg.b(), localg.b(), localg.c(), localg.d(), paramd, true);
      }
      label334:
      if ((this.z) && (this.r != null))
      {
        ai.a(getActivity(), this.B, this.r, this.r, paramd, false);
        a(this.r, null);
        bool2 = true;
        i2 = 0;
      }
      else
      {
        h();
        i2 = i1;
        bool2 = false;
      }
    }
    localArrayList1.addAll(a(localArrayList2, com.viber.voip.contacts.d.b.a));
    label418:
    a(false, paramd);
    if ((i2 != 0) && (localArrayList1.size() > 0)) {}
    for (boolean bool3 = true;; bool3 = false)
    {
      a(localArrayList1, bool2, bool3, null, paramd);
      return;
    }
  }
  
  private void a(com.viber.voip.contacts.d.a parama)
  {
    i locali = new i(this, parama);
    a(parama.f, locali);
  }
  
  private void a(ad paramad, boolean paramBoolean)
  {
    switch (q.b[paramad.ordinal()])
    {
    }
    do
    {
      do
      {
        return;
        this.e.setVisibility(0);
        this.f.setVisibility(8);
      } while (this.F == null);
      this.F.setVisible(paramBoolean);
      return;
      this.e.setVisibility(8);
      this.f.setVisibility(8);
    } while (this.F == null);
    this.F.setVisible(false);
  }
  
  private void a(ae paramae)
  {
    List localList = e();
    if (localList.size() == 1)
    {
      b(paramae.a(((com.viber.voip.contacts.b.g)localList.get(0)).b()));
      return;
    }
    a(localList, new l(this, paramae));
  }
  
  private void a(ah paramah)
  {
    switch (q.a[paramah.ordinal()])
    {
    default: 
      throw new IllegalArgumentException("Unknown viber action: " + paramah);
    }
    List localList;
    for (com.viber.voip.contacts.d.b localb = com.viber.voip.contacts.d.b.a;; localb = com.viber.voip.contacts.d.b.b)
    {
      localList = a(this.B, localb);
      if (localList.size() != 1) {
        break;
      }
      a((com.viber.voip.contacts.d.a)localList.get(0));
      return;
    }
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = localList.iterator();
    while (localIterator.hasNext())
    {
      com.viber.voip.contacts.d.a locala = (com.viber.voip.contacts.d.a)localIterator.next();
      localArrayList.add(new com.viber.voip.contacts.b.b.a.e(locala.f, locala.b, locala.c));
    }
    a(localArrayList, new k(this, localb));
  }
  
  private void a(String paramString1, long paramLong1, long paramLong2, String paramString2)
  {
    if (paramLong1 > 0L)
    {
      this.o.a(paramLong1, paramLong2, paramString1, this.k, this);
      return;
    }
    this.o.a(paramString2, new r(this));
  }
  
  private void a(String paramString, com.viber.voip.contacts.b.d paramd)
  {
    PhoneControllerWrapper localPhoneControllerWrapper;
    ArrayList localArrayList;
    if (ViberApplication.preferences().b(com.viber.voip.settings.j.Y(), com.viber.voip.settings.j.Z()))
    {
      localPhoneControllerWrapper = ViberApplication.getInstance().getPhoneController(false);
      if ((localPhoneControllerWrapper.isInitialized()) && ((paramString != null) || (paramd != null)))
      {
        a(true);
        localArrayList = new ArrayList();
        if (paramd == null) {
          break label152;
        }
        Iterator localIterator = paramd.h().iterator();
        if (localIterator.hasNext())
        {
          paramString = ((com.viber.voip.contacts.b.i)localIterator.next()).a();
          localArrayList.add(paramString);
        }
      }
    }
    for (;;)
    {
      int i1 = localPhoneControllerWrapper.generateSequence();
      this.r = paramString;
      localPhoneControllerWrapper.getLastOnlineController().handleGetLastOnline((String[])localArrayList.toArray(new String[localArrayList.size()]), i1, 0, 0L);
      return;
      label152:
      localArrayList.add(paramString);
    }
  }
  
  private void a(String paramString, Runnable paramRunnable)
  {
    com.viber.voip.block.i.a(getActivity(), this.v, paramString, false, paramRunnable);
  }
  
  private void a(String paramString, boolean paramBoolean)
  {
    this.B.clear();
    if (paramBoolean)
    {
      ai.a(getActivity(), this.B, paramString, paramString, null, false);
      if (paramBoolean) {
        break label74;
      }
    }
    label74:
    for (boolean bool = true;; bool = false)
    {
      a(paramBoolean, bool, this.y, paramString, null);
      return;
      if (!com.viber.voip.viberout.e.c().b()) {
        break;
      }
      ai.a(getActivity(), this.B, paramString, paramString, null, true);
      break;
    }
  }
  
  private void a(List<com.viber.voip.contacts.b.g> paramList)
  {
    this.C = paramList;
  }
  
  private void a(List<com.viber.voip.contacts.b.g> paramList, com.viber.voip.util.ai paramai)
  {
    List localList = Collections.emptyList();
    com.viber.voip.util.w.a(getActivity(), paramList, localList, true, paramai);
  }
  
  private void a(List<com.viber.voip.contacts.d.a> paramList, boolean paramBoolean1, boolean paramBoolean2, String paramString, com.viber.voip.contacts.b.d paramd)
  {
    if (getActivity() == null) {
      return;
    }
    com.a.a.a.a locala = new com.a.a.a.a();
    if ((!gl.e(getActivity())) && (!this.j)) {
      locala.a(c(paramd));
    }
    for (;;)
    {
      locala.a(a(paramBoolean1, paramBoolean2, paramString, paramd, this.y));
      if (this.y) {
        locala.a(new com.viber.voip.contacts.a.i(getActivity(), this.D));
      }
      locala.a(new com.viber.voip.contacts.a.f(getActivity(), paramList));
      a(locala);
      return;
      c(paramd);
    }
  }
  
  private void a(Map<String, Boolean> paramMap)
  {
    this.E = paramMap;
    g();
  }
  
  private void a(boolean paramBoolean)
  {
    if (ViberApplication.preferences().b(com.viber.voip.settings.j.Y(), com.viber.voip.settings.j.Z()))
    {
      if (paramBoolean)
      {
        LastOnlineListener localLastOnlineListener = ViberApplication.getInstance().getPhoneController(false).getDelegatesManager().getLastOnlineListener();
        LastOnlineDelegate[] arrayOfLastOnlineDelegate = new LastOnlineDelegate[1];
        arrayOfLastOnlineDelegate[0] = this.T;
        localLastOnlineListener.registerDelegate(arrayOfLastOnlineDelegate);
      }
    }
    else {
      return;
    }
    ViberApplication.getInstance().getPhoneController(false).getDelegatesManager().getLastOnlineListener().removeDelegate(this.T);
  }
  
  private void a(boolean paramBoolean, com.viber.voip.contacts.b.b paramb)
  {
    if (paramBoolean)
    {
      if (this.F != null) {
        this.F.setVisible(false);
      }
      return;
    }
    if (this.F != null) {
      this.F.setVisible(true);
    }
    this.I = paramb.d();
    f();
  }
  
  private void a(boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3, String paramString, com.viber.voip.contacts.b.d paramd)
  {
    int i1 = 4;
    int i2 = 1;
    Object localObject1 = null;
    int i3;
    int i4;
    label41:
    ContactDetailsButtonsLayout localContactDetailsButtonsLayout;
    Object localObject2;
    Object localObject3;
    if ((!paramBoolean1) && (!paramBoolean2))
    {
      i3 = i2;
      View localView1 = this.h.findViewById(2131165655);
      if (i3 == 0) {
        break label127;
      }
      i4 = 0;
      localView1.setVisibility(i4);
      View localView2 = this.h.findViewById(2131165649);
      if (paramBoolean3) {
        i1 = 0;
      }
      localView2.setVisibility(i1);
      localContactDetailsButtonsLayout = (ContactDetailsButtonsLayout)this.h.findViewById(2131165648);
      if (i3 == 0) {
        break label134;
      }
      localContactDetailsButtonsLayout.a(0, 0, 0, 0);
      localObject2 = null;
      localObject3 = null;
    }
    for (;;)
    {
      localContactDetailsButtonsLayout.a((View.OnClickListener)localObject3, (View.OnClickListener)localObject1, (View.OnClickListener)localObject2);
      return;
      i3 = 0;
      break;
      label127:
      i4 = i1;
      break label41;
      label134:
      if (paramBoolean1)
      {
        localContactDetailsButtonsLayout.a(2, 2131494138, 2131494139, 0);
        localObject3 = new y(this);
        localObject1 = new z(this);
        localObject2 = null;
      }
      else
      {
        if (com.viber.voip.viberout.e.c().b()) {
          i2 = 2;
        }
        localContactDetailsButtonsLayout.a(i2, 2131493627, 2131493628, 2131493626);
        b localb = new b(this, paramString, paramd);
        localObject2 = new d(this, paramString, paramd);
        localObject3 = localb;
        localObject1 = localObject2;
      }
    }
  }
  
  private boolean a(List<com.viber.voip.contacts.b.g> paramList, String paramString)
  {
    Iterator localIterator = paramList.iterator();
    while (localIterator.hasNext()) {
      if (paramString.equals(PhoneNumberUtils.stripSeparators(((com.viber.voip.contacts.b.g)localIterator.next()).b()))) {
        return true;
      }
    }
    return false;
  }
  
  private List<com.viber.voip.contacts.b.g> b(com.viber.voip.contacts.b.d paramd)
  {
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = paramd.m().iterator();
    while (localIterator.hasNext())
    {
      com.viber.voip.contacts.b.g localg = (com.viber.voip.contacts.b.g)localIterator.next();
      if ((localg.a().equals("vnd.android.cursor.item/phone_v2")) && (!a(localArrayList, PhoneNumberUtils.stripSeparators(localg.b())))) {
        localArrayList.add(localg);
      }
    }
    return localArrayList;
  }
  
  private void b(Intent paramIntent)
  {
    gn.a(getActivity(), paramIntent, this.z, this.J);
  }
  
  private void b(com.viber.voip.contacts.d.a parama)
  {
    if (parama.d != null) {
      b(parama.d);
    }
  }
  
  private void b(String paramString)
  {
    if (getActivity() != null) {
      d(paramString);
    }
    Boolean localBoolean = ViberApplication.getInstance().getCachedUnknownNumberInfo(paramString);
    if (localBoolean != null)
    {
      this.z = localBoolean.booleanValue();
      a("checkUnknownContact number:" + paramString + " in cache, is viber:" + this.z);
      if (getActivity() != null)
      {
        a(paramString, this.z);
        if (localBoolean.booleanValue()) {
          a(paramString, null);
        }
      }
      return;
    }
    this.n.postDelayed(this.R, 5000L);
    c(paramString);
  }
  
  private void b(boolean paramBoolean)
  {
    this.I = paramBoolean;
    this.n.removeCallbacks(this.S);
    Handler localHandler = this.n;
    Runnable localRunnable = this.S;
    if (this.j) {}
    for (long l1 = 0L;; l1 = 1000L)
    {
      localHandler.postDelayed(localRunnable, l1);
      return;
    }
  }
  
  private boolean b()
  {
    return getActivity() instanceof ContactDetailsDialogActivity;
  }
  
  private View c(com.viber.voip.contacts.b.d paramd)
  {
    if ((ao.b(getActivity())) && (!this.j))
    {
      this.b = ((ImageView)this.g.findViewById(2131165458));
      this.c = this.g.findViewById(2131165459);
      this.d = ((ProportionalLayout)this.g.findViewById(2131165435));
    }
    if ((this.g != null) && (!b())) {
      this.g.setVisibility(0);
    }
    if ((this.j) && (!gl.e(getActivity()))) {
      this.b.setOnClickListener(null);
    }
    for (;;)
    {
      this.M.a(paramd, this.u, this.b, this.N, this.O);
      return this.g;
      if (this.b != null)
      {
        UserDetailPhotoSetter localUserDetailPhotoSetter = this.K;
        FragmentActivity localFragmentActivity = getActivity();
        ImageView localImageView = this.b;
        boolean bool1 = b();
        boolean bool2 = false;
        if (!bool1)
        {
          boolean bool3 = this.j;
          bool2 = false;
          if (bool3) {
            bool2 = true;
          }
        }
        this.L = localUserDetailPhotoSetter.setupContactDetailsPhotoForClick(localFragmentActivity, localImageView, bool2, this.d, this.u, true);
        this.b.setOnClickListener(this.L);
      }
    }
  }
  
  private void c()
  {
    com.viber.voip.e.u localu = ViberApplication.getInstance().getPhoneApp().a();
    if (localu.e() == this.s) {
      localu.d();
    }
  }
  
  private void c(String paramString)
  {
    a("checkUnknownContact start");
    dc.a(dk.c).post(new t(this, paramString));
  }
  
  private void c(Set<String> paramSet, boolean paramBoolean)
  {
    Iterator localIterator = paramSet.iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      if (this.E.containsKey(str)) {
        this.E.put(str, Boolean.valueOf(paramBoolean));
      }
    }
    runOnUiThread(new p(this));
  }
  
  private void d()
  {
    if (((this.h == null) || (this.h.findViewById(2131165655).getVisibility() == 0)) && (ft.c(getActivity()))) {
      c(this.r);
    }
  }
  
  private void d(String paramString)
  {
    a(ad.b, false);
    this.w = true;
    ArrayList localArrayList = new ArrayList();
    this.B.clear();
    if (com.viber.voip.viberout.e.c().b()) {
      ai.a(getActivity(), this.B, paramString, paramString, null, true);
    }
    boolean bool = com.viber.voip.viberout.e.c().b();
    if (bool) {
      localArrayList.addAll(a(this.B, com.viber.voip.contacts.d.b.a));
    }
    a(Collections.singletonList(new com.viber.voip.contacts.b.b.a.e(paramString, "0")));
    g(paramString);
    if ((getActivity() == null) || (bool)) {}
    for (;;)
    {
      a(paramString, null);
      a(localArrayList, false, false, paramString, null);
      if (this.H != null) {
        onPrepareOptionsMenu(this.H);
      }
      return;
      ai.a(getActivity(), localArrayList, new x(this));
    }
  }
  
  private List<com.viber.voip.contacts.b.g> e()
  {
    return this.C;
  }
  
  private void e(String paramString)
  {
    if (this.l != null)
    {
      if (TextUtils.isEmpty(paramString))
      {
        this.l.setVisibility(8);
        return;
      }
      this.l.setVisibility(0);
      this.l.setText(paramString);
      return;
    }
    gl.a(getSherlockActivity(), paramString);
  }
  
  private void f()
  {
    int i1;
    MenuItem localMenuItem2;
    if (this.F != null)
    {
      MenuItem localMenuItem1 = this.F;
      if (!this.I) {
        break label60;
      }
      i1 = 2130838228;
      localMenuItem1.setIcon(i1);
      localMenuItem2 = this.F;
      if (!this.I) {
        break label67;
      }
    }
    label60:
    label67:
    for (int i2 = 2131493702;; i2 = 2131493618)
    {
      localMenuItem2.setTitle(i2);
      return;
      i1 = 2130838229;
      break;
    }
  }
  
  private void f(String paramString)
  {
    if (this.m != null)
    {
      if (TextUtils.isEmpty(paramString))
      {
        this.m.setVisibility(4);
        return;
      }
      this.m.setVisibility(0);
      this.m.setText(paramString);
      return;
    }
    gl.a(getSherlockActivity(), paramString, b());
  }
  
  private void g()
  {
    boolean bool;
    MenuItem localMenuItem;
    if (this.G != null)
    {
      if (this.E.isEmpty()) {
        break label72;
      }
      bool = true;
      this.G.setVisible(bool);
      if (bool)
      {
        localMenuItem = this.G;
        if (this.E.containsValue(Boolean.valueOf(false))) {
          break label77;
        }
      }
    }
    label72:
    label77:
    for (int i1 = 2131494453;; i1 = 2131494452)
    {
      localMenuItem.setTitle(i1);
      return;
      bool = false;
      break;
    }
  }
  
  private void g(String paramString)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put(paramString, Boolean.valueOf(com.viber.voip.block.i.a(paramString)));
    a(localHashMap);
  }
  
  private void h()
  {
    f(null);
  }
  
  public void a()
  {
    a(this.q, this.s, this.t, this.r);
  }
  
  public void a(Intent paramIntent)
  {
    int i1 = 0;
    String str1 = paramIntent.getAction();
    if (str1 != null) {
      if ((str1.equals("com.viber.voip.action.VIEW_CONTACT")) || (str1.equals("com.viber.voip.action.VIEW_CONTACT_DIALOG"))) {
        break label199;
      }
    }
    label199:
    for (boolean bool = true;; bool = false)
    {
      this.y = bool;
      this.v = paramIntent.getStringExtra("name");
      this.q = paramIntent.getStringExtra("lookup_key");
      this.s = paramIntent.getLongExtra("contact_id", -1L);
      this.t = paramIntent.getLongExtra("native_contact_id", -1L);
      this.r = paramIntent.getStringExtra("con_number");
      this.u = ((Uri)paramIntent.getParcelableExtra("photo_uri"));
      this.z = paramIntent.getBooleanExtra("is_viber", false);
      this.A = paramIntent.getBooleanExtra("unknown", false);
      this.J = new com.viber.voip.a.k(paramIntent.getStringExtra("prev_action"));
      this.D = new ArrayList();
      if ((!TextUtils.isEmpty(this.r)) || (this.s != -1L)) {
        break;
      }
      this.Q.e();
      return;
    }
    if (paramIntent.getParcelableArrayExtra("call_entities") != null)
    {
      Parcelable[] arrayOfParcelable = paramIntent.getParcelableArrayExtra("call_entities");
      int i2 = arrayOfParcelable.length;
      while (i1 < i2)
      {
        Parcelable localParcelable = arrayOfParcelable[i1];
        this.D.add((CallEntity)localParcelable);
        i1++;
      }
    }
    if (!TextUtils.isEmpty(this.v)) {}
    for (String str2 = this.v;; str2 = this.r)
    {
      e(str2);
      if (this.b != null)
      {
        this.M.a(null, this.u, this.b, this.N);
        String str3 = paramIntent.getStringExtra("viber_number");
        f(null);
        if (str3 != null) {
          a(str3, null);
        }
      }
      if ((!TextUtils.isEmpty(this.r)) && (this.A)) {
        b(this.r);
      }
      fz.a().a(this.s, true);
      a();
      this.p.a(this);
      return;
    }
  }
  
  public void a(View.OnClickListener paramOnClickListener, boolean paramBoolean)
  {
    if (b()) {}
    label68:
    do
    {
      return;
      if (this.c != null)
      {
        View localView1 = this.c;
        boolean bool;
        View localView2;
        int i1;
        if (paramOnClickListener != null)
        {
          bool = true;
          localView1.setClickable(bool);
          this.c.setOnClickListener(paramOnClickListener);
          localView2 = this.c;
          i1 = 0;
          if (paramOnClickListener == null) {
            break label68;
          }
        }
        for (;;)
        {
          localView2.setVisibility(i1);
          return;
          bool = false;
          break;
          i1 = 4;
        }
      }
    } while ((!(this.b instanceof AvatarView)) || (paramBoolean));
    this.b.setOnClickListener(paramOnClickListener);
  }
  
  protected void a(String paramString)
  {
    ViberApplication.log(3, a, paramString);
  }
  
  public void a(Set<String> paramSet, boolean paramBoolean)
  {
    c(paramSet, true);
  }
  
  public void a(boolean paramBoolean, long paramLong, String paramString, com.viber.voip.contacts.b.d paramd)
  {
    if (getActivity() == null) {}
    do
    {
      return;
      if (paramd == null) {
        break;
      }
      this.s = paramd.getId();
      this.q = paramd.g();
      this.u = paramd.b();
      if (getActivity() != null) {
        getActivity().getIntent().putExtra("photo_uri", this.u);
      }
      a(paramd);
      if (!this.z) {
        this.z = paramd.e();
      }
    } while (this.H == null);
    onPrepareOptionsMenu(this.H);
    return;
    this.Q.e();
  }
  
  public void b(Set<String> paramSet, boolean paramBoolean)
  {
    c(paramSet, false);
  }
  
  public boolean onActivityBackPressed()
  {
    return aa.a(this.i);
  }
  
  public void onAttach(Activity paramActivity)
  {
    super.onAttach(paramActivity);
    if (!(paramActivity instanceof ac)) {
      throw new ClassCastException("Activity must implement fragment's callbacks.");
    }
    this.Q = ((ac)paramActivity);
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.j = ViberApplication.isTablet();
    if ((b()) || (!this.j)) {}
    for (boolean bool = true;; bool = false)
    {
      this.k = bool;
      ViberApplication localViberApplication = ViberApplication.getInstance();
      this.M = com.viber.voip.util.b.w.a(localViberApplication);
      this.N = com.viber.voip.util.b.x.c(localViberApplication);
      this.n = dc.a(dk.a);
      this.o = localViberApplication.getContactManager();
      this.p = new com.viber.voip.contacts.c.c.a.g();
      bc.a().a(this.J.a());
      c();
      setHasOptionsMenu(true);
      return;
    }
  }
  
  public void onCreateOptionsMenu(Menu paramMenu, MenuInflater paramMenuInflater)
  {
    this.H = paramMenu;
    paramMenuInflater.inflate(2131755020, paramMenu);
    if ((!b()) && (this.j) && (!gl.e(getActivity())) && (getResources().getBoolean(2131230733)))
    {
      paramMenu.findItem(2131166303).setShowAsAction(0);
      paramMenu.findItem(2131166304).setShowAsAction(0);
    }
    if (dj.d())
    {
      paramMenu.removeItem(2131166304);
      paramMenu.removeItem(2131166306);
      paramMenu.removeItem(2131166305);
      paramMenu.removeItem(2131166307);
    }
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    View localView = paramLayoutInflater.inflate(2130903153, paramViewGroup, false);
    this.g = paramLayoutInflater.inflate(2130903158, null);
    this.h = paramLayoutInflater.inflate(2130903159, null);
    this.i = new aa(getActivity(), (ViewGroup)getActivity().getWindow().getDecorView(), (ViewGroup)localView.findViewById(2131165630));
    a(localView);
    a(ad.a, false);
    return localView;
  }
  
  public void onDetach()
  {
    super.onDetach();
    this.Q = P;
  }
  
  public void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    ListAdapter localListAdapter;
    int i1;
    if (this.y)
    {
      localListAdapter = ((com.a.a.a.a)this.e.getAdapter()).a(paramInt);
      if (!(localListAdapter instanceof com.viber.voip.contacts.a.f)) {
        break label301;
      }
      i1 = -2 + (paramInt - this.D.size());
      if ((i1 < 0) || (i1 >= localListAdapter.getCount())) {
        break label301;
      }
    }
    label147:
    label288:
    label295:
    label301:
    for (com.viber.voip.contacts.d.a locala2 = (com.viber.voip.contacts.d.a)localListAdapter.getItem(i1);; locala2 = null)
    {
      com.viber.voip.contacts.d.a locala1 = locala2;
      for (;;)
      {
        boolean bool2;
        if (locala1 != null)
        {
          if (com.viber.voip.viberout.e.c().b())
          {
            if ((this.x) || (!this.w)) {
              break label226;
            }
            this.x = true;
            if (this.s > 0L) {
              this.o.a(this.s, this.q, 0, null);
            }
            ViberOutDialogs.a(true);
          }
          boolean bool1 = com.viber.voip.contacts.d.b.c.equals(locala1.a);
          bool2 = com.viber.voip.contacts.d.b.a.equals(locala1.a);
          if (!bool1) {
            break label233;
          }
          a(ae.a);
        }
        label226:
        label233:
        do
        {
          return;
          if (!(this.e.getAdapter().getItem(paramInt) instanceof com.viber.voip.contacts.d.a)) {
            break label295;
          }
          locala1 = (com.viber.voip.contacts.d.a)this.e.getAdapter().getItem(paramInt);
          break;
          ViberOutDialogs.a(false);
          break label147;
          if (!bool2) {
            break label288;
          }
        } while (!gn.a(getActivity()));
        com.viber.voip.billing.ae localae = new com.viber.voip.billing.ae(locala1.d.getData().getSchemeSpecificPart());
        a(localae.a(), new f(this, localae));
        return;
        b(locala1);
        return;
        locala1 = null;
      }
    }
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    boolean bool1 = true;
    switch (paramMenuItem.getItemId())
    {
    default: 
      bool1 = super.onOptionsItemSelected(paramMenuItem);
    case 2131166304: 
      do
      {
        return bool1;
      } while (TextUtils.isEmpty(this.q));
      bc.a().a(this.J.i());
      bp.a(getActivity(), this.q);
      return bool1;
    case 2131166305: 
      bc.a().a(this.J.j());
      gv.b(getActivity(), this.r);
      return bool1;
    case 2131166306: 
      if (this.y)
      {
        ViberApplication.getInstance().getRecentCallsManager().b(this.D, new g(this));
        return bool1;
      }
      bp.a(getActivity(), this.s, this.q, this.v, new h(this));
      return bool1;
    case 2131166303: 
      if (!this.I) {
        bc.a().a(this.J.g());
      }
      for (;;)
      {
        boolean bool2 = this.I;
        boolean bool3 = false;
        if (!bool2) {
          bool3 = bool1;
        }
        b(bool3);
        f();
        return bool1;
        bc.a().a(this.J.h());
      }
    }
    bp.a(getActivity(), this.v, this.E, false);
    return bool1;
  }
  
  public void onPrepareOptionsMenu(Menu paramMenu)
  {
    boolean bool = true;
    MenuItem localMenuItem1 = paramMenu.findItem(2131166305);
    MenuItem localMenuItem2 = paramMenu.findItem(2131166303);
    MenuItem localMenuItem3 = paramMenu.findItem(2131166304);
    MenuItem localMenuItem4 = paramMenu.findItem(2131166306);
    if (this.s != -1L)
    {
      if (localMenuItem1 != null) {
        localMenuItem1.setVisible(false);
      }
      if (localMenuItem2 != null) {
        localMenuItem2.setVisible(bool);
      }
      if (localMenuItem3 != null) {
        localMenuItem3.setVisible(bool);
      }
      if (localMenuItem4 != null)
      {
        if (this.y) {
          break label152;
        }
        localMenuItem4.setVisible(bool);
      }
    }
    for (;;)
    {
      this.F = paramMenu.findItem(2131166303);
      f();
      this.G = paramMenu.findItem(2131166307);
      g();
      return;
      label152:
      bool = false;
      break;
      if (localMenuItem1 != null) {
        localMenuItem1.setVisible(bool);
      }
      if (localMenuItem2 != null) {
        localMenuItem2.setVisible(false);
      }
      if (localMenuItem3 != null) {
        localMenuItem3.setVisible(false);
      }
      if (localMenuItem4 != null) {
        localMenuItem4.setVisible(false);
      }
    }
  }
  
  public void onStart()
  {
    com.viber.voip.viberout.e.c().a(com.viber.voip.viberout.promotion.a.f);
    super.onStart();
  }
  
  public void onStop()
  {
    this.o.a(this);
    this.p.b(this);
    a(false);
    aa.a(this.i);
    super.onStop();
  }
  
  protected void runOnUiThread(Runnable paramRunnable)
  {
    FragmentActivity localFragmentActivity = getActivity();
    if (localFragmentActivity != null) {
      localFragmentActivity.runOnUiThread(paramRunnable);
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.contacts.ui.ContactDetailsFragment
 * JD-Core Version:    0.7.0.1
 */