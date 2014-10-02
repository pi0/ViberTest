package com.viber.voip.messages.controller;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Handler;
import android.text.TextUtils;
import android.widget.Toast;
import com.viber.jni.PhoneControllerWrapper;
import com.viber.jni.PublicGroupInfo;
import com.viber.jni.ptt.PttController;
import com.viber.voip.ViberApplication;
import com.viber.voip.calls.entities.impl.CallEntityImpl;
import com.viber.voip.dc;
import com.viber.voip.dk;
import com.viber.voip.e.u;
import com.viber.voip.messages.controller.c.ao;
import com.viber.voip.messages.controller.c.ap;
import com.viber.voip.messages.controller.c.as;
import com.viber.voip.messages.controller.c.b;
import com.viber.voip.messages.controller.c.e;
import com.viber.voip.messages.conversation.publicgroup.aq;
import com.viber.voip.messages.i;
import com.viber.voip.messages.orm.entity.impl.ConversationEntityImpl;
import com.viber.voip.messages.orm.entity.impl.MessageEntityImpl;
import com.viber.voip.messages.orm.entity.impl.PublicGroupMessageInfoEntityImpl;
import com.viber.voip.phone.v;
import com.viber.voip.registration.cp;
import com.viber.voip.util.b.al;
import com.viber.voip.util.b.b.f;
import com.viber.voip.util.bj;
import com.viber.voip.util.ft;
import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

