package com.viber.voip.messages.controller.a;

import android.content.Intent;
import com.viber.jni.PhoneControllerWrapper;
import com.viber.jni.ptt.PttController;
import com.viber.jni.ptt.PttController.EPttDownloadStatus;
import com.viber.jni.ptt.PttController.EPttPlayStatus;
import com.viber.jni.ptt.PttController.EPttRecordStatus;
import com.viber.jni.ptt.PttController.EPttRecordStopStatus;
import com.viber.jni.ptt.PttController.EPttUploadStatus;
import com.viber.jni.ptt.PttControllerDelegate.Downloader;
import com.viber.jni.ptt.PttControllerDelegate.Player;
import com.viber.jni.ptt.PttControllerDelegate.Recorder;
import com.viber.jni.ptt.PttControllerDelegate.Uploader;
import com.viber.voip.ViberApplication;
import com.viber.voip.h.d;
import com.viber.voip.messages.controller.c.as;
import com.viber.voip.messages.controller.c.e;
import com.viber.voip.messages.controller.cz;
import com.viber.voip.messages.controller.x;
import com.viber.voip.messages.orm.entity.impl.ConversationEntityImpl;
import com.viber.voip.messages.orm.entity.impl.MessageEntityImpl;
import java.util.Iterator;
import java.util.Set;

