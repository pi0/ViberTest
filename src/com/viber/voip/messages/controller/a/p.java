package com.viber.voip.messages.controller.a;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Handler;
import android.telephony.PhoneNumberUtils;
import com.viber.jni.PhoneControllerDelegate.ViberConnectionState;
import com.viber.jni.PhoneControllerWrapper;
import com.viber.jni.ptt.PttController;
import com.viber.voip.ViberApplication;
import com.viber.voip.messages.controller.c.as;
import com.viber.voip.messages.controller.c.e;
import com.viber.voip.messages.controller.ce;
import com.viber.voip.messages.controller.cp;
import com.viber.voip.messages.controller.cq;
import com.viber.voip.messages.controller.cr;
import com.viber.voip.messages.controller.de;
import com.viber.voip.messages.extras.image.h;
import com.viber.voip.messages.extras.image.l;
import com.viber.voip.messages.extras.image.m;
import com.viber.voip.messages.j;
import com.viber.voip.messages.orm.entity.impl.ConversationEntityImpl;
import com.viber.voip.messages.orm.entity.impl.MessageEntityImpl;
import com.viber.voip.messages.orm.entity.impl.ParticipantInfoEntityImpl;
import com.viber.voip.util.gj;
import com.viber.voip.util.upload.ac;
import java.io.File;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

