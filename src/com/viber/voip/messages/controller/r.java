package com.viber.voip.messages.controller;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import android.util.SparseArray;
import com.viber.jni.GroupUserInfo;
import com.viber.jni.PhoneControllerDelegateAdapter;
import com.viber.jni.PhoneControllerWrapper;
import com.viber.voip.ViberApplication;
import com.viber.voip.backgrounds.p;
import com.viber.voip.messages.controller.c.as;
import com.viber.voip.messages.controller.c.e;
import com.viber.voip.messages.extras.image.h;
import com.viber.voip.messages.orm.entity.impl.ConversationEntityImpl;
import com.viber.voip.util.gj;
import com.viber.voip.util.hv;
import com.viber.voip.w;
import java.io.File;
import java.util.HashMap;
import java.util.Map;

public class r
  implements GroupController
{
  private as a;
  private cr b;
  private final SparseArray<GroupController.CreatePublicGroupData> c = new SparseArray();
  private final SparseArray<GroupController.GroupMember[]> d = new SparseArray();
  private final com.viber.voip.messages.controller.c.a e;
  private e f;
  private Map<Integer, v> g = new HashMap();
  private PhoneControllerDelegateAdapter h;
  private final HashMap<Long, u> i = new HashMap();
  
  public r(Context paramContext)
  {
    this.b = new cr(paramContext);
    this.a = as.a();
    this.e = new com.viber.voip.messages.controller.c.a();
    this.f = e.a();
  }
  
  private static void a(String paramString) {}
  
  private String[] a(GroupController.GroupMember[] paramArrayOfGroupMember)
  {
    String[] arrayOfString = new String[paramArrayOfGroupMember.length];
    for (int j = 0; j < paramArrayOfGroupMember.length; j++) {
      arrayOfString[j] = paramArrayOfGroupMember[j].a.phoneNumber;
    }
    return arrayOfString;
  }
  
  public u a(long paramLong)
  {
    return (u)this.i.get(Long.valueOf(paramLong));
  }
  
  public void a(double paramDouble1, double paramDouble2, long paramLong1, long paramLong2)
  {
    ViberApplication.getInstance().getLocationManager().a(paramDouble1, paramDouble2, false, new s(this, paramLong1, paramLong2));
  }
  
  public void a(int paramInt1, long paramLong, int paramInt2)
  {
    if (ViberApplication.getInstance().getPhoneController(true).isConnected())
    {
      if (this.h == null)
      {
        this.h = new t(this);
        ViberApplication.getInstance().getPhoneController(true).registerDelegate(this.h);
      }
      v localv = new v(this, paramLong, paramInt2, null);
      if (!this.g.containsValue(localv))
      {
        this.g.put(Integer.valueOf(paramInt1), localv);
        e.a().a(paramInt1, paramLong, 0, true);
        ViberApplication.getInstance().getPhoneController(true).handleGetPublicGroupMessages(paramInt1, paramLong, paramInt2);
      }
    }
    else
    {
      return;
    }
    a("obtainPublicGroupMessages ALREADY obtaining! groupID: " + paramLong + ", lastMessageID: " + paramInt2);
  }
  
  public void a(int paramInt1, long paramLong1, int paramInt2, String paramString1, String paramString2, long paramLong2, String paramString3)
  {
    ConversationEntityImpl localConversationEntityImpl = this.a.a(paramLong1);
    if ((localConversationEntityImpl == null) || (localConversationEntityImpl.getConversationType() == 3))
    {
      this.b.a(paramInt1, paramLong1, 3, 3, paramString1, paramInt2, true, null, null, paramString2, null);
      ViberApplication.getInstance().getPhoneController(true).handleJoinPublicGroup(paramLong1, paramInt1, paramString3, paramLong2);
      return;
    }
    this.f.a(paramInt1, paramLong1);
  }
  
  public void a(int paramInt, long paramLong, GroupController.PublicGroupChanger paramPublicGroupChanger)
  {
    this.c.put(paramInt, paramPublicGroupChanger);
    ViberApplication.getInstance().getPhoneController(true).handleChangePublicGroup(paramLong, paramPublicGroupChanger.groupName, paramPublicGroupChanger.b, paramPublicGroupChanger.c, paramPublicGroupChanger.tagLine, paramPublicGroupChanger.tags, paramPublicGroupChanger.location, paramPublicGroupChanger.countryCode, paramPublicGroupChanger.e, paramPublicGroupChanger.revision, paramInt);
  }
  
  public void a(int paramInt, long paramLong, GroupController.GroupMember[] paramArrayOfGroupMember)
  {
    int j = 0;
    String[] arrayOfString = new String[paramArrayOfGroupMember.length];
    for (int k = 0; k < arrayOfString.length; k++) {
      arrayOfString[k] = paramArrayOfGroupMember[k].a.phoneNumber;
    }
    if (this.a.a(paramLong).getConversationType() == 1)
    {
      this.i.put(Long.valueOf(paramLong), new u(this, paramInt, paramArrayOfGroupMember.length));
      int m = arrayOfString.length;
      while (j < m)
      {
        String str = arrayOfString[j];
        ViberApplication.getInstance().getPhoneController(true).handleGroupAddMember(paramLong, str);
        j++;
      }
    }
    ViberApplication.getInstance().getPhoneController(true).handleGroupAddMembers(paramLong, paramInt, arrayOfString);
  }
  
  public void a(int paramInt, GroupController.CreatePublicGroupData paramCreatePublicGroupData)
  {
    this.c.put(paramInt, paramCreatePublicGroupData);
    ViberApplication.getInstance().getPhoneController(true).handleCreatePublicGroup(paramInt, paramCreatePublicGroupData.groupUri, paramCreatePublicGroupData.location, paramCreatePublicGroupData.countryCode, paramCreatePublicGroupData.groupName, paramCreatePublicGroupData.b, paramCreatePublicGroupData.tags, paramCreatePublicGroupData.d, paramCreatePublicGroupData.tagLine, paramCreatePublicGroupData.c, false);
  }
  
  public void a(int paramInt, GroupController.GroupMember[] paramArrayOfGroupMember)
  {
    String[] arrayOfString = a(paramArrayOfGroupMember);
    long l = this.a.a(arrayOfString);
    if (l > 0L)
    {
      this.f.a(paramInt, l, 0L, null);
      return;
    }
    this.d.put(paramInt, paramArrayOfGroupMember);
    ViberApplication.getInstance().getPhoneController(true).handleCreateGroup(paramInt, arrayOfString, "");
  }
  
  public void a(long paramLong, int paramInt)
  {
    int j = (int)(System.currentTimeMillis() / 1000L);
    this.b.a(j, paramLong, 2, paramInt, "", 0, false, null, null, null);
  }
  
  public void a(long paramLong, String paramString)
  {
    this.e.a(paramLong, new String[] { "key_change_group_name" });
    this.e.a(paramLong, "key_change_group_name", paramString);
    PhoneControllerWrapper localPhoneControllerWrapper = ViberApplication.getInstance().getPhoneController(true);
    localPhoneControllerWrapper.handleChangeGroup(paramLong, paramString, localPhoneControllerWrapper.generateSequence());
  }
  
  public void a(long paramLong, String paramString1, String paramString2)
  {
    ConversationEntityImpl localConversationEntityImpl = this.a.c(paramLong);
    if (localConversationEntityImpl == null) {}
    do
    {
      return;
      if ((!TextUtils.isEmpty(localConversationEntityImpl.getBackgroundLandscape())) && (!TextUtils.isEmpty(localConversationEntityImpl.getBackgroundPortrait())) && (!localConversationEntityImpl.getBackgroundPortrait().equals(paramString1)) && (localConversationEntityImpl.getBackgroundPortrait().contains("IMG")))
      {
        Context localContext = ViberApplication.getInstance().getApplicationContext();
        h.c(localContext, Uri.parse(localConversationEntityImpl.getBackgroundLandscape()));
        h.c(localContext, Uri.parse(localConversationEntityImpl.getBackgroundPortrait()));
      }
      if (paramString1 == null) {
        paramString1 = "";
      }
      if (localConversationEntityImpl.getBackgroundPortrait() == null) {
        localConversationEntityImpl.setBackgroundPortrait("");
      }
    } while (paramString1.equals(localConversationEntityImpl.getBackgroundPortrait()));
    this.b.a(paramLong, paramString1, paramString2);
  }
  
  public void a(long paramLong, boolean paramBoolean)
  {
    this.b.b(paramLong, paramBoolean);
  }
  
  public GroupController.GroupMember[] a(int paramInt)
  {
    return (GroupController.GroupMember[])this.d.get(paramInt);
  }
  
  public GroupController.CreatePublicGroupData b(int paramInt)
  {
    return (GroupController.CreatePublicGroupData)this.c.get(paramInt);
  }
  
  public void b(long paramLong)
  {
    this.i.remove(Long.valueOf(paramLong));
  }
  
  public void b(long paramLong, String paramString)
  {
    ConversationEntityImpl localConversationEntityImpl = this.a.c(paramLong);
    boolean bool1;
    if (localConversationEntityImpl != null)
    {
      bool1 = TextUtils.isEmpty(localConversationEntityImpl.getBackgroundPortrait());
      boolean bool2 = TextUtils.isEmpty(paramString);
      if ((!bool1) || (!bool2)) {
        break label69;
      }
    }
    for (boolean bool3 = true;; bool3 = false)
    {
      if (!bool3)
      {
        String[] arrayOfString = com.viber.voip.backgrounds.a.a(paramString);
        a(paramLong, arrayOfString[0], arrayOfString[1]);
      }
      return;
      label69:
      if (!bool1) {
        break;
      }
    }
    if (ViberApplication.getInstance().getPhoneController(true).isShortStandardBackgroundID(paramString)) {}
    for (Object localObject = new com.viber.voip.backgrounds.s(com.viber.voip.backgrounds.a.b(paramString));; localObject = new p(Uri.fromFile(new File(w.z + gj.a(hv.c(paramString).toString())))))
    {
      bool3 = ((com.viber.voip.backgrounds.r)localObject).a(false).toString().contains(localConversationEntityImpl.getBackgroundPortrait());
      break;
    }
  }
  
  public boolean c(int paramInt)
  {
    return this.c.get(paramInt) != null;
  }
  
  public void d(int paramInt)
  {
    this.d.remove(paramInt);
    this.c.remove(paramInt);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.controller.r
 * JD-Core Version:    0.7.0.1
 */