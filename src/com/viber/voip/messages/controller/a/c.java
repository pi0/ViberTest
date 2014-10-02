package com.viber.voip.messages.controller.a;

import android.content.Context;
import com.viber.jni.CGetUserDetails;
import com.viber.jni.ConversationToken;
import com.viber.jni.GroupToken;
import com.viber.jni.GroupUserInfo;
import com.viber.jni.PhoneControllerDelegate.ViberConnectionState;
import com.viber.jni.PhoneControllerWrapper;
import com.viber.voip.e.u;
import com.viber.voip.messages.controller.c.as;
import com.viber.voip.messages.controller.c.b;
import com.viber.voip.messages.controller.cr;
import com.viber.voip.messages.controller.da;
import com.viber.voip.messages.controller.de;
import com.viber.voip.messages.orm.entity.impl.ConversationEntityImpl;
import com.viber.voip.messages.orm.entity.impl.MessageEntityImpl;
import com.viber.voip.user.UserData;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class c
  extends a
{
  private static final String c = c.class.getSimpleName();
  private u d = u.a();
  private com.viber.voip.messages.controller.c.e e = com.viber.voip.messages.controller.c.e.a();
  private as f = as.a();
  private com.viber.voip.messages.controller.c.a g = new com.viber.voip.messages.controller.c.a();
  private cr h;
  private Set<Long> i = new HashSet();
  private Set<Long> j = new HashSet();
  private da k = new d(this);
  private de l = new e(this);
  
  public c(Context paramContext)
  {
    this.h = new cr(paramContext);
    this.e.a(this.k);
    this.e.a(this.l);
  }
  
  private void a()
  {
    if (!this.b.isConnected()) {}
    List localList;
    do
    {
      return;
      localList = this.f.f();
    } while (localList.size() == 0);
    ArrayList localArrayList1 = new ArrayList();
    ArrayList localArrayList2 = new ArrayList();
    Iterator localIterator = localList.iterator();
    while (localIterator.hasNext())
    {
      MessageEntityImpl localMessageEntityImpl = (MessageEntityImpl)localIterator.next();
      if (localMessageEntityImpl.isGroup()) {
        localArrayList2.add(new GroupToken(localMessageEntityImpl.getMessageToken(), localMessageEntityImpl.getGroupId()));
      } else {
        localArrayList1.add(new ConversationToken(localMessageEntityImpl.getMessageToken(), localMessageEntityImpl.getRecipientNumber()));
      }
    }
    this.b.handleSyncDeletedMessages((ConversationToken[])localArrayList1.toArray(new ConversationToken[localArrayList1.size()]), (GroupToken[])localArrayList2.toArray(new GroupToken[localArrayList2.size()]), this.b.generateSequence());
  }
  
  private void a(long paramLong1, long paramLong2)
  {
    Set localSet = this.f.k(paramLong1, paramLong2);
    if (localSet.size() > 0) {
      this.e.a(localSet);
    }
  }
  
  private void a(long paramLong1, long paramLong2, int paramInt)
  {
    if ((paramInt == 0) || (paramInt == 1))
    {
      if (!this.i.contains(Long.valueOf(paramLong2))) {
        break label67;
      }
      this.i.remove(Long.valueOf(paramLong2));
      this.f.h(paramLong1, paramLong2);
    }
    for (;;)
    {
      this.e.e(new HashSet(), false);
      return;
      label67:
      if (this.j.contains(Long.valueOf(paramLong2)))
      {
        this.j.remove(Long.valueOf(paramLong2));
        this.f.g(paramLong1, paramLong2);
      }
    }
  }
  
  private void a(ConversationEntityImpl paramConversationEntityImpl, boolean paramBoolean1, boolean paramBoolean2)
  {
    if (paramConversationEntityImpl != null)
    {
      if ((paramBoolean2) && (paramConversationEntityImpl.isSmartNotificationOn() == paramBoolean1)) {
        this.g.a(paramConversationEntityImpl.getId(), new String[] { "key_not_sync_smart_notification" });
      }
    }
    else {
      return;
    }
    b();
  }
  
  private void a(boolean paramBoolean, long paramLong1, int paramInt1, long paramLong2, int paramInt2)
  {
    if (paramInt2 == 2)
    {
      if (paramBoolean) {
        this.f.d(paramLong1);
      }
      a(paramLong2, paramLong1);
      this.f.d(paramLong1, paramLong2);
      this.f.w(paramLong1);
      this.f.a(paramLong1, paramInt1);
      this.f.v(paramLong1);
      this.e.e(paramLong1, false);
      this.d.d(paramLong1);
      b.a().a(paramLong1);
    }
    do
    {
      return;
      if (paramInt2 == 1)
      {
        this.f.j(paramLong1, paramLong2);
        this.f.v(paramLong1);
        this.e.c(paramLong1, false);
        this.d.d(paramLong1);
        return;
      }
    } while (paramInt2 != 4);
    this.f.f(paramLong1, paramLong2);
    this.e.d(paramLong1, false);
  }
  
  private void a(long[] paramArrayOfLong)
  {
    if (paramArrayOfLong == null) {}
    Set localSet;
    do
    {
      return;
      localSet = this.f.e(paramArrayOfLong);
    } while (localSet.size() <= 0);
    this.e.a(localSet);
  }
  
  private void b()
  {
    if (!this.b.isConnected()) {}
    for (;;)
    {
      return;
      Map localMap = this.g.a(true, new String[] { "key_not_sync_mute_notification", "key_not_sync_smart_notification", "key_not_sync_read_conversation" });
      if (localMap.size() != 0)
      {
        Iterator localIterator1 = this.f.a(localMap.keySet()).iterator();
        while (localIterator1.hasNext())
        {
          ConversationEntityImpl localConversationEntityImpl = (ConversationEntityImpl)localIterator1.next();
          Iterator localIterator3 = ((Set)localMap.remove(Long.valueOf(localConversationEntityImpl.getId()))).iterator();
          while (localIterator3.hasNext())
          {
            String str = (String)localIterator3.next();
            if ("key_not_sync_mute_notification".equals(str))
            {
              if (localConversationEntityImpl.isConversationGroup()) {
                this.b.handleMuteGroup(localConversationEntityImpl.getGroupId(), localConversationEntityImpl.isMuteNotifications());
              } else {
                this.g.a(localConversationEntityImpl.getId(), new String[] { "key_not_sync_mute_notification" });
              }
            }
            else if ("key_not_sync_smart_notification".equals(str))
            {
              if (localConversationEntityImpl.isConversationGroup()) {
                this.b.handleChangeGroupSettings(localConversationEntityImpl.getGroupId(), localConversationEntityImpl.isSmartNotificationOn());
              } else {
                this.b.handleChangeConversationSettings(localConversationEntityImpl.getNumber(), localConversationEntityImpl.isSmartNotificationOn());
              }
            }
            else if ("key_not_sync_read_conversation".equals(str)) {
              this.g.a(localConversationEntityImpl.getId(), new String[] { "key_not_sync_read_conversation" });
            }
          }
        }
        Iterator localIterator2 = localMap.keySet().iterator();
        while (localIterator2.hasNext())
        {
          long l1 = ((Long)localIterator2.next()).longValue();
          this.g.a(l1, new String[] { "key_not_sync_mute_notification", "key_not_sync_smart_notification", "key_not_sync_read_conversation" });
        }
      }
    }
  }
  
  private void b(Set<Long> paramSet)
  {
    if (!this.b.isConnected()) {}
    label123:
    for (;;)
    {
      return;
      Iterator localIterator = paramSet.iterator();
      for (;;)
      {
        if (!localIterator.hasNext()) {
          break label123;
        }
        long l1 = ((Long)localIterator.next()).longValue();
        MessageEntityImpl localMessageEntityImpl = this.f.z(l1);
        if (localMessageEntityImpl == null) {
          break;
        }
        this.j.add(Long.valueOf(localMessageEntityImpl.getMessageToken()));
        if (localMessageEntityImpl.isGroup()) {
          this.b.handleSyncGroup(localMessageEntityImpl.getGroupId(), localMessageEntityImpl.getMessageToken(), 1);
        } else {
          this.b.handleSyncConversation(localMessageEntityImpl.getRecipientNumber(), localMessageEntityImpl.getMessageToken(), 1);
        }
      }
    }
  }
  
  private void c()
  {
    if (!this.b.isConnected()) {}
    for (;;)
    {
      return;
      Iterator localIterator = this.f.e().iterator();
      while (localIterator.hasNext())
      {
        ConversationEntityImpl localConversationEntityImpl = (ConversationEntityImpl)localIterator.next();
        if (localConversationEntityImpl.isConversationGroup())
        {
          this.b.handleGroupLeave(localConversationEntityImpl.getGroupId());
        }
        else
        {
          this.i.add(Long.valueOf(localConversationEntityImpl.getDeletedToken()));
          this.b.handleSyncConversation(localConversationEntityImpl.getNumber(), localConversationEntityImpl.getDeletedToken(), 2);
        }
      }
    }
  }
  
  public void onChangeConversationSettingsReply(String paramString, boolean paramBoolean1, boolean paramBoolean2)
  {
    a(this.f.a(paramString), paramBoolean1, paramBoolean2);
  }
  
  public void onChangeGroupSettingsReply(long paramLong, boolean paramBoolean1, boolean paramBoolean2)
  {
    a(this.f.a(paramLong), paramBoolean1, paramBoolean2);
  }
  
  public boolean onGroupChanged(long paramLong1, String paramString1, String paramString2, long paramLong2, int paramInt1, long paramLong3, String paramString3, String paramString4, int paramInt2, GroupUserInfo[] paramArrayOfGroupUserInfo)
  {
    if ((paramInt1 & 0x10) != 0) {}
    for (int m = 1;; m = 0)
    {
      if ((paramInt2 == 2) && (m != 0))
      {
        ConversationEntityImpl localConversationEntityImpl = this.f.a(paramLong1);
        if (localConversationEntityImpl != null) {
          a(true, localConversationEntityImpl.getId(), localConversationEntityImpl.getConversationType(), 9223372036854775807L, 2);
        }
        this.b.handleSendGroupChangedAck(paramLong2);
      }
      return false;
    }
  }
  
  public void onGroupLeave(long paramLong1, long paramLong2, int paramInt)
  {
    if (paramLong2 != 0L)
    {
      this.i.add(Long.valueOf(paramLong2));
      this.f.i(paramLong1, paramLong2);
      if (!this.b.isReady()) {
        this.b.init();
      }
      this.b.handleSyncGroup(paramLong1, paramLong2, 2);
      return;
    }
    this.f.e(paramLong1);
  }
  
  public boolean onHandleSelfDetails(long paramLong, String paramString1, String paramString2, int paramInt)
  {
    int m;
    if ((paramInt & 0x1) != 0)
    {
      m = 1;
      if ((paramInt & 0x2) == 0) {
        break label67;
      }
    }
    label67:
    for (int n = 1;; n = 0)
    {
      if ((paramInt == 0) && ((m == 0) || (n == 0))) {
        break label73;
      }
      com.viber.voip.contacts.c.a.a(new CGetUserDetails(null, paramString2, paramString1, 1), new f(this, paramLong));
      return false;
      m = 0;
      break;
    }
    label73:
    if (n != 0)
    {
      UserData.setName(paramString1);
      this.b.handleSendUpdateSelfUserDetailsAck(paramLong);
      return false;
    }
    if (m != 0)
    {
      com.viber.voip.contacts.c.a.a(new CGetUserDetails(null, paramString2, UserData.getName(), 1), new g(this, paramLong));
      return false;
    }
    this.b.handleSendUpdateSelfUserDetailsAck(paramLong);
    return false;
  }
  
  public void onMuteGroupReply(long paramLong, boolean paramBoolean1, boolean paramBoolean2)
  {
    ConversationEntityImpl localConversationEntityImpl = this.f.a(paramLong);
    if (localConversationEntityImpl != null)
    {
      if ((paramBoolean2) && (localConversationEntityImpl.isMuteNotifications() == paramBoolean1)) {
        this.g.a(localConversationEntityImpl.getId(), new String[] { "key_not_sync_mute_notification" });
      }
    }
    else {
      return;
    }
    b();
  }
  
  public void onServiceStateChanged(int paramInt)
  {
    if (paramInt == PhoneControllerDelegate.ViberConnectionState.SERVICE_CONNECTED.ordinal())
    {
      c();
      a();
      b();
    }
  }
  
  public boolean onSyncConversation(String paramString, long paramLong, int paramInt)
  {
    ConversationEntityImpl localConversationEntityImpl = this.f.a(paramString);
    if (localConversationEntityImpl != null) {
      a(false, localConversationEntityImpl.getId(), localConversationEntityImpl.getConversationType(), paramLong, paramInt);
    }
    this.b.handleSendSyncConversationAck(paramString, paramLong, paramInt);
    return false;
  }
  
  public void onSyncConversationReply(String paramString, long paramLong, int paramInt)
  {
    ConversationEntityImpl localConversationEntityImpl = this.f.a(paramString);
    if (localConversationEntityImpl != null) {
      a(localConversationEntityImpl.getId(), paramLong, paramInt);
    }
  }
  
  public boolean onSyncGroup(long paramLong1, long paramLong2, int paramInt)
  {
    ConversationEntityImpl localConversationEntityImpl = this.f.a(paramLong1);
    if (localConversationEntityImpl != null) {
      a(true, localConversationEntityImpl.getId(), localConversationEntityImpl.getConversationType(), paramLong2, paramInt);
    }
    this.b.handleSendSyncGroupAck(paramLong1, paramLong2, paramInt);
    return false;
  }
  
  public void onSyncGroupReply(long paramLong1, long paramLong2, int paramInt)
  {
    if ((paramInt == 0) || ((paramInt == 1) && (this.i.contains(Long.valueOf(paramLong2))))) {}
    for (int m = 1;; m = 0)
    {
      ConversationEntityImpl localConversationEntityImpl = this.f.a(paramLong1);
      if (localConversationEntityImpl != null) {
        a(localConversationEntityImpl.getId(), paramLong2, paramInt);
      }
      if (m != 0) {
        this.f.e(paramLong1);
      }
      return;
    }
  }
  
  public boolean onSyncMessages(long[] paramArrayOfLong1, long[] paramArrayOfLong2)
  {
    int m;
    int n;
    if ((paramArrayOfLong2 != null) && (paramArrayOfLong2.length > 0))
    {
      m = 1;
      if ((paramArrayOfLong1 == null) || (paramArrayOfLong1.length <= 0)) {
        break label188;
      }
      n = 1;
    }
    for (;;)
    {
      label23:
      if (m != 0)
      {
        Map localMap2 = this.f.f(paramArrayOfLong2);
        a(paramArrayOfLong2);
        this.f.a(paramArrayOfLong2);
        Iterator localIterator2 = localMap2.entrySet().iterator();
        for (;;)
        {
          if (localIterator2.hasNext())
          {
            Map.Entry localEntry2 = (Map.Entry)localIterator2.next();
            this.f.v(((Long)localEntry2.getKey()).longValue());
            this.f.w(((Long)localEntry2.getKey()).longValue());
            this.f.a(((Long)localEntry2.getKey()).longValue(), ((Integer)localEntry2.getValue()).intValue());
            this.d.d(((Long)localEntry2.getKey()).longValue());
            continue;
            m = 0;
            break;
            label188:
            n = 0;
            break label23;
          }
        }
        this.e.e(localMap2.keySet(), false);
        this.e.b(localMap2.keySet(), false);
      }
    }
    if (n != 0)
    {
      Map localMap1 = this.f.f(paramArrayOfLong1);
      this.f.d(paramArrayOfLong1);
      Iterator localIterator1 = localMap1.entrySet().iterator();
      while (localIterator1.hasNext())
      {
        Map.Entry localEntry1 = (Map.Entry)localIterator1.next();
        this.f.v(((Long)localEntry1.getKey()).longValue());
        this.d.d(((Long)localEntry1.getKey()).longValue());
      }
      this.e.a(localMap1.keySet(), false);
    }
    this.b.handleSendSyncMessagesAck(paramArrayOfLong1, paramArrayOfLong2);
    return false;
  }
  
  public void onSyncMessagesReply(int paramInt1, long[] paramArrayOfLong, int paramInt2)
  {
    if (((paramArrayOfLong != null) && (paramInt2 == 0)) || (paramInt2 == 1))
    {
      Map localMap = this.f.f(paramArrayOfLong);
      if ((this.f.b(paramArrayOfLong) > 0) || (this.f.c(paramArrayOfLong) > 0)) {
        this.e.b(localMap.keySet(), false);
      }
    }
  }
  
  public void onUserInfoChange(long paramLong, String paramString1, String paramString2) {}
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.controller.a.c
 * JD-Core Version:    0.7.0.1
 */