package com.viber.voip.messages.ui.media;

import android.text.TextUtils;
import android.widget.ImageView;
import android.widget.SeekBar;
import android.widget.TextView;
import android.widget.VideoView;
import com.viber.voip.ViberApplication;
import com.viber.voip.messages.adapters.h;
import com.viber.voip.messages.controller.x;
import com.viber.voip.messages.conversation.an;
import com.viber.voip.messages.i;
import com.viber.voip.util.at;
import com.viber.voip.util.upload.s;
import java.util.Map;

class ay
  extends ai
{
  ay(ViewMediaActivity paramViewMediaActivity, VideoView paramVideoView, ImageView paramImageView, SeekBar paramSeekBar, TextView paramTextView1, TextView paramTextView2)
  {
    super(paramVideoView, paramImageView, paramSeekBar, paramTextView1, paramTextView2);
  }
  
  public void a()
  {
    if (ViewMediaActivity.b(this.a, ViewMediaActivity.b(this.a)))
    {
      ((ba)ViewMediaActivity.d(this.a).get(Integer.valueOf(ViewMediaActivity.b(this.a)))).c();
      ViewMediaActivity.c(this.a).f();
      if (ViewMediaActivity.i(this.a))
      {
        ViewMediaActivity.a(this.a, false);
        ViewMediaActivity.c(this.a).g();
      }
    }
  }
  
  protected void a(String paramString)
  {
    if (ViewMediaActivity.b(this.a, ViewMediaActivity.b(this.a))) {
      ((ba)ViewMediaActivity.d(this.a).get(Integer.valueOf(ViewMediaActivity.b(this.a)))).a(paramString);
    }
    if (TextUtils.isEmpty(paramString)) {
      at.a(this.a, 2131494336, 2131494337, null);
    }
  }
  
  public void a(boolean paramBoolean)
  {
    if (ViewMediaActivity.b(this.a, ViewMediaActivity.b(this.a))) {
      ((ba)ViewMediaActivity.d(this.a).get(Integer.valueOf(ViewMediaActivity.b(this.a)))).b();
    }
    if (paramBoolean)
    {
      ViewMediaActivity.h(this.a).b(1500);
      return;
    }
    ViewMediaActivity.h(this.a).a(0);
  }
  
  protected void b()
  {
    if (ViewMediaActivity.b(this.a, ViewMediaActivity.b(this.a))) {
      ((ba)ViewMediaActivity.d(this.a).get(Integer.valueOf(ViewMediaActivity.b(this.a)))).c();
    }
  }
  
  protected void c()
  {
    if (ViewMediaActivity.b(this.a, ViewMediaActivity.b(this.a))) {
      ((ba)ViewMediaActivity.d(this.a).get(Integer.valueOf(ViewMediaActivity.b(this.a)))).a();
    }
  }
  
  protected void d()
  {
    if (ViewMediaActivity.b(this.a, ViewMediaActivity.b(this.a))) {
      ((ba)ViewMediaActivity.d(this.a).get(Integer.valueOf(ViewMediaActivity.b(this.a)))).d();
    }
    ViewMediaActivity.h(this.a).a(0);
  }
  
  protected void e()
  {
    if (ViewMediaActivity.a(this.a) == null) {}
    an localan;
    do
    {
      return;
      localan = ViewMediaActivity.a(this.a).a(ViewMediaActivity.b(this.a));
    } while (s.a(localan.H()));
    ViewMediaActivity.a(this.a, "RE DOWNLOADING!");
    ViberApplication.getInstance().getMessagesManager().c().a(localan.a());
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.ui.media.ay
 * JD-Core Version:    0.7.0.1
 */