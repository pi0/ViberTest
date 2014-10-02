package com.viber.voip.h;

import android.support.v4.util.SparseArrayCompat;
import android.text.TextUtils;
import com.viber.jni.ptt.PttController.EPttPlayStatus;
import com.viber.jni.ptt.PttController.EPttRecordStatus;
import com.viber.jni.ptt.PttController.EPttRecordStopStatus;
import com.viber.jni.ptt.PttController.EPttStopStatus;
import com.viber.jni.ptt.PttControllerDelegate.Player;
import com.viber.jni.ptt.PttControllerDelegate.Recorder;
import com.viber.jni.ptt.PttControllerDelegate.Uploader;
import com.viber.voip.ViberApplication;
import java.util.Observable;

public class b
  extends Observable
  implements PttControllerDelegate.Player, PttControllerDelegate.Recorder, PttControllerDelegate.Uploader, Cloneable
{
  private static final b l = new b();
  private boolean a = false;
  private boolean b = false;
  private boolean c = false;
  private boolean d = false;
  private boolean e = false;
  private d f = new d();
  private String g;
  private SparseArrayCompat<d> h = new SparseArrayCompat();
  private SparseArrayCompat<Long> i = new SparseArrayCompat();
  private SparseArrayCompat<Long> j = new SparseArrayCompat();
  private e k = new e(this, null);
  
  private b a(String paramString, boolean paramBoolean1, boolean paramBoolean2)
  {
    if (paramBoolean1 == this.a) {}
    do
    {
      return this;
      this.g = paramString;
      this.a = paramBoolean1;
      setChanged();
    } while (!paramBoolean2);
    notifyObservers();
    return this;
  }
  
  private b a(boolean paramBoolean1, boolean paramBoolean2)
  {
    if (paramBoolean1 == this.c) {}
    do
    {
      return this;
      this.c = paramBoolean1;
      setChanged();
    } while (!paramBoolean2);
    notifyObservers();
    return this;
  }
  
  private b b(boolean paramBoolean1, boolean paramBoolean2)
  {
    if (paramBoolean1 == this.d) {}
    do
    {
      return this;
      this.d = paramBoolean1;
      setChanged();
    } while (!paramBoolean2);
    notifyObservers();
    return this;
  }
  
  public static b d()
  {
    return l;
  }
  
  public int a(String paramString)
  {
    return this.k.keyAt(this.k.a(paramString));
  }
  
  public long a(int paramInt)
  {
    return ((Long)this.j.get(paramInt, Long.valueOf(System.currentTimeMillis()))).longValue() - ((Long)this.i.get(paramInt, Long.valueOf(1L + System.currentTimeMillis()))).longValue();
  }
  
  public long a(long paramLong)
  {
    if (paramLong > 29000L) {
      paramLong = 30000L;
    }
    return paramLong;
  }
  
  public b a(boolean paramBoolean1, d paramd, boolean paramBoolean2)
  {
    ViberApplication.log(4, "PttState", "setRecordingReady ready=" + paramBoolean1 + " recordingState=" + paramd);
    if ((paramBoolean1 == this.e) && ((paramd.a() == this.f.a()) || ((!TextUtils.isEmpty(paramd.b())) && (paramd.b().equals(this.f.b()))))) {}
    do
    {
      return this;
      this.e = paramBoolean1;
      this.f = paramd;
      setChanged();
    } while (!paramBoolean2);
    notifyObservers();
    return this;
  }
  
  public void a(boolean paramBoolean)
  {
    this.b = paramBoolean;
  }
  
  public boolean a()
  {
    return this.c;
  }
  
  public d b(int paramInt)
  {
    return (d)this.h.get(paramInt);
  }
  
  public boolean b()
  {
    return (this.e) && ((this.f.a() > 0L) || ((!TextUtils.isEmpty(this.f.b())) && (this.b)));
  }
  
  public long c()
  {
    return this.f.a();
  }
  
  public void notifyObservers()
  {
    try
    {
      super.notifyObservers(clone());
      return;
    }
    catch (CloneNotSupportedException localCloneNotSupportedException)
    {
      localCloneNotSupportedException.printStackTrace();
    }
  }
  
  public void onPttBufferingStarted(String paramString)
  {
    b(true, true);
  }
  
  public void onPttBufferingStopped(String paramString)
  {
    b(false, true);
  }
  
  public void onPttFirstChunkUploaded(String paramString, long paramLong, int paramInt1, int paramInt2) {}
  
  public void onPttPlayStopped(String paramString, int paramInt)
  {
    a(paramString, false, true);
  }
  
  public void onPttRecordStopped(String paramString, int paramInt)
  {
    a(false, true);
  }
  
  public void onPttUploaded(String paramString, int paramInt1, int paramInt2)
  {
    int m = a(paramString);
    this.h.remove(m);
    this.i.remove(m);
    this.k.remove(m);
    this.j.remove(m);
  }
  
  public void onStartPlayPttReply(String paramString, int paramInt)
  {
    if (PttController.EPttPlayStatus.PLAY_OK == paramInt) {
      a(paramString, true, true);
    }
  }
  
  public void onStartPttIndicator() {}
  
  public void onStartRecordPttReply(int paramInt1, String paramString, int paramInt2)
  {
    if (PttController.EPttRecordStatus.RECORD_OK == paramInt2)
    {
      a(true, true);
      this.h.put(paramInt1, this.f);
      this.i.put(paramInt1, Long.valueOf(System.currentTimeMillis()));
      this.k.put(paramInt1, paramString);
    }
  }
  
  public void onStopPlayPttReply(String paramString, int paramInt)
  {
    if (PttController.EPttStopStatus.STOP_FAILED != paramInt) {
      a(paramString, false, true);
    }
  }
  
  public void onStopPttIndicator() {}
  
  public void onStopRecordPttReply(String paramString, int paramInt)
  {
    if (PttController.EPttRecordStopStatus.RECORD_STOP_FAILED != paramInt)
    {
      a(false, true);
      this.j.put(a(paramString), Long.valueOf(System.currentTimeMillis()));
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.h.b
 * JD-Core Version:    0.7.0.1
 */