public class h
  implements PttControllerDelegate.Downloader, PttControllerDelegate.Player, PttControllerDelegate.Recorder, PttControllerDelegate.Uploader
{
  private static final String a = h.class.getSimpleName();
  private as b = as.a();
  private e c = e.a();
  private cz d = new i(this);
  
  public h()
  {
    this.c.a(this.d);
  }
  
  public void a(Set<String> paramSet)
  {
    PttController localPttController = ViberApplication.getInstance().getPhoneController(true).getPttController();
    Iterator localIterator = paramSet.iterator();
    while (localIterator.hasNext()) {
      localPttController.handleDeletePtt((String)localIterator.next());
    }
  }
  
  public void onDownloadPtt(String paramString1, String paramString2, int paramInt)
  {
    MessageEntityImpl localMessageEntityImpl = this.b.b(paramString1, "sound");
    if (localMessageEntityImpl == null) {
      return;
    }
    if (localMessageEntityImpl.getMediaUri() != null) {
      ViberApplication.getInstance().getPhoneController(true).getPttController().handleDeletePtt(localMessageEntityImpl.getMediaUri());
    }
    localMessageEntityImpl.setMediaUri(paramString2);
    if (PttController.EPttDownloadStatus.DOWNLOAD_OK != paramInt) {
      if (PttController.EPttDownloadStatus.DOWNLOAD_FILE_NOT_AVAILABLE != paramInt) {
        break label242;
      }
    }
    label242:
    for (int i = 7;; i = 4)
    {
      localMessageEntityImpl.setExtraStatus(i);
      this.b.b(localMessageEntityImpl);
      this.c.a(localMessageEntityImpl.getConversationId(), localMessageEntityImpl.getMessageToken(), false);
      if ((PttController.EPttDownloadStatus.DOWNLOAD_OK == paramInt) && (localMessageEntityImpl.isIncoming()) && (com.viber.voip.h.b.d().b()) && (localMessageEntityImpl.getConversationId() == com.viber.voip.h.b.d().c())) {
        ViberApplication.getInstance().getPhoneController(true).getPttPlaylist().a(paramString2, false);
      }
      if (PttController.EPttDownloadStatus.DOWNLOAD_NO_CONNECTION == paramInt) {
        ViberApplication.getInstance().startActivity(new Intent("com.viber.voip.action.NO_INTERNET_CONNECTION_DOWNLOAD").setFlags(268435456));
      }
      if (PttController.EPttDownloadStatus.DOWNLOAD_NO_SPACE == paramInt) {
        ViberApplication.getInstance().startActivity(new Intent("com.viber.voip.action.PTT_LOW_STORAGE_DIALOG").setFlags(268435456));
      }
      if (PttController.EPttDownloadStatus.DOWNLOAD_FAILED != paramInt) {
        break;
      }
      ViberApplication.getInstance().startActivity(new Intent("com.viber.voip.action.PTT_DOWNLOAD_FAILED").setFlags(268435456));
      return;
    }
  }
  
  public void onPttBufferingStarted(String paramString) {}
  
  public void onPttBufferingStopped(String paramString) {}
  
  public void onPttDownloaded(String paramString, int paramInt1, int paramInt2)
  {
    MessageEntityImpl localMessageEntityImpl = this.b.a(paramString, "sound");
    if (localMessageEntityImpl == null) {
      return;
    }
    if (paramInt2 == PttController.EPttDownloadStatus.DOWNLOAD_OK) {
      localMessageEntityImpl.setExtraStatus(3);
    }
    for (;;)
    {
      localMessageEntityImpl.setDuration(com.viber.voip.h.b.d().a(paramInt1));
      this.b.b(localMessageEntityImpl);
      this.c.a(localMessageEntityImpl.getConversationId(), localMessageEntityImpl.getMessageToken(), false);
      if (PttController.EPttDownloadStatus.DOWNLOAD_NO_CONNECTION == paramInt2) {
        ViberApplication.getInstance().startActivity(new Intent("com.viber.voip.action.NO_INTERNET_CONNECTION_DOWNLOAD").setFlags(268435456));
      }
      if (PttController.EPttDownloadStatus.DOWNLOAD_NO_SPACE == paramInt2) {
        ViberApplication.getInstance().startActivity(new Intent("com.viber.voip.action.PTT_LOW_STORAGE_DIALOG").setFlags(268435456));
      }
      if (PttController.EPttDownloadStatus.DOWNLOAD_FAILED != paramInt2) {
        break;
      }
      ViberApplication.getInstance().startActivity(new Intent("com.viber.voip.action.PTT_DOWNLOAD_FAILED").setFlags(268435456));
      return;
      localMessageEntityImpl.setExtraStatus(4);
    }
  }
  
  public void onPttFirstChunkUploaded(String paramString, long paramLong, int paramInt1, int paramInt2)
  {
    MessageEntityImpl localMessageEntityImpl = this.b.a(paramString, "sound");
    if (PttController.EPttUploadStatus.UPLOAD_OK == paramInt2) {
      if (localMessageEntityImpl == null) {
        ViberApplication.getInstance().getPhoneController(true).getPttController().handleDeletePtt(paramString);
      }
    }
    for (;;)
    {
      return;
      localMessageEntityImpl.setObjectId(paramLong);
      localMessageEntityImpl.setStatus(0);
      this.b.b(localMessageEntityImpl);
      this.c.a(localMessageEntityImpl.getConversationId(), localMessageEntityImpl.getMessageToken(), false);
      this.c.a(paramString, false);
      while (PttController.EPttUploadStatus.UPLOAD_FAILED == paramInt2)
      {
        ViberApplication.getInstance().startActivity(new Intent("com.viber.voip.action.PTT_UPLOAD_FAILED").setFlags(268435456));
        return;
        if (localMessageEntityImpl != null) {
          ViberApplication.getInstance().getMessagesManager().c().a(localMessageEntityImpl.getId(), null);
        }
        ViberApplication.getInstance().getPhoneController(true).getPttController().handleDeletePtt(paramString);
      }
    }
  }
  
  public void onPttPlayStopped(String paramString, int paramInt) {}
  
  public void onPttRecordStopped(String paramString, int paramInt)
  {
    MessageEntityImpl localMessageEntityImpl = this.b.a(paramString, "sound");
    if ((localMessageEntityImpl != null) && (localMessageEntityImpl.getStatus() != 10))
    {
      localMessageEntityImpl.setExtraStatus(3);
      this.b.b(localMessageEntityImpl);
      this.c.a(localMessageEntityImpl.getConversationId(), localMessageEntityImpl.getMessageToken(), false);
      return;
    }
    if (localMessageEntityImpl != null) {
      ViberApplication.getInstance().getMessagesManager().c().a(localMessageEntityImpl.getId(), null);
    }
    ViberApplication.getInstance().getPhoneController(true).getPttController().handleDeletePtt(paramString);
  }
  
  public void onPttUploaded(String paramString, int paramInt1, int paramInt2)
  {
    MessageEntityImpl localMessageEntityImpl = this.b.a(paramString, "sound");
    if ((localMessageEntityImpl == null) || ((PttController.EPttUploadStatus.UPLOAD_OK != paramInt2) && (localMessageEntityImpl.getStatus() == 10)))
    {
      if (paramString != null)
      {
        if (localMessageEntityImpl != null) {
          ViberApplication.getInstance().getMessagesManager().c().a(localMessageEntityImpl.getId(), null);
        }
        ViberApplication.getInstance().getPhoneController(true).getPttController().handleDeletePtt(paramString);
      }
      return;
    }
    if (PttController.EPttUploadStatus.UPLOAD_FAILED == paramInt2) {
      ViberApplication.getInstance().startActivity(new Intent("com.viber.voip.action.PTT_UPLOAD_FAILED").setFlags(268435456));
    }
    localMessageEntityImpl.setExtraStatus(3);
    localMessageEntityImpl.setDuration(com.viber.voip.h.b.d().a(paramInt1));
    this.b.b(localMessageEntityImpl);
    this.c.a(localMessageEntityImpl.getConversationId(), localMessageEntityImpl.getMessageToken(), false);
  }
  
  public void onStartPlayPttReply(String paramString, int paramInt)
  {
    MessageEntityImpl localMessageEntityImpl = this.b.a(paramString, "sound");
    if ((localMessageEntityImpl != null) && (!localMessageEntityImpl.isOpened()) && (PttController.EPttPlayStatus.PLAY_OK == paramInt))
    {
      localMessageEntityImpl.setOpened(1);
      this.b.b(localMessageEntityImpl);
      this.c.a(localMessageEntityImpl.getConversationId(), localMessageEntityImpl.getMessageToken(), false);
    }
  }
  
  public void onStartPttIndicator() {}
  
  public void onStartRecordPttReply(int paramInt1, String paramString, int paramInt2)
  {
    d locald;
    ConversationEntityImpl localConversationEntityImpl;
    com.viber.voip.messages.controller.b.b localb1;
    if (PttController.EPttRecordStatus.RECORD_OK == paramInt2)
    {
      com.viber.voip.h.b localb = com.viber.voip.h.b.d();
      localb.onStartRecordPttReply(paramInt1, paramString, paramInt2);
      locald = localb.b(paramInt1);
      if (locald.a() <= 0L) {
        break label193;
      }
      localConversationEntityImpl = this.b.c(locald.a());
      localb1 = new com.viber.voip.messages.controller.b.b(localConversationEntityImpl);
    }
    for (;;)
    {
      MessageEntityImpl localMessageEntityImpl = localb1.a("sound", paramString, null);
      localMessageEntityImpl.setStatus(10);
      localMessageEntityImpl.setExtraStatus(6);
      localMessageEntityImpl.setMessageSeq(paramInt1);
      localMessageEntityImpl.setMediaUri(paramString);
      if ((localConversationEntityImpl != null) && (localConversationEntityImpl.isShareLocation())) {
        localMessageEntityImpl.setLocation(ViberApplication.getInstance().getLocationManager().c());
      }
      ViberApplication.getInstance().getMessagesManager().c().a(localMessageEntityImpl);
      this.c.a(localMessageEntityImpl.getConversationId(), localMessageEntityImpl.getMessageToken(), false);
      if (PttController.EPttRecordStatus.RECORD_NO_SPACE == paramInt2) {
        ViberApplication.getInstance().startActivity(new Intent("com.viber.voip.action.PTT_LOW_STORAGE_DIALOG").setFlags(268435456));
      }
      return;
      label193:
      localb1 = new com.viber.voip.messages.controller.b.b(0L, locald.b(), 0);
      localConversationEntityImpl = null;
    }
  }
  
  public void onStopPlayPttReply(String paramString, int paramInt) {}
  
  public void onStopPttIndicator() {}
  
  public void onStopRecordPttReply(String paramString, int paramInt)
  {
    MessageEntityImpl localMessageEntityImpl = this.b.a(paramString, "sound");
    if ((PttController.EPttRecordStopStatus.RECORD_STOP_OK == paramInt) && (localMessageEntityImpl != null))
    {
      localMessageEntityImpl.setExtraStatus(3);
      long l = com.viber.voip.h.b.d().a(localMessageEntityImpl.getMessageSeq());
      localMessageEntityImpl.setDuration(com.viber.voip.h.b.d().a(l));
      this.b.b(localMessageEntityImpl);
      this.c.a(localMessageEntityImpl.getConversationId(), localMessageEntityImpl.getMessageToken(), false);
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.controller.a.h
 * JD-Core Version:    0.7.0.1
 */