public class p
  extends a
  implements de
{
  private static final String c = p.class.getSimpleName();
  private final com.viber.voip.messages.extras.a.a d;
  private final cq e;
  private final as f;
  private final e g;
  private final cp h;
  private final ce i;
  private final cr j;
  private final Handler k;
  private final Context l;
  private boolean m;
  private int n = -1;
  
  public p(Context paramContext, Handler paramHandler)
  {
    this.l = paramContext;
    this.k = paramHandler;
    this.f = as.a();
    this.g = e.a();
    this.d = ViberApplication.getInstance().getLocationManager();
    this.h = new cp(this.l);
    this.e = cq.a();
    this.i = new ce(this.l, this.k);
    this.j = new cr(paramContext);
    this.g.a(this);
  }
  
  private void a()
  {
    Iterator localIterator = this.f.j().iterator();
    while (localIterator.hasNext())
    {
      MessageEntityImpl localMessageEntityImpl = (MessageEntityImpl)localIterator.next();
      this.h.a(localMessageEntityImpl);
      if ((localMessageEntityImpl.isImage()) && (localMessageEntityImpl.getThumbnailUri() == null))
      {
        com.viber.voip.messages.extras.image.a locala = m.a(this.l, Uri.parse(localMessageEntityImpl.getMediaUri()));
        if (locala != null)
        {
          localMessageEntityImpl.setBody(locala.a.toString());
          localMessageEntityImpl.setThumbnailHeight(locala.c);
          localMessageEntityImpl.setThumbnailWidth(locala.b);
        }
        this.f.b(localMessageEntityImpl);
        this.g.a(localMessageEntityImpl.getConversationId(), localMessageEntityImpl.getMessageToken(), false);
      }
      if ((this.b.isConnected()) && (localMessageEntityImpl.getStatus() != 10))
      {
        if (localMessageEntityImpl.isNeedLoactionStatus())
        {
          localMessageEntityImpl.setStatus(6);
          this.f.b(localMessageEntityImpl);
          long l2 = localMessageEntityImpl.getId();
          if (localMessageEntityImpl.getConversationType() == 2) {}
          for (boolean bool3 = true;; bool3 = false)
          {
            a(l2, bool3);
            break;
          }
        }
        if ((localMessageEntityImpl.isNeedMediaUpload()) && (!localMessageEntityImpl.getMimeType().equals("animated_message")))
        {
          localMessageEntityImpl.setStatus(5);
          this.f.b(localMessageEntityImpl);
          a(localMessageEntityImpl, false);
        }
        else
        {
          long l1 = localMessageEntityImpl.getObjectId();
          int i1 = b(localMessageEntityImpl);
          boolean bool1 = localMessageEntityImpl.isResendMessage();
          if (!bool1)
          {
            localMessageEntityImpl.addExtraFlag(9);
            this.f.b(localMessageEntityImpl);
          }
          String str1 = "";
          String str2 = "";
          if (i1 == 2)
          {
            str1 = localMessageEntityImpl.getDownloadId();
            str2 = localMessageEntityImpl.getBucket();
          }
          if (localMessageEntityImpl.isGroup()) {}
          for (boolean bool2 = a(localMessageEntityImpl, bool1, i1, str1, str2, l1);; bool2 = b(localMessageEntityImpl, bool1, i1, str1, str2, l1))
          {
            if (bool2)
            {
              localMessageEntityImpl.setStatus(3);
              this.f.b(localMessageEntityImpl);
            }
            if ((!bool2) || (!localMessageEntityImpl.isImage())) {
              break;
            }
            h.c(this.l, h.a(l.d, localMessageEntityImpl.getMediaUri()));
            break;
          }
        }
      }
    }
  }
  
  private void a(long paramLong, boolean paramBoolean)
  {
    this.d.a(paramLong, new x(this, paramLong), paramBoolean);
  }
  
  private boolean a(MessageEntityImpl paramMessageEntityImpl)
  {
    File localFile = h.a(l.d, paramMessageEntityImpl.getMediaUri(), false);
    if (localFile == null) {
      return false;
    }
    boolean bool;
    if ((0L == paramMessageEntityImpl.getDuration()) || (localFile.length() == 0L)) {
      try
      {
        com.viber.voip.messages.extras.image.a locala = h.a(this.l, Uri.parse(paramMessageEntityImpl.getMediaUri()), l.d, 1280, 1280, true, 256000);
        if (locala != null) {
          paramMessageEntityImpl.setDuration(m.a(this.l, locala.a, "image"));
        }
        for (;;)
        {
          this.f.b(paramMessageEntityImpl);
          if (locala == null) {
            break;
          }
          bool = true;
          break label128;
          paramMessageEntityImpl.setStatus(-1);
        }
        bool = false;
      }
      catch (IOException localIOException)
      {
        return false;
      }
    } else {
      return true;
    }
    label128:
    return bool;
  }
  
  private boolean a(MessageEntityImpl paramMessageEntityImpl, boolean paramBoolean, int paramInt, String paramString1, String paramString2, long paramLong)
  {
    if (paramMessageEntityImpl.getMimeType().equals("sound")) {
      return this.b.getPttController().handleSendPttToGroup(paramMessageEntityImpl.getGroupId(), paramMessageEntityImpl.getMessageSeq(), paramMessageEntityImpl.getObjectId(), (int)paramMessageEntityImpl.getDuration(), paramMessageEntityImpl.getLocation(), paramBoolean, paramInt, paramString1, paramString2);
    }
    if (((paramLong <= 0L) && (paramInt <= 0)) || ((paramMessageEntityImpl.getMediaUri() != null) || ("sticker".equals(paramMessageEntityImpl.getMimeType())) || ("location".equals(paramMessageEntityImpl.getMimeType())) || ("animated_message".equals(paramMessageEntityImpl.getMimeType()))))
    {
      Uri localUri;
      String str;
      if (("animated_message".equals(paramMessageEntityImpl.getMimeType())) && (gj.c(paramMessageEntityImpl.getMediaUri())))
      {
        localUri = com.viber.voip.k.a.c(paramMessageEntityImpl.getDownloadId());
        if (localUri == null) {
          str = null;
        }
      }
      byte[][] arrayOfByte;
      for (;;)
      {
        arrayOfByte = m.a(this.l, str);
        paramMessageEntityImpl.getMediaFlag();
        int i1 = (int)paramMessageEntityImpl.getDuration();
        if (!"video".equals(paramMessageEntityImpl.getMimeType())) {
          break;
        }
        return this.b.handleSendVideoToGroup(paramMessageEntityImpl.getGroupId(), arrayOfByte[0], arrayOfByte[1], paramMessageEntityImpl.getMessageSeq(), paramMessageEntityImpl.getObjectId(), paramMessageEntityImpl.getLocation(), paramMessageEntityImpl.getDescription(), i1, paramBoolean, paramInt, paramString1, paramString2);
        str = localUri.toString();
        continue;
        str = paramMessageEntityImpl.getMediaUri();
      }
      if ("animated_message".equals(paramMessageEntityImpl.getMimeType()))
      {
        if (!gj.c(paramMessageEntityImpl.getMediaUri())) {
          h.c(ViberApplication.getInstance(), com.viber.voip.k.a.c(paramMessageEntityImpl.getDownloadId()));
        }
        return this.b.handleSendAnimatedToGroup(paramMessageEntityImpl.getGroupId(), arrayOfByte[1], paramMessageEntityImpl.getMessageSeq(), paramMessageEntityImpl.getLocation(), paramMessageEntityImpl.getBucket(), paramBoolean, paramInt, paramString1, paramString2);
      }
      return this.b.handleSendMediaToGroup(paramMessageEntityImpl.getGroupId(), arrayOfByte[0], arrayOfByte[1], j.a(paramMessageEntityImpl.getMimeType()), paramMessageEntityImpl.getMessageSeq(), paramMessageEntityImpl.getObjectId(), paramMessageEntityImpl.getLocation(), paramMessageEntityImpl.getDescription(), paramMessageEntityImpl.getMediaFlag(), paramBoolean, paramInt, paramString1, paramString2);
    }
    if ("text".equals(paramMessageEntityImpl.getMimeType())) {
      return this.b.handleSendTextToGroup(paramMessageEntityImpl.getGroupId(), paramMessageEntityImpl.getBody(), paramMessageEntityImpl.getMessageSeq(), paramMessageEntityImpl.getLocation(), paramBoolean, paramInt);
    }
    return false;
  }
  
  private int b(MessageEntityImpl paramMessageEntityImpl)
  {
    boolean bool1 = paramMessageEntityImpl.isForwardedMessage();
    int i1 = 0;
    if (bool1)
    {
      boolean bool2 = paramMessageEntityImpl.isForwardedFromPG();
      i1 = 0;
      if (bool2) {
        i1 = 2;
      }
    }
    return i1;
  }
  
  private boolean b(MessageEntityImpl paramMessageEntityImpl, boolean paramBoolean, int paramInt, String paramString1, String paramString2, long paramLong)
  {
    String str1 = PhoneNumberUtils.stripSeparators(paramMessageEntityImpl.getRecipientNumber());
    if (paramMessageEntityImpl.getMimeType().equals("sound")) {
      return this.b.getPttController().handleSendPtt(paramMessageEntityImpl.getRecipientNumber(), paramMessageEntityImpl.getMessageSeq(), paramMessageEntityImpl.getObjectId(), (int)paramMessageEntityImpl.getDuration(), paramMessageEntityImpl.getLocation(), paramBoolean, paramInt, paramString1, paramString2);
    }
    if (((paramLong <= 0L) && (paramInt <= 0)) || ((paramMessageEntityImpl.getMediaUri() != null) || ("sticker".equals(paramMessageEntityImpl.getMimeType())) || ("location".equals(paramMessageEntityImpl.getMimeType())) || ("animated_message".equals(paramMessageEntityImpl.getMimeType()))))
    {
      Uri localUri;
      String str2;
      if (("animated_message".equals(paramMessageEntityImpl.getMimeType())) && (gj.c(paramMessageEntityImpl.getMediaUri())))
      {
        localUri = com.viber.voip.k.a.c(paramMessageEntityImpl.getDownloadId());
        if (localUri == null) {
          str2 = null;
        }
      }
      byte[][] arrayOfByte;
      int i1;
      for (;;)
      {
        arrayOfByte = m.a(this.l, str2);
        i1 = paramMessageEntityImpl.getMediaFlag();
        int i2 = (int)paramMessageEntityImpl.getDuration();
        if (!"video".equals(paramMessageEntityImpl.getMimeType())) {
          break;
        }
        return this.b.handleSendVideo(str1, arrayOfByte[0], arrayOfByte[1], paramMessageEntityImpl.getMessageSeq(), paramLong, paramMessageEntityImpl.getLocation(), paramMessageEntityImpl.getDescription(), i2, paramBoolean, paramInt, paramString1, paramString2);
        str2 = localUri.toString();
        continue;
        str2 = paramMessageEntityImpl.getMediaUri();
      }
      if ("animated_message".equals(paramMessageEntityImpl.getMimeType()))
      {
        if (!gj.c(paramMessageEntityImpl.getMediaUri())) {
          h.c(ViberApplication.getInstance(), com.viber.voip.k.a.c(paramMessageEntityImpl.getDownloadId()));
        }
        return this.b.handleSendAnimatedMessage(str1, arrayOfByte[1], paramMessageEntityImpl.getMessageSeq(), paramMessageEntityImpl.getLocation(), paramMessageEntityImpl.getBucket(), paramBoolean, paramInt, paramString1, paramString2);
      }
      return this.b.handleSendMedia(str1, arrayOfByte[0], arrayOfByte[1], j.a(paramMessageEntityImpl.getMimeType()), paramMessageEntityImpl.getMessageSeq(), paramLong, paramMessageEntityImpl.getLocation(), paramMessageEntityImpl.getDescription(), i1, paramBoolean, paramInt, paramString1, paramString2);
    }
    if ("text".equals(paramMessageEntityImpl.getMimeType())) {
      return this.b.handleSendText(str1, paramMessageEntityImpl.getBody(), paramMessageEntityImpl.getMessageSeq(), paramMessageEntityImpl.getLocation(), paramBoolean, paramInt);
    }
    return false;
  }
  
  public void a(long paramLong1, long paramLong2, long paramLong3, boolean paramBoolean)
  {
    if ((this.b != null) && (paramBoolean) && (paramLong3 == 0L)) {
      this.k.post(new r(this));
    }
  }
  
  public void a(long paramLong1, long paramLong2, boolean paramBoolean) {}
  
  public void a(long paramLong, String paramString1, String paramString2)
  {
    this.k.post(new z(this, paramLong, paramString1, paramString2));
  }
  
  public void a(MessageEntityImpl paramMessageEntityImpl, Uri paramUri)
  {
    this.i.a(paramMessageEntityImpl, paramUri, this.b.isConnected(), new t(this));
  }
  
  public void a(MessageEntityImpl paramMessageEntityImpl, boolean paramBoolean)
  {
    if ((!ac.a(this.l)) || (paramBoolean))
    {
      if ((paramMessageEntityImpl.isImage()) && (paramMessageEntityImpl.getMediaFlag() == 0))
      {
        if (a(paramMessageEntityImpl))
        {
          a(paramMessageEntityImpl, h.a(l.d, paramMessageEntityImpl.getMediaUri()));
          return;
        }
        this.l.startActivity(new Intent("com.viber.voip.action.ACTION_CORRUPTED_FILE").setFlags(268435456));
        return;
      }
      if (paramMessageEntityImpl.isImage())
      {
        a(paramMessageEntityImpl, Uri.parse(paramMessageEntityImpl.getMediaUri()));
        return;
      }
      if (paramMessageEntityImpl.getMimeType().equals("video"))
      {
        a(paramMessageEntityImpl, Uri.parse(paramMessageEntityImpl.getMediaUri()));
        return;
      }
      paramMessageEntityImpl.setStatus(4);
      this.f.b(paramMessageEntityImpl);
      return;
    }
    paramMessageEntityImpl.setStatus(4);
    this.f.b(paramMessageEntityImpl);
    this.i.a(paramMessageEntityImpl.getId(), Uri.parse(paramMessageEntityImpl.getMediaUri()), String.valueOf(paramMessageEntityImpl.getMessageSeq()), paramMessageEntityImpl.getMimeType());
  }
  
  public void a(String paramString, boolean paramBoolean)
  {
    a();
  }
  
  public void a(Set<Long> paramSet, boolean paramBoolean) {}
  
  public void b(long paramLong)
  {
    this.k.post(new s(this, paramLong));
  }
  
  public void b(long paramLong, String paramString1, String paramString2)
  {
    MessageEntityImpl localMessageEntityImpl = this.f.m(paramLong);
    if (localMessageEntityImpl == null) {}
    do
    {
      return;
      this.h.a(paramLong);
    } while ((localMessageEntityImpl == null) || (localMessageEntityImpl.getStatus() == 1) || (localMessageEntityImpl.getStatus() == 2) || (localMessageEntityImpl.getStatus() == -1));
    String str1;
    ConversationEntityImpl localConversationEntityImpl;
    String str2;
    if (this.b.getServiceState() == PhoneControllerDelegate.ViberConnectionState.NO_INTERNET)
    {
      str1 = "com.viber.voip.action.NO_INTERNET_DIALOG";
      if (str1 == null) {
        break label306;
      }
      localMessageEntityImpl.setStatus(-1);
      this.f.b(localMessageEntityImpl);
      if (!localMessageEntityImpl.isGroup()) {
        break label270;
      }
      localConversationEntityImpl = this.f.c(localMessageEntityImpl.getConversationId());
      if ((localConversationEntityImpl != null) && (!gj.c(localConversationEntityImpl.getGroupName()))) {
        break label260;
      }
      str2 = this.l.getString(2131494051);
      label145:
      this.h.a(str1, str2, localMessageEntityImpl);
    }
    for (;;)
    {
      this.d.a(Long.valueOf(localMessageEntityImpl.getId()));
      if (!gj.c(localMessageEntityImpl.getMediaUri())) {
        ac.a(Uri.parse(localMessageEntityImpl.getMediaUri()));
      }
      this.g.a(localMessageEntityImpl.getConversationId(), localMessageEntityImpl.getMessageToken(), false);
      return;
      if (this.b.getServiceState() == PhoneControllerDelegate.ViberConnectionState.SERVICE_NOT_CONNECTED)
      {
        str1 = "com.viber.voip.action.NO_SERVICE_DIALOG";
        break;
      }
      localMessageEntityImpl.setStatus(-1);
      this.f.b(localMessageEntityImpl);
      str1 = null;
      break;
      label260:
      str2 = localConversationEntityImpl.getGroupName();
      break label145;
      label270:
      ParticipantInfoEntityImpl localParticipantInfoEntityImpl = this.f.c(localMessageEntityImpl.getRecipientNumber());
      if (localParticipantInfoEntityImpl != null)
      {
        str2 = localParticipantInfoEntityImpl.getContactName();
        break label145;
      }
      str2 = "";
      break label145;
      label306:
      if (this.d.b(Long.valueOf(localMessageEntityImpl.getId())))
      {
        localMessageEntityImpl.setStatus(0);
        localMessageEntityImpl.setExtraStatus(3);
        this.f.b(localMessageEntityImpl);
      }
    }
  }
  
  public void b(Set<Long> paramSet, boolean paramBoolean) {}
  
  public boolean onMessageDelivered(long paramLong1, long paramLong2, int paramInt1, int paramInt2)
  {
    MessageEntityImpl localMessageEntityImpl1 = this.f.k(paramLong1);
    if (localMessageEntityImpl1 == null) {}
    for (MessageEntityImpl localMessageEntityImpl2 = this.f.a(paramInt1);; localMessageEntityImpl2 = localMessageEntityImpl1)
    {
      if (localMessageEntityImpl2 != null)
      {
        localMessageEntityImpl2.setMessageToken(paramLong1);
        localMessageEntityImpl2.setStatus(2);
        this.f.b(localMessageEntityImpl2);
        this.g.a(localMessageEntityImpl2.getConversationId(), localMessageEntityImpl2.getMessageToken(), false);
      }
      this.b.handleSendMessageDeliveredAck(paramLong1);
      return true;
    }
  }
  
  public void onSendMessageReply(int paramInt1, long paramLong, int paramInt2, int paramInt3)
  {
    if (paramInt1 == 0) {}
    MessageEntityImpl localMessageEntityImpl;
    do
    {
      return;
      localMessageEntityImpl = this.f.a(paramInt1);
    } while ((localMessageEntityImpl == null) || (localMessageEntityImpl.getStatus() == 2));
    localMessageEntityImpl.setRealDate(System.currentTimeMillis());
    localMessageEntityImpl.setMessageToken(paramLong);
    if (paramInt2 == 1)
    {
      this.e.c();
      localMessageEntityImpl.setMessageGlobalId(paramInt3);
      localMessageEntityImpl.setStatus(1);
      this.f.b(localMessageEntityImpl);
      if (localMessageEntityImpl.getConversationType() == 2) {
        this.j.a(paramLong, localMessageEntityImpl.getConversationId());
      }
      this.b.handleSendMessageReplyAck(paramLong);
    }
    for (;;)
    {
      if (this.f.t(localMessageEntityImpl.getConversationId()) == 0) {
        this.f.u(localMessageEntityImpl.getConversationId());
      }
      if (!localMessageEntityImpl.isDeleted()) {
        break;
      }
      this.g.b(localMessageEntityImpl.getConversationId(), true);
      return;
      if (paramInt2 == 2)
      {
        this.m = true;
        if (localMessageEntityImpl.getStatus() != -1)
        {
          localMessageEntityImpl.setStatus(0);
          this.f.b(localMessageEntityImpl);
          if (this.b.isConnected()) {
            a();
          }
        }
      }
      else if (paramInt2 == 7)
      {
        this.f.y(localMessageEntityImpl.getId());
      }
      else
      {
        if (paramInt2 == 0) {
          this.e.a(localMessageEntityImpl);
        }
        localMessageEntityImpl.setStatus(-1);
        this.f.b(localMessageEntityImpl);
      }
    }
    this.g.a(localMessageEntityImpl.getConversationId(), paramLong, false);
  }
  
  public void onServiceStateChanged(int paramInt)
  {
    this.n = paramInt;
    if (paramInt == PhoneControllerDelegate.ViberConnectionState.SERVICE_CONNECTED.ordinal())
    {
      this.f.q();
      this.f.r();
      this.k.post(new q(this));
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.controller.a.p
 * JD-Core Version:    0.7.0.1
 */