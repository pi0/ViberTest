package com.viber.voip.messages.a;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Handler;
import com.viber.voip.ViberApplication;
import com.viber.voip.dc;
import com.viber.voip.dk;
import com.viber.voip.messages.controller.c.as;
import com.viber.voip.messages.controller.dh;
import com.viber.voip.messages.conversation.ui.ct;
import com.viber.voip.messages.extras.image.h;
import com.viber.voip.messages.orm.entity.impl.ParticipantInfoEntityImpl;
import com.viber.voip.util.b.w;
import com.viber.voip.util.gj;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;

public class b
  implements a
{
  private static b a;
  private static final String h = b.class.getSimpleName();
  private com.viber.voip.messages.controller.c.e b = com.viber.voip.messages.controller.c.e.a();
  private as c = as.a();
  private Handler d = dc.a(dk.d);
  private dh e = new c(this);
  private Map<Long, ParticipantInfoEntityImpl> f = new HashMap();
  private Map<String, ParticipantInfoEntityImpl> g = new HashMap();
  
  public b()
  {
    this.b.a(this.e);
  }
  
  private String a(Resources paramResources, boolean paramBoolean, Collection<ct> paramCollection)
  {
    Iterator localIterator = paramCollection.iterator();
    if (paramCollection.size() > 2)
    {
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = Integer.valueOf(paramCollection.size());
      return paramResources.getString(2131493981, arrayOfObject);
    }
    if (paramCollection.size() == 2) {
      return paramResources.getString(2131493982, new Object[] { c(((ct)localIterator.next()).a(), paramBoolean), c(((ct)localIterator.next()).a(), paramBoolean) });
    }
    if (paramCollection.size() == 1)
    {
      ct localct = (ct)localIterator.next();
      String str1 = c(localct.a(), paramBoolean);
      String str2 = localct.a(paramResources);
      if (localct.c()) {
        return paramResources.getString(2131493983, new Object[] { str1, str2 });
      }
      return paramResources.getString(2131493980, new Object[] { str1 });
    }
    return "";
  }
  
  private void a(ParticipantInfoEntityImpl paramParticipantInfoEntityImpl)
  {
    try
    {
      a("saveToCache: " + paramParticipantInfoEntityImpl);
      this.f.put(Long.valueOf(paramParticipantInfoEntityImpl.getId()), paramParticipantInfoEntityImpl);
      this.g.put(paramParticipantInfoEntityImpl.getNumber(), paramParticipantInfoEntityImpl);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  private static void a(String paramString) {}
  
  private void a(List<ParticipantInfoEntityImpl> paramList)
  {
    HashMap localHashMap1 = new HashMap();
    HashMap localHashMap2 = new HashMap();
    Iterator localIterator = paramList.iterator();
    while (localIterator.hasNext())
    {
      ParticipantInfoEntityImpl localParticipantInfoEntityImpl = (ParticipantInfoEntityImpl)localIterator.next();
      localHashMap1.put(Long.valueOf(localParticipantInfoEntityImpl.getId()), localParticipantInfoEntityImpl);
      localHashMap2.put(localParticipantInfoEntityImpl.getNumber(), localParticipantInfoEntityImpl);
    }
    try
    {
      this.f.putAll(localHashMap1);
      this.g.putAll(localHashMap2);
      return;
    }
    finally {}
  }
  
  private void a(Set<String> paramSet, Map<String, List<com.viber.voip.contacts.b.b>> paramMap, Map<Long, com.viber.voip.contacts.b.b> paramMap1)
  {
    List localList1 = this.c.f(paramSet);
    HashSet localHashSet = new HashSet();
    Iterator localIterator = localList1.iterator();
    ParticipantInfoEntityImpl localParticipantInfoEntityImpl;
    com.viber.voip.contacts.b.b localb2;
    if (localIterator.hasNext())
    {
      localParticipantInfoEntityImpl = (ParticipantInfoEntityImpl)localIterator.next();
      if (localParticipantInfoEntityImpl.getContactId() > 0L)
      {
        localb2 = (com.viber.voip.contacts.b.b)paramMap1.get(Long.valueOf(localParticipantInfoEntityImpl.getContactId()));
        if ((localb2 == null) || (localb2.l().contains(localParticipantInfoEntityImpl.getNumber()))) {
          break label606;
        }
      }
    }
    label606:
    for (com.viber.voip.contacts.b.b localb3 = null;; localb3 = localb2)
    {
      if (localb3 == null)
      {
        List localList3 = (List)paramMap.get(localParticipantInfoEntityImpl.getNumber());
        if ((localList3 != null) && (localList3.size() > 0)) {
          localb3 = (com.viber.voip.contacts.b.b)localList3.get(0);
        }
      }
      if ((localb3 == null) || (localb3.k() == null)) {}
      for (String str2 = "";; str2 = localb3.k().toString())
      {
        if (localb3 != null) {
          break label255;
        }
        localParticipantInfoEntityImpl.setContactId(0L);
        localParticipantInfoEntityImpl.setNativePhotoId(0L);
        localParticipantInfoEntityImpl.setNativeContactId(0L);
        localParticipantInfoEntityImpl.setContactName("");
        this.c.b(localParticipantInfoEntityImpl);
        a(localParticipantInfoEntityImpl);
        localHashSet.add(Long.valueOf(localParticipantInfoEntityImpl.getId()));
        break;
      }
      label255:
      if ((localParticipantInfoEntityImpl.getContactId() == localb3.getId()) && (localParticipantInfoEntityImpl.getNativePhotoId() == localb3.f()) && (localParticipantInfoEntityImpl.getNativeContactId() == localb3.c()) && (gj.a(localParticipantInfoEntityImpl.getContactName(), localb3.a())) && (gj.a(localParticipantInfoEntityImpl.getViberImage(), str2))) {
        break;
      }
      localParticipantInfoEntityImpl.setContactId(localb3.getId());
      localParticipantInfoEntityImpl.setNativePhotoId(localb3.f());
      localParticipantInfoEntityImpl.setNativeContactId(localb3.c());
      localParticipantInfoEntityImpl.setContactName(localb3.a());
      localParticipantInfoEntityImpl.setViberImage(str2);
      this.c.b(localParticipantInfoEntityImpl);
      a(localParticipantInfoEntityImpl);
      localHashSet.add(Long.valueOf(localParticipantInfoEntityImpl.getId()));
      break;
      List localList2 = (List)paramMap.get(localParticipantInfoEntityImpl.getNumber());
      if ((localList2 == null) || (localList2.size() <= 0)) {
        break;
      }
      com.viber.voip.contacts.b.b localb1 = (com.viber.voip.contacts.b.b)localList2.get(0);
      if (localb1.k() == null) {}
      for (String str1 = null;; str1 = localb1.k().toString())
      {
        localParticipantInfoEntityImpl.setContactId(localb1.getId());
        localParticipantInfoEntityImpl.setNativePhotoId(localb1.f());
        localParticipantInfoEntityImpl.setContactName(localb1.a());
        localParticipantInfoEntityImpl.setViberImage(str1);
        this.c.b(localParticipantInfoEntityImpl);
        a(localParticipantInfoEntityImpl);
        localHashSet.add(Long.valueOf(localParticipantInfoEntityImpl.getId()));
        break;
      }
      if (localHashSet.size() > 0)
      {
        Set localSet = this.c.d(localHashSet);
        this.b.g(localSet, false);
      }
      return;
    }
  }
  
  private String c(String paramString, boolean paramBoolean)
  {
    ParticipantInfoEntityImpl localParticipantInfoEntityImpl = (ParticipantInfoEntityImpl)this.g.get(paramString);
    if (localParticipantInfoEntityImpl != null) {
      paramString = gj.a(localParticipantInfoEntityImpl.getCommonContactName(paramBoolean), -1);
    }
    return paramString;
  }
  
  private void c(Set<String> paramSet)
  {
    ViberApplication.getInstance().getContactManager().a(paramSet, new g(this, paramSet));
  }
  
  public static a d()
  {
    if (a == null) {}
    try
    {
      if (a == null) {
        a = new b();
      }
      return a;
    }
    finally {}
  }
  
  public Bitmap a(Context paramContext, int paramInt1, int paramInt2, int paramInt3, long paramLong, ParticipantInfoEntityImpl paramParticipantInfoEntityImpl)
  {
    return a(paramContext, paramInt1, paramInt2, paramInt3, paramLong, paramParticipantInfoEntityImpl, false);
  }
  
  public Bitmap a(Context paramContext, int paramInt1, int paramInt2, int paramInt3, long paramLong, ParticipantInfoEntityImpl paramParticipantInfoEntityImpl, boolean paramBoolean)
  {
    as localas = as.a();
    LinkedList localLinkedList = new LinkedList();
    List localList = localas.f(paramLong);
    if (paramParticipantInfoEntityImpl != null) {
      localLinkedList.add(paramParticipantInfoEntityImpl.getCommonContactImage());
    }
    Iterator localIterator = localList.iterator();
    while (localIterator.hasNext())
    {
      ParticipantInfoEntityImpl localParticipantInfoEntityImpl = (ParticipantInfoEntityImpl)localIterator.next();
      if ((paramParticipantInfoEntityImpl == null) || (localParticipantInfoEntityImpl.getId() != paramParticipantInfoEntityImpl.getId())) {
        localLinkedList.add(localParticipantInfoEntityImpl.getCommonContactImage());
      }
    }
    return h.a(paramInt1, paramContext, 2130838219, paramInt2, paramInt3, (Uri[])localLinkedList.toArray(new Uri[localLinkedList.size()]));
  }
  
  /* Error */
  public Uri a(long paramLong, boolean paramBoolean)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 48	com/viber/voip/messages/a/b:f	Ljava/util/Map;
    //   6: lload_1
    //   7: invokestatic 170	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   10: invokeinterface 202 2 0
    //   15: checkcast 161	com/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl
    //   18: astore 5
    //   20: aload 5
    //   22: ifnull +20 -> 42
    //   25: aload 5
    //   27: iload_3
    //   28: invokevirtual 341	com/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl:getCommonContactImage	(Z)Landroid/net/Uri;
    //   31: astore 6
    //   33: aload 6
    //   35: astore 7
    //   37: aload_0
    //   38: monitorexit
    //   39: aload 7
    //   41: areturn
    //   42: aconst_null
    //   43: astore 7
    //   45: goto -8 -> 37
    //   48: astore 4
    //   50: aload_0
    //   51: monitorexit
    //   52: aload 4
    //   54: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	55	0	this	b
    //   0	55	1	paramLong	long
    //   0	55	3	paramBoolean	boolean
    //   48	5	4	localObject	Object
    //   18	8	5	localParticipantInfoEntityImpl	ParticipantInfoEntityImpl
    //   31	3	6	localUri1	Uri
    //   35	9	7	localUri2	Uri
    // Exception table:
    //   from	to	target	type
    //   2	20	48	finally
    //   25	33	48	finally
  }
  
  /* Error */
  public Uri a(String paramString, boolean paramBoolean)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 50	com/viber/voip/messages/a/b:g	Ljava/util/Map;
    //   6: aload_1
    //   7: invokeinterface 202 2 0
    //   12: checkcast 161	com/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl
    //   15: astore 4
    //   17: aload 4
    //   19: ifnull +20 -> 39
    //   22: aload 4
    //   24: iload_2
    //   25: invokevirtual 341	com/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl:getCommonContactImage	(Z)Landroid/net/Uri;
    //   28: astore 5
    //   30: aload 5
    //   32: astore 6
    //   34: aload_0
    //   35: monitorexit
    //   36: aload 6
    //   38: areturn
    //   39: aconst_null
    //   40: astore 6
    //   42: goto -8 -> 34
    //   45: astore_3
    //   46: aload_0
    //   47: monitorexit
    //   48: aload_3
    //   49: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	50	0	this	b
    //   0	50	1	paramString	String
    //   0	50	2	paramBoolean	boolean
    //   45	4	3	localObject	Object
    //   15	8	4	localParticipantInfoEntityImpl	ParticipantInfoEntityImpl
    //   28	3	5	localUri1	Uri
    //   32	9	6	localUri2	Uri
    // Exception table:
    //   from	to	target	type
    //   2	17	45	finally
    //   22	30	45	finally
  }
  
  public ParticipantInfoEntityImpl a(Uri paramUri, String paramString)
  {
    ParticipantInfoEntityImpl localParticipantInfoEntityImpl = this.c.c(paramString);
    if (localParticipantInfoEntityImpl != null) {
      if (paramUri == null) {
        break label78;
      }
    }
    label78:
    for (String str = paramUri.toString();; str = "")
    {
      localParticipantInfoEntityImpl.setViberImage(str);
      this.c.b(localParticipantInfoEntityImpl);
      w.a(ViberApplication.getInstance()).b(paramUri);
      a(localParticipantInfoEntityImpl);
      Set localSet = this.c.g(localParticipantInfoEntityImpl.getId());
      this.b.g(localSet, false);
      return localParticipantInfoEntityImpl;
    }
  }
  
  public ParticipantInfoEntityImpl a(Uri paramUri, String paramString1, String paramString2)
  {
    ParticipantInfoEntityImpl localParticipantInfoEntityImpl = this.c.c(paramString2);
    if (localParticipantInfoEntityImpl != null) {
      if (paramUri == null) {
        break label91;
      }
    }
    label91:
    for (String str = paramUri.toString();; str = "")
    {
      localParticipantInfoEntityImpl.setViberImage(str);
      localParticipantInfoEntityImpl.setViberName(paramString1);
      this.c.b(localParticipantInfoEntityImpl);
      w.a(ViberApplication.getInstance()).b(paramUri);
      a(localParticipantInfoEntityImpl);
      Set localSet = this.c.g(localParticipantInfoEntityImpl.getId());
      this.b.g(localSet, false);
      return localParticipantInfoEntityImpl;
    }
  }
  
  public String a(Resources paramResources, ct paramct)
  {
    return a(paramResources, false, Collections.singletonList(paramct));
  }
  
  public String a(Resources paramResources, Collection<ct> paramCollection)
  {
    return a(paramResources, true, paramCollection);
  }
  
  public String a(String paramString, int paramInt)
  {
    ParticipantInfoEntityImpl localParticipantInfoEntityImpl = (ParticipantInfoEntityImpl)this.g.get(paramString);
    if (localParticipantInfoEntityImpl != null) {
      paramString = localParticipantInfoEntityImpl.getCommonContactName(true, paramInt);
    }
    return paramString;
  }
  
  public void a()
  {
    this.d.post(new d(this));
  }
  
  public void a(Set<String> paramSet)
  {
    Set localSet = this.c.b(paramSet);
    if (localSet.size() == 0) {
      return;
    }
    c(localSet);
  }
  
  public String b(String paramString, boolean paramBoolean)
  {
    ParticipantInfoEntityImpl localParticipantInfoEntityImpl = (ParticipantInfoEntityImpl)this.g.get(paramString);
    if (localParticipantInfoEntityImpl != null) {
      paramString = localParticipantInfoEntityImpl.getCommonContactName(paramBoolean);
    }
    return paramString;
  }
  
  public void b()
  {
    this.d.post(new e(this));
  }
  
  public void b(Set<Long> paramSet)
  {
    Set localSet = this.c.c(paramSet);
    if (localSet.size() == 0) {
      return;
    }
    c(localSet);
  }
  
  public void c()
  {
    this.d.post(new f(this));
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.a.b
 * JD-Core Version:    0.7.0.1
 */