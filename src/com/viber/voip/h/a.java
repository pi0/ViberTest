package com.viber.voip.h;

import com.viber.jni.ptt.PttController;
import com.viber.jni.ptt.PttController.EPttDownloadStatus;
import com.viber.jni.ptt.PttController.EPttPlayStatus;
import com.viber.jni.ptt.PttController.EPttStopReason;
import com.viber.jni.ptt.PttControllerDelegate.Downloader;
import com.viber.jni.ptt.PttControllerDelegate.Player;
import java.util.LinkedList;
import java.util.NoSuchElementException;
import java.util.Queue;

public class a
  implements PttControllerDelegate.Downloader, PttControllerDelegate.Player
{
  private final PttController a;
  private Queue<String> b = new LinkedList();
  private String c;
  private String d;
  private long e = 0L;
  private long f = 0L;
  private boolean g = true;
  private boolean h = false;
  private boolean i = false;
  
  public a(PttController paramPttController)
  {
    this.a = paramPttController;
  }
  
  private void d()
  {
    try
    {
      this.c = ((String)this.b.remove());
      this.a.handleStartPlayPtt(this.c);
      return;
    }
    catch (NoSuchElementException localNoSuchElementException) {}
  }
  
  public String a()
  {
    return this.c;
  }
  
  public void a(String paramString)
  {
    this.d = paramString;
    this.a.handleDownloadPtt(paramString);
  }
  
  public void a(String paramString, boolean paramBoolean)
  {
    if (paramBoolean) {
      b(this.c, true);
    }
    this.b.add(paramString);
    if (!this.h) {
      d();
    }
  }
  
  public long b()
  {
    if (this.e == 0L) {
      this.e = System.currentTimeMillis();
    }
    return this.f + (System.currentTimeMillis() - this.e);
  }
  
  public void b(String paramString, boolean paramBoolean)
  {
    if (paramBoolean) {
      this.b.clear();
    }
    this.d = null;
    if (paramString == null) {
      paramString = this.c;
    }
    if ((this.c == null) || (!paramString.equals(this.c))) {
      return;
    }
    if (this.h) {
      this.a.handleStopPlayPtt(this.c);
    }
    this.c = null;
    this.f = 0L;
    this.h = false;
    this.e = 0L;
  }
  
  public boolean c()
  {
    return this.i;
  }
  
  public void onDownloadPtt(String paramString1, String paramString2, int paramInt)
  {
    if ((paramString1.equals(this.d)) && (PttController.EPttDownloadStatus.DOWNLOAD_OK == paramInt))
    {
      a(paramString2, false);
      this.d = null;
    }
  }
  
  public void onPttBufferingStarted(String paramString)
  {
    this.f = b();
    this.i = true;
  }
  
  public void onPttBufferingStopped(String paramString)
  {
    this.e = System.currentTimeMillis();
    this.i = false;
  }
  
  public void onPttDownloaded(String paramString, int paramInt1, int paramInt2) {}
  
  public void onPttPlayStopped(String paramString, int paramInt)
  {
    this.h = false;
    b(paramString, false);
    if ((PttController.EPttStopReason.STOP_REASON_TRACK_ENDED == paramInt) && (this.g)) {
      d();
    }
  }
  
  public void onStartPlayPttReply(String paramString, int paramInt)
  {
    if (PttController.EPttPlayStatus.PLAY_OK == paramInt)
    {
      this.e = System.currentTimeMillis();
      this.h = true;
      this.c = paramString;
      this.f = 0L;
      return;
    }
    b(this.c, false);
  }
  
  public void onStopPlayPttReply(String paramString, int paramInt)
  {
    b(paramString, false);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.h.a
 * JD-Core Version:    0.7.0.1
 */