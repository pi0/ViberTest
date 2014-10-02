package com.viber.voip.messages.ui.media;

import android.content.Context;
import android.content.Intent;
import android.media.MediaPlayer;
import android.media.MediaPlayer.OnCompletionListener;
import android.media.MediaPlayer.OnErrorListener;
import android.media.MediaPlayer.OnPreparedListener;
import android.net.Uri;
import android.os.Handler;
import android.text.TextUtils;
import android.view.animation.Animation;
import android.widget.ImageView;
import android.widget.SeekBar;
import android.widget.SeekBar.OnSeekBarChangeListener;
import android.widget.TextView;
import android.widget.VideoView;
import com.viber.jni.PhoneControllerDelegate.ViberConnectionState;
import com.viber.jni.PhoneControllerWrapper;
import com.viber.voip.ViberApplication;
import com.viber.voip.bc;
import com.viber.voip.bd;
import com.viber.voip.dc;
import com.viber.voip.dk;
import com.viber.voip.messages.extras.image.h;
import com.viber.voip.util.bj;
import com.viber.voip.util.ft;
import com.viber.voip.util.hx;

public abstract class ai
  implements MediaPlayer.OnCompletionListener, MediaPlayer.OnErrorListener, MediaPlayer.OnPreparedListener, SeekBar.OnSeekBarChangeListener
{
  private final ImageView a;
  private final VideoView b;
  private final SeekBar c;
  private final TextView d;
  private final TextView e;
  private am f;
  private ao g;
  private ap h = ap.d;
  private Handler i;
  private int j = 0;
  private int k = -2147483648;
  private Uri l;
  private Uri m;
  private an n = new an(this, null);
  
  public ai(VideoView paramVideoView, ImageView paramImageView, SeekBar paramSeekBar, TextView paramTextView1, TextView paramTextView2)
  {
    c("VideoPlayer CREATED!");
    this.b = paramVideoView;
    this.c = paramSeekBar;
    this.d = paramTextView1;
    this.e = paramTextView2;
    this.a = paramImageView;
    this.f = new am(this, null);
    this.g = new ao(this, null);
    this.i = dc.a(dk.a);
    this.a.setOnClickListener(new aj(this));
  }
  
  private void a(Context paramContext)
  {
    Intent localIntent = new Intent("com.viber.voip.action.NO_INTERNET_CONNECTION_DOWNLOAD");
    localIntent.setFlags(268435456);
    paramContext.startActivity(localIntent);
  }
  
  private void a(ap paramap)
  {
    this.h = paramap;
    switch (al.a[paramap.ordinal()])
    {
    default: 
      a(8, null);
      return;
    case 1: 
    case 2: 
    case 3: 
    case 4: 
      a(0, null);
      ImageView localImageView = this.a;
      if (paramap != ap.b) {}
      for (int i1 = 2130837738;; i1 = 2130837735)
      {
        localImageView.setImageResource(i1);
        return;
      }
    }
    if (n()) {
      c();
    }
    a(8, null);
  }
  
  private void b(Uri paramUri)
  {
    this.b.stopPlayback();
    this.b.setOnCompletionListener(this);
    this.b.setOnPreparedListener(this);
    this.b.setOnErrorListener(this);
    this.b.setVideoURI(paramUri);
    this.k = -2147483648;
    this.e.setText(hx.a(this.b.getDuration()));
  }
  
  private void b(ap paramap)
  {
    for (;;)
    {
      try
      {
        switch (al.a[paramap.ordinal()])
        {
        case 5: 
        case 6: 
        default: 
          a(paramap);
          return;
        }
      }
      catch (IllegalStateException localIllegalStateException)
      {
        c("handlePlayerEvents error: " + localIllegalStateException);
        a(ap.f);
        return;
      }
      this.b.stopPlayback();
      this.c.removeCallbacks(this.g);
      continue;
      this.b.pause();
      this.d.setText(hx.a(this.b.getCurrentPosition()));
      this.c.removeCallbacks(this.g);
      continue;
      this.b.start();
      this.c.post(this.g);
      continue;
      this.b.stopPlayback();
      this.c.removeCallbacks(this.g);
      this.c.removeCallbacks(this.f);
    }
  }
  
  private void b(boolean paramBoolean)
  {
    int i1 = 8;
    if (((paramBoolean) && (this.b.getVisibility() == 0)) || ((!paramBoolean) && (this.b.getVisibility() == i1))) {
      return;
    }
    try
    {
      VideoView localVideoView = this.b;
      if (paramBoolean) {
        i1 = 0;
      }
      localVideoView.setVisibility(i1);
      return;
    }
    catch (IllegalStateException localIllegalStateException)
    {
      c(localIllegalStateException.toString());
    }
  }
  
  private static void c(String paramString)
  {
    ViberApplication.log(3, "VideoPlayer", paramString);
  }
  
  private String l()
  {
    ViberApplication localViberApplication = ViberApplication.getInstance();
    String str = "";
    a(ap.f);
    if (!h.a()) {
      str = localViberApplication.getString(2131493984);
    }
    do
    {
      return str;
      if ((!ft.b(localViberApplication)) || (ViberApplication.getInstance().getPhoneController(false).getServiceState() != PhoneControllerDelegate.ViberConnectionState.SERVICE_CONNECTED))
      {
        a(localViberApplication);
        return localViberApplication.getString(2131493794);
      }
      if ((this.l != null) && (!bj.a(localViberApplication, this.l.getPath()))) {
        return localViberApplication.getString(2131493953);
      }
    } while (h.a(false));
    return localViberApplication.getString(2131493787);
  }
  
  private void m()
  {
    if (i()) {
      b(ap.e);
    }
    for (;;)
    {
      a(i());
      return;
      b(ap.b);
    }
  }
  
  private boolean n()
  {
    return this.l.getScheme().startsWith("http");
  }
  
  private boolean o()
  {
    return this.l.toString().startsWith(bc.b().Z);
  }
  
  private boolean p()
  {
    return (this.h == ap.c) || (this.h == ap.e) || (this.h == ap.b) || (this.h == ap.d);
  }
  
  protected abstract void a();
  
  public void a(int paramInt, Animation paramAnimation)
  {
    if (((paramInt == 0) && (!p())) || (paramInt == this.a.getVisibility())) {}
    do
    {
      return;
      this.a.setVisibility(paramInt);
    } while (paramAnimation == null);
    this.a.startAnimation(paramAnimation);
  }
  
  public void a(Uri paramUri)
  {
    this.d.setText(hx.a(0));
    this.e.setText(hx.a(0));
    this.c.setProgress(0);
    this.c.setSecondaryProgress(0);
    this.m = paramUri;
    this.i.removeCallbacks(this.n);
    this.i.postDelayed(this.n, 500L);
  }
  
  protected abstract void a(String paramString);
  
  protected abstract void a(boolean paramBoolean);
  
  protected abstract void b();
  
  protected abstract void c();
  
  protected abstract void d();
  
  protected abstract void e();
  
  public void f()
  {
    if ((n()) && (!o())) {
      m();
    }
  }
  
  public void g()
  {
    if (!i())
    {
      b(ap.b);
      a(i());
    }
  }
  
  public void h()
  {
    if (i())
    {
      b(ap.e);
      a(i());
    }
  }
  
  public boolean i()
  {
    return this.h == ap.b;
  }
  
  public void j()
  {
    this.i.removeCallbacks(this.n);
    b(ap.d);
    b(false);
    a(8, null);
  }
  
  public void k()
  {
    b(ap.g);
  }
  
  public void onCompletion(MediaPlayer paramMediaPlayer)
  {
    a(ap.d);
    this.c.removeCallbacks(this.g);
    this.c.setProgress(this.b.getDuration());
    this.d.setText(hx.a(this.b.getDuration()));
    d();
  }
  
  public boolean onError(MediaPlayer paramMediaPlayer, int paramInt1, int paramInt2)
  {
    this.c.removeCallbacks(this.g);
    this.c.removeCallbacks(this.f);
    if (this.h == ap.d) {
      return true;
    }
    String str = l();
    c("onError: " + paramInt1 + "," + paramInt2 + " msg to user: " + str + ", attemptCount: " + this.j);
    if ((!TextUtils.isEmpty(str)) || (this.j > 2) || (!n()))
    {
      a(str);
      return true;
    }
    c("onTryToReDownload");
    e();
    this.i.postDelayed(new ak(this), 500L);
    return true;
  }
  
  public void onPrepared(MediaPlayer paramMediaPlayer)
  {
    a(ap.c);
    int i1 = this.b.getDuration();
    this.e.setText(hx.a(i1));
    this.c.setProgress(0);
    this.c.setOnSeekBarChangeListener(this);
    a();
  }
  
  public void onProgressChanged(SeekBar paramSeekBar, int paramInt, boolean paramBoolean)
  {
    if ((paramBoolean) && ((!n()) || (o())))
    {
      c("seekTo: " + paramInt);
      this.b.seekTo(paramInt * this.b.getDuration() / 100);
    }
  }
  
  public void onStartTrackingTouch(SeekBar paramSeekBar) {}
  
  public void onStopTrackingTouch(SeekBar paramSeekBar) {}
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.ui.media.ai
 * JD-Core Version:    0.7.0.1
 */