public class by
  implements x
{
  private Context a;
  private e b;
  private as c;
  private cr d;
  private ce e;
  private Handler f;
  private Set<Long> g = Collections.synchronizedSet(new HashSet());
  private final com.viber.voip.util.b.w h;
  private final com.viber.voip.util.b.x i;
  private al j;
  
  public by(Context paramContext)
  {
    this.a = paramContext;
    this.b = e.a();
    this.f = dc.a(dk.d);
    this.d = new cr(paramContext);
    this.e = new ce(paramContext, this.f);
    this.c = as.a();
    this.h = com.viber.voip.util.b.w.a(paramContext);
    this.i = new com.viber.voip.util.b.z().a(new f(this.a)).d(true).b(false).b();
  }
  
  private void a(MessageEntityImpl paramMessageEntityImpl, boolean paramBoolean)
  {
    this.d.b(paramMessageEntityImpl);
    if ((!paramBoolean) && ("animated_message".equals(paramMessageEntityImpl.getMimeType()))) {
      Toast.makeText(this.a, 2131494418, 0).show();
    }
  }
  
  private void b(MessageEntityImpl paramMessageEntityImpl)
  {
    bz localbz = new bz(this, paramMessageEntityImpl);
    if (!this.e.b(paramMessageEntityImpl, localbz)) {
      this.e.a(paramMessageEntityImpl, localbz);
    }
  }
  
  public void a()
  {
    List localList = this.c.k();
    ViberApplication.log("downloadMediaMessages size: " + localList.size());
    Iterator localIterator = localList.iterator();
    while (localIterator.hasNext())
    {
      MessageEntityImpl localMessageEntityImpl = (MessageEntityImpl)localIterator.next();
      ViberApplication.log("downloadMediaMessages: " + localMessageEntityImpl);
      if (this.e.a(localMessageEntityImpl)) {
        if ("sound".equals(localMessageEntityImpl.getMimeType())) {
          ViberApplication.getInstance().getPhoneController(false).getPttController().handleDownloadPtt(localMessageEntityImpl.getDownloadId());
        } else {
          b(localMessageEntityImpl);
        }
      }
    }
  }
  
  public void a(int paramInt, long paramLong1, long paramLong2, long paramLong3)
  {
    PublicGroupMessageInfoEntityImpl localPublicGroupMessageInfoEntityImpl = this.c.l(paramLong2);
    boolean bool;
    int k;
    if (localPublicGroupMessageInfoEntityImpl != null)
    {
      if (localPublicGroupMessageInfoEntityImpl.getLiked() == 1) {
        break label129;
      }
      bool = true;
      if (!bool) {
        break label135;
      }
      k = 1;
      label36:
      localPublicGroupMessageInfoEntityImpl.setLiked(k);
      localPublicGroupMessageInfoEntityImpl.setSyncLike(0);
      if (!bool) {
        break label141;
      }
    }
    label129:
    label135:
    label141:
    for (int m = 1 + localPublicGroupMessageInfoEntityImpl.getLikesCount();; m = -1 + localPublicGroupMessageInfoEntityImpl.getLikesCount())
    {
      localPublicGroupMessageInfoEntityImpl.setLikesCount(m);
      this.c.b(localPublicGroupMessageInfoEntityImpl);
      this.b.a(localPublicGroupMessageInfoEntityImpl.getConversationId(), localPublicGroupMessageInfoEntityImpl.getMessageToken(), false);
      ViberApplication.getInstance().getPhoneController(true).handleLikePublicGroupMessage(paramLong1, localPublicGroupMessageInfoEntityImpl.getMessageToken(), paramInt, bool, paramLong3, (int)(System.currentTimeMillis() / 1000L));
      return;
      bool = false;
      break;
      k = 0;
      break label36;
    }
  }
  
  public void a(int paramInt1, String paramString1, long paramLong, String paramString2, int paramInt2, boolean paramBoolean, PublicGroupInfo paramPublicGroupInfo, ad paramad)
  {
    ConversationEntityImpl localConversationEntityImpl = this.d.a(paramInt1, paramString1, paramLong, paramString2, paramInt2, paramPublicGroupInfo, paramBoolean);
    if (paramInt1 == 3) {}
    for (Object localObject = new aq(localConversationEntityImpl, this.c.b(paramLong));; localObject = new com.viber.voip.messages.conversation.h(localConversationEntityImpl))
    {
      if (paramad != null) {
        paramad.a((com.viber.voip.messages.conversation.h)localObject);
      }
      return;
    }
  }
  
  public void a(long paramLong)
  {
    MessageEntityImpl localMessageEntityImpl = this.c.m(paramLong);
    if (localMessageEntityImpl != null)
    {
      if ("sound".equals(localMessageEntityImpl.getMimeType())) {
        ViberApplication.getInstance().getPhoneController(true).getPttController().handleDownloadPtt(localMessageEntityImpl.getDownloadId());
      }
    }
    else {
      return;
    }
    b(localMessageEntityImpl);
  }
  
  public void a(long paramLong, int paramInt)
  {
    this.g.remove(Long.valueOf(paramLong));
    this.d.a(paramLong, paramInt);
  }
  
  public void a(long paramLong1, long paramLong2, long paramLong3)
  {
    this.d.a(paramLong1, paramLong2, paramLong3);
    ViberApplication.getInstance().getPhoneApp().a().d(paramLong1);
  }
  
  public void a(long paramLong, aa paramaa)
  {
    HashSet localHashSet = new HashSet();
    localHashSet.add(Long.valueOf(paramLong));
    this.d.a(localHashSet);
    if (paramaa != null) {
      paramaa.a(localHashSet);
    }
  }
  
  public void a(long paramLong, ac paramac)
  {
    if (paramac != null) {
      paramac.a(this.c.c(paramLong));
    }
  }
  
  public void a(long paramLong, ae paramae)
  {
    if (paramae != null) {
      paramae.a(this.c.m(paramLong));
    }
  }
  
  public void a(long paramLong, af paramaf)
  {
    if (paramaf != null) {
      paramaf.a(this.c.r(paramLong));
    }
  }
  
  public void a(long paramLong, ag paramag)
  {
    Map localMap = this.c.h(paramLong);
    dc.a(dk.a).post(new cb(this, paramag, localMap));
  }
  
  public void a(long paramLong, y paramy)
  {
    for (;;)
    {
      int k;
      try
      {
        List localList = this.c.d("sound");
        PttController localPttController = ViberApplication.getInstance().getPhoneController(true).getPttController();
        Iterator localIterator = localList.iterator();
        l1 = bj.a(com.viber.voip.w.u);
        if (((paramLong > 0L) && (l1 > paramLong) && (localIterator.hasNext())) || ((paramLong <= 0L) && (localIterator.hasNext())))
        {
          MessageEntityImpl localMessageEntityImpl = (MessageEntityImpl)localIterator.next();
          if (localMessageEntityImpl.getMediaUri() != null)
          {
            l2 = l1 - localPttController.handleDeletePtt(localMessageEntityImpl.getMediaUri());
            break label282;
          }
        }
        else
        {
          long l3 = bj.a(com.viber.voip.w.u);
          if (l3 > paramLong)
          {
            File localFile = new File(com.viber.voip.w.u);
            if ((localFile.exists()) && (localFile.isDirectory()))
            {
              File[] arrayOfFile = localFile.listFiles();
              k = 0;
              long l4 = l3;
              if ((k < arrayOfFile.length) && (l4 > paramLong))
              {
                if (!arrayOfFile[k].isFile()) {
                  break label295;
                }
                l5 = arrayOfFile[k].length();
                if ((!arrayOfFile[k].exists()) || (!arrayOfFile[k].isFile()) || (!arrayOfFile[k].delete())) {
                  break label289;
                }
                l4 -= l5;
                break label289;
              }
            }
          }
          if (paramy != null) {
            paramy.a();
          }
          return;
        }
      }
      finally {}
      long l2 = l1;
      label282:
      long l1 = l2;
      continue;
      label289:
      k++;
      continue;
      label295:
      long l5 = 0L;
    }
  }
  
  public void a(long paramLong, String paramString)
  {
    this.d.b(paramLong, paramString);
  }
  
  public void a(long paramLong, String paramString, int paramInt1, int paramInt2)
  {
    this.d.a(paramLong, paramString, paramInt1, paramInt2);
  }
  
  public void a(long paramLong, boolean paramBoolean)
  {
    this.d.c(paramLong, paramBoolean);
  }
  
  public void a(long paramLong, boolean paramBoolean, ai paramai)
  {
    this.d.a(paramLong, paramBoolean);
    if (paramai != null) {
      paramai.a();
    }
  }
  
  public void a(CallEntityImpl paramCallEntityImpl, int paramInt)
  {
    this.d.a(paramCallEntityImpl, paramInt);
  }
  
  public void a(ac paramac)
  {
    if (paramac != null) {
      paramac.a(this.c.o());
    }
  }
  
  public void a(aj paramaj)
  {
    if (paramaj == null) {
      return;
    }
    int k = ViberApplication.getInstance().getPhoneController(true).generateSequence();
    String str = ViberApplication.getInstance().getRegistrationValues().c();
    ArrayList localArrayList = new ArrayList();
    cd localcd = new cd(this, k, localArrayList, paramaj);
    if (ft.b(this.a))
    {
      PhoneControllerWrapper localPhoneControllerWrapper = ViberApplication.getInstance().getPhoneController(true);
      localPhoneControllerWrapper.registerDelegate(localcd);
      localPhoneControllerWrapper.handleSearchPublicGroupsForCountry(k, str, 1);
      return;
    }
    paramaj.a(localArrayList);
  }
  
  public void a(ao paramao, ah paramah)
  {
    if (paramah == null) {
      return;
    }
    if ((paramao == null) || (TextUtils.isEmpty(paramao.a()))) {}
    for (ao localao = new ap().a("").a(); paramao.f(); localao = paramao)
    {
      ArrayList localArrayList = this.c.b(localao);
      a(new cc(this, localArrayList, paramah, localao));
      paramah.a(localao, localArrayList);
      return;
    }
    paramah.a(localao, this.c.a(localao));
  }
  
  public void a(MessageEntityImpl paramMessageEntityImpl)
  {
    if ((TextUtils.isEmpty(paramMessageEntityImpl.getRecipientNumber())) && (paramMessageEntityImpl.getGroupId() <= 0L)) {
      return;
    }
    this.d.a(paramMessageEntityImpl);
  }
  
  public void a(String paramString)
  {
    this.d.a(paramString);
  }
  
  public void a(String paramString, ai paramai)
  {
    this.d.b(paramString);
    if (paramai != null) {
      paramai.a();
    }
  }
  
  public void a(String paramString1, String paramString2, boolean paramBoolean, ab paramab)
  {
    this.d.a(paramString1, paramString2, paramBoolean);
    if (paramab != null) {
      paramab.a();
    }
  }
  
  public void a(Set<Long> paramSet, aa paramaa)
  {
    b.a().a(paramSet);
    this.d.a(paramSet, paramaa);
  }
  
  public void a(Set<Long> paramSet, boolean paramBoolean, aa paramaa)
  {
    if (paramBoolean)
    {
      Iterator localIterator = paramSet.iterator();
      while (localIterator.hasNext())
      {
        Long localLong = (Long)localIterator.next();
        MessageEntityImpl localMessageEntityImpl = this.c.m(localLong.longValue());
        if (localMessageEntityImpl.getMediaUri() != null)
        {
          if (!TextUtils.isEmpty(localMessageEntityImpl.getMediaUri())) {
            com.viber.voip.messages.extras.image.h.c(ViberApplication.getInstance(), Uri.parse(localMessageEntityImpl.getMediaUri()));
          }
          if (!TextUtils.isEmpty(localMessageEntityImpl.getBody())) {
            com.viber.voip.messages.extras.image.h.c(ViberApplication.getInstance(), Uri.parse(localMessageEntityImpl.getBody()));
          }
        }
      }
    }
    this.d.a(paramSet);
    if (paramaa != null) {
      paramaa.a(paramSet);
    }
  }
  
  public void a(Set<Long> paramSet, boolean paramBoolean, ai paramai)
  {
    this.d.a(paramSet, paramBoolean);
    if (paramai != null) {
      paramai.a();
    }
  }
  
  public void a(boolean paramBoolean, z paramz)
  {
    ViberApplication.getInstance().getMessagesManager().a().c();
    e locale = this.b;
    if (paramBoolean) {}
    for (Set localSet = this.c.v();; localSet = this.c.u())
    {
      locale.b(localSet, false);
      if (paramz != null) {
        paramz.a();
      }
      return;
    }
  }
  
  public void a(MessageEntityImpl[] paramArrayOfMessageEntityImpl)
  {
    this.d.a(paramArrayOfMessageEntityImpl);
  }
  
  public void b()
  {
    if (!ft.b(this.a)) {
      this.a.startActivity(new Intent("com.viber.voip.action.CONNECTION_PROBLEM").setFlags(268435456));
    }
  }
  
  public void b(long paramLong)
  {
    this.d.a(paramLong);
  }
  
  public void b(long paramLong, int paramInt)
  {
    this.g.remove(Long.valueOf(paramLong));
    this.d.b(paramLong, paramInt);
  }
  
  public void b(long paramLong1, long paramLong2, long paramLong3)
  {
    this.d.b(paramLong1, paramLong2, paramLong3);
    ViberApplication.getInstance().getPhoneApp().a().d(paramLong1);
  }
  
  public void b(long paramLong, String paramString)
  {
    this.d.c(paramLong, paramString);
  }
  
  public void c(long paramLong)
  {
    this.d.b(paramLong);
  }
  
  public void c(long paramLong, String paramString)
  {
    if (this.c.d(paramLong, paramString) > 0)
    {
      MessageEntityImpl localMessageEntityImpl = this.c.m(paramLong);
      this.b.a(localMessageEntityImpl.getConversationId(), localMessageEntityImpl.getMessageToken(), false);
    }
  }
  
  public void d(long paramLong)
  {
    this.d.c(paramLong);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.controller.by
 * JD-Core Version:    0.7.0.1
 */