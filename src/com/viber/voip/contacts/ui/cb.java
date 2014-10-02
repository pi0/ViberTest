package com.viber.voip.contacts.ui;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.net.Uri;
import android.os.Handler;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.view.View;
import com.viber.jni.GroupUserInfo;
import com.viber.voip.ViberApplication;
import com.viber.voip.a.a;
import com.viber.voip.a.u;
import com.viber.voip.dk;
import com.viber.voip.messages.controller.GroupController;
import com.viber.voip.messages.controller.GroupController.GroupMember;
import com.viber.voip.messages.j;
import com.viber.voip.registration.cp;
import com.viber.voip.util.at;
import com.viber.voip.util.ba;
import com.viber.voip.util.hd;
import com.viber.voip.util.w;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class cb
  implements com.viber.voip.messages.controller.dc
{
  private static final String d = cb.class.getSimpleName();
  private static boolean j;
  protected FragmentActivity a;
  protected Map<String, cn> b = new HashMap();
  protected Map<String, cn> c = new HashMap();
  private int e = b();
  private co f;
  private Handler g = com.viber.voip.dc.a(dk.a);
  private int h;
  private long i;
  private Runnable k = new ch(this);
  
  public cb(FragmentActivity paramFragmentActivity, co paramco)
  {
    this.a = paramFragmentActivity;
    this.f = paramco;
    j = paramFragmentActivity.getIntent().getBooleanExtra("is_api_1to1_call", false);
    this.e = b();
    com.viber.voip.messages.controller.c.e.a().a(this);
  }
  
  public static int a()
  {
    if (j) {
      return 2;
    }
    return 100;
  }
  
  private static String a(Context paramContext, int paramInt1, int paramInt2, String[] paramArrayOfString)
  {
    if (paramArrayOfString.length == 0) {
      return "";
    }
    if (paramArrayOfString.length == 1)
    {
      Object[] arrayOfObject2 = new Object[1];
      arrayOfObject2[0] = paramArrayOfString[0];
      return paramContext.getString(paramInt1, arrayOfObject2);
    }
    StringBuilder localStringBuilder = new StringBuilder();
    int m = -1 + paramArrayOfString.length;
    for (int n = 0; n < m; n++)
    {
      localStringBuilder.append(paramArrayOfString[n]);
      localStringBuilder.append(", ");
    }
    Object[] arrayOfObject1 = new Object[2];
    arrayOfObject1[0] = localStringBuilder.substring(0, -2 + localStringBuilder.length());
    arrayOfObject1[1] = paramArrayOfString[m];
    return paramContext.getString(paramInt2, arrayOfObject1);
  }
  
  private void a(Activity paramActivity, Map<String, Integer> paramMap, Map<String, String> paramMap1, boolean paramBoolean, DialogInterface.OnClickListener paramOnClickListener)
  {
    HashMap localHashMap1 = new HashMap();
    HashMap localHashMap2 = new HashMap();
    HashMap localHashMap3 = new HashMap();
    if (paramBoolean)
    {
      Iterator localIterator2 = paramMap.entrySet().iterator();
      while (localIterator2.hasNext())
      {
        Map.Entry localEntry2 = (Map.Entry)localIterator2.next();
        switch (((Integer)localEntry2.getValue()).intValue())
        {
        default: 
          localHashMap3.put(localEntry2.getKey(), paramMap1.get(localEntry2.getKey()));
          break;
        case 2: 
          localHashMap2.put(localEntry2.getKey(), paramMap1.get(localEntry2.getKey()));
        }
      }
    }
    Iterator localIterator1 = paramMap.entrySet().iterator();
    while (localIterator1.hasNext())
    {
      Map.Entry localEntry1 = (Map.Entry)localIterator1.next();
      switch (((Integer)localEntry1.getValue()).intValue())
      {
      default: 
        localHashMap3.put(localEntry1.getKey(), paramMap1.get(localEntry1.getKey()));
        break;
      case 3: 
        localHashMap1.put(localEntry1.getKey(), paramMap1.get(localEntry1.getKey()));
        break;
      case 4: 
        localHashMap2.put(localEntry1.getKey(), paramMap1.get(localEntry1.getKey()));
      }
    }
    a(paramActivity, localHashMap1, localHashMap2, localHashMap3, paramOnClickListener);
  }
  
  private void a(String paramString, int paramInt)
  {
    FragmentManager localFragmentManager = this.a.getSupportFragmentManager();
    FragmentTransaction localFragmentTransaction = localFragmentManager.beginTransaction();
    Fragment localFragment = localFragmentManager.findFragmentByTag(paramString);
    if (localFragment != null) {
      localFragmentTransaction.remove(localFragment);
    }
    if (paramString.equals("loading_dialog")) {
      com.viber.voip.widget.e.a(2131493676, false).show(localFragmentTransaction, paramString);
    }
    do
    {
      return;
      if (paramString.equals("add_participants_dialog"))
      {
        com.viber.voip.widget.e.a(2131494087, false).show(localFragmentTransaction, paramString);
        return;
      }
    } while (!paramString.equals("check_number_dialog"));
    com.viber.voip.widget.e.a(2131494088, false).show(localFragmentTransaction, paramString);
  }
  
  private void a(String paramString, long paramLong)
  {
    Intent localIntent = j.a(0L, paramLong, "", 1, 0L, 0L, "");
    ((bc)this.a).a(localIntent);
  }
  
  private void a(String paramString1, String paramString2, Uri paramUri)
  {
    b("open1to1ConversationAction number = " + paramString1 + ", name = " + paramString2 + ", photoUri = " + paramUri);
    Intent localIntent = j.a(paramString1, 0L, 0L, paramString2, paramUri);
    ((bc)this.a).a(localIntent);
  }
  
  private boolean a(com.viber.voip.contacts.b.e parame, String paramString, boolean paramBoolean)
  {
    String str1 = hd.a(ViberApplication.getInstance(), paramString, paramString);
    String str2 = ViberApplication.getInstance().getRegistrationValues().f();
    if ((str1 != null) && (str1.equals(str2)))
    {
      k();
      return false;
    }
    this.b.put(paramString, new cn(this, parame, null).a(true));
    this.f.a(true, parame, paramString, paramBoolean);
    return true;
  }
  
  public static int b()
  {
    if (j) {
      return 1;
    }
    return 99;
  }
  
  private void b(String paramString)
  {
    ViberApplication.log(3, d, paramString);
  }
  
  private void b(Map<String, Integer> paramMap, boolean paramBoolean)
  {
    this.b.clear();
    this.c.clear();
    Iterator localIterator = paramMap.entrySet().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      if (((Integer)localEntry.getValue()).intValue() == 0)
      {
        Map localMap = this.b;
        Object localObject = localEntry.getKey();
        cn localcn = new cn(this).a(true);
        if (!paramBoolean) {}
        for (boolean bool = true;; bool = false)
        {
          localMap.put(localObject, localcn.b(bool).c(true));
          this.c.put(localEntry.getKey(), new cn(this));
          break;
        }
      }
    }
  }
  
  private void c(String paramString)
  {
    a(paramString, 0);
  }
  
  private void d(String paramString)
  {
    FragmentManager localFragmentManager = this.a.getSupportFragmentManager();
    FragmentTransaction localFragmentTransaction = localFragmentManager.beginTransaction();
    Fragment localFragment = localFragmentManager.findFragmentByTag(paramString);
    if (localFragment != null)
    {
      localFragmentTransaction.remove(localFragment);
      localFragmentTransaction.commit();
    }
  }
  
  public Map<GroupController.GroupMember, cn> a(boolean paramBoolean)
  {
    HashMap localHashMap = new HashMap();
    Iterator localIterator = this.b.entrySet().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      if ((!paramBoolean) || ((paramBoolean) && (!((cn)localEntry.getValue()).c)))
      {
        GroupController.GroupMember localGroupMember = new GroupController.GroupMember();
        localGroupMember.a = new GroupUserInfo((String)localEntry.getKey(), ((cn)localEntry.getValue()).a(), null);
        long l;
        if (cn.a((cn)localEntry.getValue()) != null)
        {
          l = cn.a((cn)localEntry.getValue()).c();
          label148:
          localGroupMember.b = l;
          if (cn.a((cn)localEntry.getValue()) == null) {
            break label225;
          }
        }
        label225:
        for (Uri localUri = cn.a((cn)localEntry.getValue()).b();; localUri = null)
        {
          localGroupMember.c = localUri;
          localHashMap.put(localGroupMember, localEntry.getValue());
          break;
          l = -1L;
          break label148;
        }
      }
    }
    return localHashMap;
  }
  
  public void a(int paramInt) {}
  
  public void a(int paramInt1, int paramInt2)
  {
    d("loading_dialog");
    StringBuilder localStringBuilder = new StringBuilder().append("onGroupCreateError status:").append(paramInt2).append(",mAddedNumbers:");
    int m;
    HashMap localHashMap1;
    HashMap localHashMap2;
    Iterator localIterator;
    if (this.b.isEmpty())
    {
      m = 0;
      b(m);
      if ((1 == paramInt2) && (!this.b.isEmpty()))
      {
        localHashMap1 = new HashMap();
        localHashMap2 = new HashMap();
        localIterator = this.b.entrySet().iterator();
      }
    }
    else
    {
      for (;;)
      {
        label109:
        if (!localIterator.hasNext()) {
          break label349;
        }
        Map.Entry localEntry = (Map.Entry)localIterator.next();
        GroupController.GroupMember localGroupMember = new GroupController.GroupMember();
        localGroupMember.a = new GroupUserInfo((String)localEntry.getKey(), ((cn)localEntry.getValue()).a(), null);
        long l;
        if (cn.a((cn)localEntry.getValue()) != null)
        {
          l = cn.a((cn)localEntry.getValue()).getId();
          label212:
          localGroupMember.b = l;
          if (cn.a((cn)localEntry.getValue()) == null) {
            break label320;
          }
        }
        label320:
        for (Uri localUri = cn.a((cn)localEntry.getValue()).b();; localUri = null)
        {
          localGroupMember.c = localUri;
          if (((cn)localEntry.getValue()).c) {
            break label326;
          }
          localHashMap1.put(localGroupMember, localEntry.getValue());
          break label109;
          m = this.b.size();
          break;
          l = -1L;
          break label212;
        }
        label326:
        localHashMap2.put(localGroupMember.a.phoneNumber, Integer.valueOf(1));
      }
      label349:
      a(this.a, localHashMap2, true, new cg(this, localHashMap1));
      return;
    }
    at.a(this.a, 2131493805, 2131494474, null);
  }
  
  public void a(int paramInt, long paramLong1, long paramLong2, Map<String, Integer> paramMap)
  {
    if (this.h != paramInt) {
      return;
    }
    a(this.a, paramMap, true, new cf(this, paramLong1));
  }
  
  public void a(int paramInt, long paramLong, Map<String, Integer> paramMap)
  {
    if (this.h != paramInt) {
      return;
    }
    d("add_participants_dialog");
    this.g.removeCallbacks(this.k);
    a(this.a, paramMap, false, new ci(this, paramLong));
  }
  
  protected void a(Activity paramActivity, Map<String, String> paramMap1, Map<String, String> paramMap2, Map<String, String> paramMap3, DialogInterface.OnClickListener paramOnClickListener)
  {
    ba localba = new ba(paramActivity);
    String str2;
    if (paramMap2.size() > 0)
    {
      str2 = a(paramActivity, 2131493778, 2131493779, (String[])paramMap2.keySet().toArray(new String[paramMap2.keySet().size()]));
      if (paramMap2.size() != 1) {
        break label225;
      }
      com.viber.voip.a.bc localbc2 = com.viber.voip.a.bc.a();
      u localu2 = a.z;
      a.z.getClass();
      localbc2.a(localu2.b("711b"));
    }
    for (;;)
    {
      localba.a(new AlertDialog.Builder(paramActivity).setTitle(2131493777).setMessage(str2).setOnCancelListener(new ce(this, paramMap2)), 17039370);
      if (paramMap3.size() > 0)
      {
        String str1 = a(paramActivity, 2131493781, 2131493782, (String[])paramMap3.keySet().toArray(new String[paramMap3.keySet().size()]));
        localba.a(new AlertDialog.Builder(paramActivity).setTitle(2131493780).setMessage(str1), 17039370);
      }
      localba.a(paramOnClickListener);
      return;
      label225:
      if (paramMap2.size() > 1)
      {
        com.viber.voip.a.bc localbc1 = com.viber.voip.a.bc.a();
        u localu1 = a.z;
        a.z.getClass();
        localbc1.a(localu1.b("711"));
      }
    }
  }
  
  protected void a(Activity paramActivity, Map<String, Integer> paramMap, boolean paramBoolean, DialogInterface.OnClickListener paramOnClickListener)
  {
    cd localcd;
    Iterator localIterator;
    if ((paramMap == null) || ((paramMap != null) && (paramMap.size() > 0)))
    {
      localcd = new cd(this, new HashMap(), paramMap, paramActivity, paramBoolean, paramOnClickListener);
      localIterator = paramMap.keySet().iterator();
    }
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      w.a(str, str, localcd);
      continue;
      a(paramActivity, paramBoolean, paramOnClickListener);
    }
  }
  
  protected void a(Activity paramActivity, boolean paramBoolean, DialogInterface.OnClickListener paramOnClickListener)
  {
    if (paramOnClickListener != null) {
      paramOnClickListener.onClick(null, -1);
    }
  }
  
  public void a(com.viber.voip.contacts.b.e parame, String paramString)
  {
    this.b.remove(paramString);
    this.f.a(false, parame, paramString, false);
  }
  
  public void a(String paramString, View paramView)
  {
    for (;;)
    {
      try
      {
        boolean bool = a(paramString);
        if (bool) {
          return;
        }
        String str1 = hd.a(ViberApplication.getInstance(), paramString, paramString);
        String str2 = ViberApplication.getInstance().getRegistrationValues().f();
        if ((str1 != null) && (str1.equals(str2)))
        {
          k();
          continue;
        }
        paramView.setEnabled(false);
      }
      finally {}
      c("check_number_dialog");
      hd.a(ViberApplication.getInstance(), paramString, new ck(this, paramView));
    }
  }
  
  public void a(Map<String, Integer> paramMap, boolean paramBoolean)
  {
    Iterator localIterator = paramMap.entrySet().iterator();
    int m = 0;
    if (localIterator.hasNext()) {
      if (((Integer)((Map.Entry)localIterator.next()).getValue()).intValue() != 0) {
        break label89;
      }
    }
    label89:
    for (int n = m + 1;; n = m)
    {
      m = n;
      break;
      this.e = (b() - m);
      if (this.e < 0) {
        this.e = 0;
      }
      b(paramMap, paramBoolean);
      return;
    }
  }
  
  public void a(boolean paramBoolean1, com.viber.voip.contacts.b.e parame, boolean paramBoolean2)
  {
    HashSet localHashSet = new HashSet();
    Iterator localIterator = parame.h().iterator();
    while (localIterator.hasNext()) {
      localHashSet.add(new com.viber.voip.contacts.b.b.a.e(((com.viber.voip.contacts.b.i)localIterator.next()).a(), "0"));
    }
    if ((paramBoolean1) && (i() >= this.e)) {}
    while (h().containsAll(localHashSet)) {
      return;
    }
    w.a(this.a, localHashSet, this.b.keySet(), new cc(this, paramBoolean1, parame, paramBoolean2));
  }
  
  public boolean a(String paramString)
  {
    return this.b.keySet().contains(paramString);
  }
  
  public GroupController.GroupMember[] a(long paramLong)
  {
    if (paramLong > 0L) {}
    for (boolean bool = true;; bool = false) {
      return (GroupController.GroupMember[])a(bool).keySet().toArray(new GroupController.GroupMember[0]);
    }
  }
  
  public int b(boolean paramBoolean)
  {
    Iterator localIterator = this.b.entrySet().iterator();
    int m = 0;
    if (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      if ((!((cn)localEntry.getValue()).a) || ((!paramBoolean) && (((cn)localEntry.getValue()).b))) {
        break label86;
      }
    }
    label86:
    for (int n = m + 1;; n = m)
    {
      m = n;
      break;
      return m;
    }
  }
  
  public void b(long paramLong) {}
  
  public void c()
  {
    com.viber.voip.messages.controller.c.e.a().b(this);
  }
  
  public void c(long paramLong)
  {
    boolean bool;
    GroupController.GroupMember[] arrayOfGroupMember;
    com.viber.voip.messages.i locali;
    if (paramLong > 0L)
    {
      bool = true;
      Map localMap = a(bool);
      arrayOfGroupMember = (GroupController.GroupMember[])localMap.keySet().toArray(new GroupController.GroupMember[0]);
      locali = ViberApplication.getInstance().getMessagesManager();
      if (bool) {
        break label236;
      }
      c("loading_dialog");
      if (arrayOfGroupMember.length != 1) {
        break label191;
      }
      localGroupUserInfo = arrayOfGroupMember[0].a;
      if (j) {
        break label126;
      }
      b("Create new 1to1 conversation");
      a(localGroupUserInfo.phoneNumber, localGroupUserInfo.clientName, ((cn)localMap.values().iterator().next()).b());
    }
    label126:
    while (arrayOfGroupMember.length <= 1)
    {
      GroupUserInfo localGroupUserInfo;
      return;
      bool = false;
      break;
      Intent localIntent = new Intent("com.viber.voip.action.CALL", Uri.parse("tel:" + localGroupUserInfo.phoneNumber));
      localIntent.setFlags(268435456);
      this.a.startActivity(localIntent);
      this.a.finish();
      return;
    }
    label191:
    b("Create new group conversation");
    this.h = ((int)(System.currentTimeMillis() / 1000L));
    locali.d().a(this.h, arrayOfGroupMember);
    return;
    label236:
    b("add participans to existed group, groupId=" + paramLong);
    a("add_participants_dialog", arrayOfGroupMember.length);
    this.g.postDelayed(this.k, 10000L);
    this.h = ((int)(System.currentTimeMillis() / 1000L));
    locali.d().a(this.h, paramLong, arrayOfGroupMember);
  }
  
  public boolean d()
  {
    return i() == this.e;
  }
  
  public GroupController.GroupMember[] e()
  {
    HashMap localHashMap = new HashMap();
    Iterator localIterator = this.b.entrySet().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      if (this.c.get(localEntry.getKey()) == null)
      {
        GroupController.GroupMember localGroupMember = new GroupController.GroupMember();
        localGroupMember.a = new GroupUserInfo((String)localEntry.getKey(), ((cn)localEntry.getValue()).a(), null);
        long l;
        if (cn.a((cn)localEntry.getValue()) != null)
        {
          l = cn.a((cn)localEntry.getValue()).c();
          label137:
          localGroupMember.b = l;
          if (cn.a((cn)localEntry.getValue()) == null) {
            break label211;
          }
        }
        label211:
        for (Uri localUri = cn.a((cn)localEntry.getValue()).b();; localUri = null)
        {
          localGroupMember.c = localUri;
          localHashMap.put(localGroupMember, localEntry.getValue());
          break;
          l = -1L;
          break label137;
        }
      }
    }
    return (GroupController.GroupMember[])localHashMap.keySet().toArray(new GroupController.GroupMember[0]);
  }
  
  public GroupController.GroupMember[] f()
  {
    HashMap localHashMap = new HashMap();
    Iterator localIterator = this.c.entrySet().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      if (this.b.get(localEntry.getKey()) == null)
      {
        GroupController.GroupMember localGroupMember = new GroupController.GroupMember();
        localGroupMember.a = new GroupUserInfo((String)localEntry.getKey(), ((cn)localEntry.getValue()).a(), null);
        long l;
        if (cn.a((cn)localEntry.getValue()) != null)
        {
          l = cn.a((cn)localEntry.getValue()).c();
          label137:
          localGroupMember.b = l;
          if (cn.a((cn)localEntry.getValue()) == null) {
            break label211;
          }
        }
        label211:
        for (Uri localUri = cn.a((cn)localEntry.getValue()).b();; localUri = null)
        {
          localGroupMember.c = localUri;
          localHashMap.put(localGroupMember, localEntry.getValue());
          break;
          l = -1L;
          break label137;
        }
      }
    }
    return (GroupController.GroupMember[])localHashMap.keySet().toArray(new GroupController.GroupMember[0]);
  }
  
  public Set<String> g()
  {
    HashSet localHashSet = new HashSet();
    Iterator localIterator = this.b.entrySet().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      if (((cn)localEntry.getValue()).a) {
        localHashSet.add(localEntry.getKey());
      }
    }
    return localHashSet;
  }
  
  public Set<String> h()
  {
    HashSet localHashSet = new HashSet();
    Iterator localIterator = this.b.entrySet().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      if (((cn)localEntry.getValue()).b) {
        localHashSet.add(localEntry.getKey());
      }
    }
    return localHashSet;
  }
  
  public int i()
  {
    return b(false);
  }
  
  public int j()
  {
    return this.e;
  }
  
  public void k()
  {
    com.viber.voip.a.bc localbc = com.viber.voip.a.bc.a();
    u localu = a.z;
    a.z.getClass();
    localbc.a(localu.b("514"));
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(this.a);
    localBuilder.setMessage(2131494181).setCancelable(false).setPositiveButton(2131493614, new cm(this));
    localBuilder.create().show();
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.contacts.ui.cb
 * JD-Core Version:    0.7.0.1
 */