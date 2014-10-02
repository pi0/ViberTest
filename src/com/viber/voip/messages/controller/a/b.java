package com.viber.voip.messages.controller.a;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import com.viber.jni.GroupAddedMember;
import com.viber.jni.GroupUserInfo;
import com.viber.jni.PhoneControllerDelegate.ViberConnectionState;
import com.viber.jni.PhoneControllerWrapper;
import com.viber.voip.ViberApplication;
import com.viber.voip.messages.controller.GroupController;
import com.viber.voip.messages.controller.GroupController.CreatePublicGroupData;
import com.viber.voip.messages.controller.GroupController.GroupMember;
import com.viber.voip.messages.controller.b.c;
import com.viber.voip.messages.controller.c.as;
import com.viber.voip.messages.controller.c.e;
import com.viber.voip.messages.controller.cq;
import com.viber.voip.messages.controller.cr;
import com.viber.voip.messages.controller.cu;
import com.viber.voip.messages.controller.cv;
import com.viber.voip.messages.controller.r;
import com.viber.voip.messages.controller.u;
import com.viber.voip.messages.h;
import com.viber.voip.messages.i;
import com.viber.voip.messages.orm.entity.impl.ConversationEntityImpl;
import com.viber.voip.messages.orm.entity.impl.MessageEntityImpl;
import com.viber.voip.messages.orm.entity.impl.ParticipantEntityImpl;
import com.viber.voip.messages.orm.entity.impl.ParticipantInfoEntityImpl;
import com.viber.voip.messages.orm.entity.impl.PublicGroupConversationEntityImpl;
import com.viber.voip.registration.cp;
import com.viber.voip.settings.l;
import com.viber.voip.util.hd;
import com.viber.voip.util.hv;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class b
  extends a
{
  protected Context c;
  protected e d;
  protected cr e;
  protected as f;
  protected cq g;
  protected com.viber.voip.messages.controller.c.a h;
  protected r i;
  protected c j;
  
  public b(Context paramContext, r paramr)
  {
    this.c = paramContext;
    this.f = as.a();
    this.d = e.a();
    this.e = new cr(this.c);
    this.g = cq.a();
    this.i = paramr;
    this.h = new com.viber.voip.messages.controller.c.a();
    this.j = new c();
  }
  
  private void a()
  {
    if (!this.b.isConnected()) {}
    while ((!ViberApplication.preferences().b("need_recover_groups", false)) || (!this.b.handleRecoverGroups())) {
      return;
    }
    ViberApplication.preferences().a("need_recover_groups", false);
  }
  
  private void a(int paramInt, long paramLong, Map<String, Integer> paramMap)
  {
    GroupController.GroupMember[] arrayOfGroupMember = this.i.a(paramInt);
    if (arrayOfGroupMember != null)
    {
      int k = arrayOfGroupMember.length;
      int m = 0;
      if (m < k)
      {
        GroupController.GroupMember localGroupMember = arrayOfGroupMember[m];
        if (paramMap.containsKey(Integer.valueOf(localGroupMember.d))) {}
        for (int n = 1;; n = 0)
        {
          localGroupMember.d = n;
          m++;
          break;
        }
      }
      cv localcv = this.e.a(paramLong, true, arrayOfGroupMember, "");
      this.d.d(localcv.d.getId(), true);
      this.d.a(paramInt, localcv.d.getGroupId(), localcv.d.getId(), paramMap);
      return;
    }
    this.d.a(paramInt, -1);
  }
  
  private void b()
  {
    if (!this.b.isConnected()) {}
    for (;;)
    {
      return;
      Iterator localIterator1 = this.h.a("key_not_synced_group", true).iterator();
      while (localIterator1.hasNext())
      {
        long l2 = ((Long)localIterator1.next()).longValue();
        int n = this.b.generateSequence();
        this.b.handleGetGroupInfo(n, l2);
      }
      Iterator localIterator2 = this.h.a("key_not_synced_public_group", true).iterator();
      while (localIterator2.hasNext())
      {
        long l1 = ((Long)localIterator2.next()).longValue();
        this.h.a(l1, new String[] { "key_not_synced_public_group" });
        int m = this.b.generateSequence();
        this.e.a(m, l1, 0, 2);
      }
      Iterator localIterator3 = this.f.b().iterator();
      while (localIterator3.hasNext())
      {
        PublicGroupConversationEntityImpl localPublicGroupConversationEntityImpl = (PublicGroupConversationEntityImpl)localIterator3.next();
        int k = this.b.generateSequence();
        ViberApplication.getInstance().getMessagesManager().d().a(k, localPublicGroupConversationEntityImpl.getGroupId(), localPublicGroupConversationEntityImpl.getLastServerMessageId());
      }
    }
  }
  
  private void b(int paramInt, long paramLong, Map<String, Integer> paramMap)
  {
    GroupController.CreatePublicGroupData localCreatePublicGroupData = this.i.b(paramInt);
    if (localCreatePublicGroupData != null)
    {
      cv localcv = this.e.a(paramInt, paramLong, 2, localCreatePublicGroupData.groupRole, "", 1, true, null, null, localCreatePublicGroupData);
      this.d.a(paramInt, localcv.d.getGroupId(), localcv.d.getId(), paramMap);
      this.d.d(localcv.d.getId(), false);
      return;
    }
    this.d.a(paramInt, -2);
  }
  
  protected void a(long paramLong, int paramInt1, int paramInt2, String paramString, GroupUserInfo[] paramArrayOfGroupUserInfo)
  {
    HashMap localHashMap1 = new HashMap();
    int k = paramArrayOfGroupUserInfo.length;
    int m = 0;
    GroupUserInfo localGroupUserInfo;
    String str5;
    if (m < k)
    {
      localGroupUserInfo = paramArrayOfGroupUserInfo[m];
      str5 = localGroupUserInfo.phoneNumber;
      if (paramInt2 != 1) {
        break label674;
      }
    }
    label411:
    label674:
    for (String str6 = hd.a((ViberApplication)this.c.getApplicationContext(), str5, str5);; str6 = str5)
    {
      localHashMap1.put(str6, new GroupUserInfo(str6, localGroupUserInfo.clientName, localGroupUserInfo.downloadID));
      m++;
      break;
      HashMap localHashMap2 = new HashMap();
      HashSet localHashSet1 = new HashSet();
      Iterator localIterator1 = this.f.a(localHashMap1.keySet(), paramLong).iterator();
      while (localIterator1.hasNext())
      {
        ParticipantInfoEntityImpl localParticipantInfoEntityImpl2 = (ParticipantInfoEntityImpl)localIterator1.next();
        if ((!localParticipantInfoEntityImpl2.isOwner()) && ((paramInt2 != 3) || (paramString == null) || (!paramString.equals(localParticipantInfoEntityImpl2.getNumber())))) {
          if (localHashMap1.containsKey(localParticipantInfoEntityImpl2.getNumber())) {
            localHashMap2.put(localParticipantInfoEntityImpl2.getNumber(), localParticipantInfoEntityImpl2);
          } else {
            localHashSet1.add(Long.valueOf(localParticipantInfoEntityImpl2.getId()));
          }
        }
      }
      HashSet localHashSet2 = new HashSet();
      Iterator localIterator2 = localHashMap1.entrySet().iterator();
      if (localIterator2.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)localIterator2.next();
        String str1 = (String)localEntry.getKey();
        String str2 = ((GroupUserInfo)localEntry.getValue()).clientName;
        String str3 = ((GroupUserInfo)localEntry.getValue()).downloadID;
        String str4;
        label343:
        ParticipantInfoEntityImpl localParticipantInfoEntityImpl1;
        if (TextUtils.isEmpty(str3))
        {
          str4 = "";
          localParticipantInfoEntityImpl1 = (ParticipantInfoEntityImpl)localHashMap2.get(str1);
          if (localParticipantInfoEntityImpl1 != null) {
            break label411;
          }
          localParticipantInfoEntityImpl1 = this.e.a(false, str1, str2, str4, null);
        }
        for (;;)
        {
          localHashSet2.add(Long.valueOf(localParticipantInfoEntityImpl1.getId()));
          break;
          str4 = hv.a(str3).toString();
          break label343;
          localParticipantInfoEntityImpl1.setViberName(str2);
          localParticipantInfoEntityImpl1.setViberImage(str4);
          this.f.b(localParticipantInfoEntityImpl1);
        }
      }
      HashMap localHashMap3 = new HashMap();
      Iterator localIterator3 = this.f.i(paramLong).iterator();
      while (localIterator3.hasNext())
      {
        ParticipantEntityImpl localParticipantEntityImpl2 = (ParticipantEntityImpl)localIterator3.next();
        if ((localHashSet1.contains(Long.valueOf(localParticipantEntityImpl2.getParticipantInfoId()))) && (localParticipantEntityImpl2.isActive()))
        {
          localParticipantEntityImpl2.setStatus(1);
          this.f.b(localParticipantEntityImpl2);
        }
        else
        {
          localHashMap3.put(Long.valueOf(localParticipantEntityImpl2.getParticipantInfoId()), localParticipantEntityImpl2);
        }
      }
      Iterator localIterator4 = localHashSet2.iterator();
      while (localIterator4.hasNext())
      {
        Long localLong = (Long)localIterator4.next();
        ParticipantEntityImpl localParticipantEntityImpl1 = (ParticipantEntityImpl)localHashMap3.get(localLong);
        if (localParticipantEntityImpl1 == null)
        {
          this.e.b(paramLong, 0, localLong.longValue());
        }
        else if (localParticipantEntityImpl1.getStatus() != 0)
        {
          localParticipantEntityImpl1.setStatus(0);
          this.f.b(localParticipantEntityImpl1);
        }
      }
      this.f.a(paramLong, paramInt1);
      this.d.h(localHashSet2, false);
      this.d.f(paramLong, false);
      return;
    }
  }
  
  protected void a(long paramLong, int paramInt, GroupUserInfo[] paramArrayOfGroupUserInfo)
  {
    a(paramLong, paramInt, 1, "", paramArrayOfGroupUserInfo);
  }
  
  protected void a(ConversationEntityImpl paramConversationEntityImpl, long paramLong, String paramString)
  {
    ParticipantEntityImpl localParticipantEntityImpl = this.f.a(paramLong, paramString);
    if (localParticipantEntityImpl != null)
    {
      localParticipantEntityImpl.setStatus(1);
      this.f.b(localParticipantEntityImpl);
      if (paramConversationEntityImpl != null)
      {
        this.f.a(paramConversationEntityImpl.getId(), paramConversationEntityImpl.getConversationType());
        this.d.f(paramConversationEntityImpl.getId(), false);
      }
    }
  }
  
  protected void a(MessageEntityImpl paramMessageEntityImpl, String paramString, boolean paramBoolean)
  {
    cv localcv = this.e.a(paramMessageEntityImpl, paramString);
    if ((localcv.a) || (localcv.b)) {
      this.b.handleSendGroupChangedAck(paramMessageEntityImpl.getMessageToken());
    }
    if ((localcv.b) && (!paramBoolean) && (!paramMessageEntityImpl.isPublicWatcher())) {
      this.g.a(localcv.d, localcv.e, localcv.f, localcv.c);
    }
  }
  
  protected void a(String paramString) {}
  
  protected void a(boolean paramBoolean, long paramLong1, int paramInt1, String paramString1, int paramInt2, long paramLong2, long paramLong3, String paramString2, GroupAddedMember[] paramArrayOfGroupAddedMember, ConversationEntityImpl paramConversationEntityImpl, int paramInt3)
  {
    int k;
    if ((paramInt2 & 0x1) != 0)
    {
      k = 1;
      if (k == 0) {
        break label185;
      }
      if ((paramBoolean) && (this.a)) {
        break label33;
      }
    }
    label33:
    label179:
    label185:
    while ((paramConversationEntityImpl == null) || (paramArrayOfGroupAddedMember.length == 0))
    {
      return;
      k = 0;
      break;
      if (paramBoolean) {
        com.viber.voip.j.a.a().b();
      }
      int i2 = this.b.generateSequence();
      cr localcr2 = this.e;
      int i3;
      String str7;
      String str8;
      c localc2;
      if (paramConversationEntityImpl == null)
      {
        i3 = 4;
        localcr2.a(i2, paramLong1, i3, 4, "", paramInt1, true, paramString1, "", null);
        str7 = hd.a((ViberApplication)this.c.getApplicationContext(), paramString1, paramString1);
        str8 = ViberApplication.getInstance().getRegistrationValues().f();
        localc2 = this.j;
        if (!paramBoolean) {
          break label179;
        }
      }
      for (int i4 = 2;; i4 = 1)
      {
        MessageEntityImpl localMessageEntityImpl = localc2.a(paramLong1, i4, paramLong2, str7, 80, paramLong3, h.a(str8), paramInt3);
        localMessageEntityImpl.setMessageSeq(i2);
        a(localMessageEntityImpl, paramString2, true);
        return;
        i3 = 2;
        break;
      }
    }
    String[] arrayOfString = new String[paramArrayOfGroupAddedMember.length];
    PublicGroupConversationEntityImpl localPublicGroupConversationEntityImpl = this.f.b(paramLong1);
    int m;
    int n;
    label233:
    Uri localUri;
    cr localcr1;
    String str3;
    String str4;
    if ((paramBoolean) && (localPublicGroupConversationEntityImpl != null))
    {
      m = localPublicGroupConversationEntityImpl.getGroupRole();
      n = 0;
      if (n >= paramArrayOfGroupAddedMember.length) {
        break label379;
      }
      GroupAddedMember localGroupAddedMember = paramArrayOfGroupAddedMember[n];
      localUri = hv.a(localGroupAddedMember.getUser().downloadID);
      localcr1 = this.e;
      str3 = localGroupAddedMember.getUser().phoneNumber;
      str4 = localGroupAddedMember.getUser().clientName;
      if (localUri == null) {
        break label372;
      }
    }
    label372:
    for (String str5 = localUri.toString();; str5 = "")
    {
      ParticipantInfoEntityImpl localParticipantInfoEntityImpl = localcr1.a(false, false, str3, str4, str5);
      String str6 = localParticipantInfoEntityImpl.getCommonContactName(true, m);
      if (str6 == null) {
        str6 = "Unknown";
      }
      arrayOfString[n] = str6;
      this.e.a(paramConversationEntityImpl.getId(), 0, localParticipantInfoEntityImpl.getId());
      n++;
      break label233;
      m = 1;
      break;
    }
    label379:
    String str1;
    String str2;
    label420:
    c localc1;
    if (paramArrayOfGroupAddedMember.length == 1)
    {
      str1 = paramArrayOfGroupAddedMember[0].getUser().phoneNumber;
      if (paramArrayOfGroupAddedMember.length != 1) {
        break label498;
      }
      str2 = h.a(paramArrayOfGroupAddedMember[0].getUser().phoneNumber);
      localc1 = this.j;
      if (!paramBoolean) {
        break label508;
      }
    }
    label498:
    label508:
    for (int i1 = 2;; i1 = 1)
    {
      a(localc1.a(paramLong1, i1, paramLong2, str1, paramInt2, paramLong3, str2, paramInt3), paramString2, false);
      this.f.a(paramConversationEntityImpl.getId(), paramConversationEntityImpl.getConversationType());
      this.d.f(paramConversationEntityImpl.getId(), false);
      return;
      str1 = paramString1;
      break;
      str2 = h.a(arrayOfString);
      break label420;
    }
  }
  
  public void onCreateGroupReply(int paramInt1, int paramInt2, long paramLong, Map<String, Integer> paramMap)
  {
    boolean bool = this.i.c(paramInt2);
    if (paramInt1 == 0) {
      if (bool) {
        b(paramInt2, paramLong, paramMap);
      }
    }
    for (;;)
    {
      this.i.d(paramInt2);
      return;
      a(paramInt2, paramLong, paramMap);
      continue;
      this.d.a(paramInt2, paramInt1);
    }
  }
  
  public void onGroupAddMember(long paramLong1, String paramString, long paramLong2, int paramInt)
  {
    if (TextUtils.isEmpty(paramString))
    {
      this.i.b(paramLong1);
      return;
    }
    String str;
    if (paramString.charAt(0) != '+')
    {
      str = "+" + paramString;
      label48:
      if (paramInt != 1) {
        break label191;
      }
    }
    label191:
    for (int k = 1;; k = 0)
    {
      if (k != 0)
      {
        cu localcu = this.e.a(paramLong1, paramString, 0);
        MessageEntityImpl localMessageEntityImpl = this.j.a(paramLong1, 1, System.currentTimeMillis(), str, 0, paramLong2, h.a(str));
        this.e.a(localMessageEntityImpl, localcu.a.getGroupName());
        this.d.f(localcu.b.getConversationId(), false);
      }
      u localu = this.i.a(paramLong1);
      if ((localu == null) || (!localu.a(paramInt, paramString))) {
        break;
      }
      this.d.a(localu.a(), paramLong1, localu.b());
      this.i.b(paramLong1);
      return;
      str = paramString;
      break label48;
    }
  }
  
  public void onGroupAddMembers(long paramLong1, int paramInt1, long paramLong2, int paramInt2, String[] paramArrayOfString, Map<String, Integer> paramMap, int paramInt3, int paramInt4)
  {
    String[] arrayOfString;
    int k;
    long l1;
    Object localObject;
    String str1;
    if (paramInt3 == 0)
    {
      arrayOfString = new String[paramArrayOfString.length];
      k = 1;
      int m = 0;
      l1 = 0L;
      String str4;
      for (localObject = ""; m < paramArrayOfString.length; localObject = str4)
      {
        String str3 = paramArrayOfString[m];
        if (str3.charAt(0) != '+') {
          new StringBuilder().append("+").append(str3).toString();
        }
        cu localcu = this.e.a(paramLong1, str3, 0);
        str4 = localcu.a.getGroupName();
        k = localcu.a.getConversationType();
        long l2 = localcu.a.getId();
        arrayOfString[m] = localcu.c.getCommonContactName();
        m++;
        l1 = l2;
      }
      if (paramArrayOfString.length > 0)
      {
        str1 = paramArrayOfString[0];
        if (paramArrayOfString.length != 1) {
          break label237;
        }
      }
    }
    label237:
    for (String str2 = h.a(paramArrayOfString[0]);; str2 = h.a(arrayOfString))
    {
      this.e.a(this.j.a(paramLong1, k, System.currentTimeMillis(), str1, 0, paramLong2, str2, paramInt2), (String)localObject);
      this.f.a(l1, k);
      this.d.f(l1, false);
      this.d.a(paramInt1, paramLong1, paramMap);
      return;
    }
  }
  
  public boolean onGroupChanged(long paramLong1, String paramString1, String paramString2, long paramLong2, int paramInt1, long paramLong3, String paramString3, String paramString4, int paramInt2, GroupUserInfo[] paramArrayOfGroupUserInfo)
  {
    ConversationEntityImpl localConversationEntityImpl = this.f.a(paramLong1);
    boolean bool;
    label21:
    int k;
    label31:
    int m;
    label45:
    int n;
    if ((paramInt1 & 0x10) != 0)
    {
      bool = true;
      if ((paramInt1 & 0x1) == 0) {
        break label137;
      }
      k = 1;
      if ((!bool) && (k == 0)) {
        break label143;
      }
      m = 16;
      if (paramInt2 != 1) {
        break label149;
      }
      n = 1;
      label54:
      if ((paramInt2 != 1) || (k == 0)) {
        break label155;
      }
    }
    String str1;
    label137:
    label143:
    label149:
    label155:
    for (int i1 = 1;; i1 = 0)
    {
      str1 = hd.a((ViberApplication)this.c.getApplicationContext(), paramString3, paramString3);
      switch (paramInt2)
      {
      default: 
        this.b.handleSendGroupChangedAck(paramLong2);
        return false;
        bool = false;
        break label21;
        k = 0;
        break label31;
        m = 0;
        break label45;
        n = 0;
        break label54;
      }
    }
    GroupAddedMember[] arrayOfGroupAddedMember = new GroupAddedMember[paramArrayOfGroupUserInfo.length];
    for (int i2 = 0; i2 < paramArrayOfGroupUserInfo.length; i2++) {
      arrayOfGroupAddedMember[i2] = new GroupAddedMember(paramArrayOfGroupUserInfo[i2], 1);
    }
    a(false, paramLong1, 0, paramString3, paramInt1, paramLong3, paramLong2, paramString1, arrayOfGroupAddedMember, localConversationEntityImpl, 0);
    Object localObject = null;
    for (;;)
    {
      if ((localObject == null) || ((localConversationEntityImpl == null) && (n == 0))) {
        this.b.handleSendGroupChangedAck(paramLong2);
      }
      MessageEntityImpl localMessageEntityImpl;
      for (;;)
      {
        return true;
        localObject = this.j.a(paramLong1, 1, paramLong3, str1, m, paramLong2, h.a(str1, paramString2, paramString1));
        break;
        if (i1 == 0) {}
        for (String str2 = str1;; str2 = ViberApplication.getInstance().getRegistrationValues().f())
        {
          c localc = this.j;
          String str3 = h.a(str2);
          localMessageEntityImpl = localc.a(paramLong1, 1, paramLong3, str2, m, paramLong2, str3);
          if ((localConversationEntityImpl == null) || (i1 != 0)) {
            break label479;
          }
          ParticipantInfoEntityImpl localParticipantInfoEntityImpl = this.e.a(false, false, str1, paramString4, "");
          ParticipantEntityImpl localParticipantEntityImpl = this.e.a(localConversationEntityImpl.getId(), 0, localParticipantInfoEntityImpl.getId());
          if ((localParticipantEntityImpl != null) && (!localParticipantEntityImpl.isActive()))
          {
            localParticipantEntityImpl.setStatus(0);
            this.f.b(localParticipantEntityImpl);
          }
          this.f.a(localConversationEntityImpl.getId(), localConversationEntityImpl.getConversationType());
          this.d.f(localConversationEntityImpl.getId(), false);
          localObject = localMessageEntityImpl;
          break;
        }
        a(localConversationEntityImpl, paramLong1, str1);
        localObject = null;
        break;
        a((MessageEntityImpl)localObject, paramString1, bool);
      }
      label479:
      localObject = localMessageEntityImpl;
    }
  }
  
  public void onGroupInfo(int paramInt1, long paramLong, String paramString, GroupUserInfo[] paramArrayOfGroupUserInfo, int paramInt2, int paramInt3)
  {
    ConversationEntityImpl localConversationEntityImpl = this.f.a(paramLong);
    if (localConversationEntityImpl == null) {
      return;
    }
    if (!localConversationEntityImpl.getGroupName().equals(paramString))
    {
      localConversationEntityImpl.setGroupName(paramString);
      this.f.b(localConversationEntityImpl);
    }
    a(localConversationEntityImpl.getId(), 1, paramArrayOfGroupUserInfo);
    this.d.d(localConversationEntityImpl.getId(), true);
    this.h.a(localConversationEntityImpl.getGroupId(), new String[] { "key_not_synced_group" });
  }
  
  public void onServiceStateChanged(int paramInt)
  {
    if (paramInt == PhoneControllerDelegate.ViberConnectionState.SERVICE_CONNECTED.ordinal())
    {
      a();
      b();
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.controller.a.b
 * JD-Core Version:    0.7.0.1
 */