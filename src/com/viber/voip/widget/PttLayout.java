package com.viber.voip.widget;

import android.content.Context;
import android.content.res.Resources;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.viber.jni.PhoneControllerListener;
import com.viber.jni.PhoneControllerWrapper;
import com.viber.jni.ptt.PttControllerDelegate.Player;
import com.viber.jni.ptt.PttPlayerListener;
import com.viber.voip.ViberApplication;
import com.viber.voip.dc;
import com.viber.voip.dk;
import com.viber.voip.messages.adapters.c;

public class PttLayout
  extends RelativeLayout
  implements View.OnClickListener, c
{
  private static final String a = PttLayout.class.getSimpleName();
  private Context b;
  private com.viber.voip.messages.conversation.a.a.a c;
  private ViewGroup d;
  private ImageView e;
  private ProgressBar f;
  private TextView g;
  private final int h = 0;
  private final int i = 1;
  private final int j = 2;
  private final int k = 3;
  private int[] l = { 2130838597, 2130838600, 2130838599, 2130838598 };
  private com.viber.voip.h.a m = ViberApplication.getInstance().getPhoneController(false).getPttPlaylist();
  private PttPlayerListener n = ViberApplication.getInstance().getPhoneController(false).getDelegatesManager().getPttPlayerListener();
  private boolean o;
  private z p;
  private Runnable q = new w(this);
  private PttControllerDelegate.Player r = new y(this);
  
  public PttLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    this.b = paramContext;
    b();
  }
  
  private void a(int paramInt)
  {
    switch (paramInt)
    {
    }
    for (;;)
    {
      this.e.setImageResource(this.l[paramInt]);
      if (3 != paramInt) {
        break;
      }
      this.g.setTextColor(getResources().getColor(2131296442));
      return;
      long l1 = this.c.h();
      boolean bool1 = this.c.p();
      boolean bool2 = false;
      if (bool1) {
        if (this.c.R() != 6)
        {
          int i1 = this.c.R();
          bool2 = false;
          if (i1 != 4) {}
        }
        else
        {
          bool2 = true;
        }
      }
      a(l1, bool2);
      continue;
      a(this.m.b(), false);
      post(new x(this));
    }
    this.g.setTextColor(-16777216);
  }
  
  private void a(long paramLong, boolean paramBoolean)
  {
    if (paramBoolean)
    {
      this.f.setVisibility(0);
      this.g.setVisibility(4);
      return;
    }
    this.f.setVisibility(4);
    this.g.setVisibility(0);
    TextView localTextView = this.g;
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Integer.valueOf(Math.round((float)paramLong / 1000.0F));
    localTextView.setText(String.format("0:%02d", arrayOfObject));
  }
  
  private void b()
  {
    this.d = ((ViewGroup)LayoutInflater.from(this.b).inflate(2130903275, this));
    this.e = ((ImageView)this.d.findViewById(2131165994));
    this.g = ((TextView)this.d.findViewById(2131165995));
    this.f = ((ProgressBar)this.d.findViewById(2131165996));
  }
  
  private static void b(String paramString)
  {
    ViberApplication.log(3, a, paramString);
  }
  
  private boolean c()
  {
    return (this.m.a() != null) && (this.m.a().equals(this.c.H()));
  }
  
  public void a()
  {
    if (!this.o) {
      return;
    }
    this.o = false;
    this.n.removeDelegate(this.r);
  }
  
  public void a(View paramView)
  {
    removeCallbacks(this.q);
    postDelayed(this.q, 150L);
  }
  
  public void a(com.viber.voip.messages.conversation.a.a.a parama)
  {
    this.c = parama;
    this.o = true;
    Handler localHandler = dc.a(dk.a);
    this.n.registerDelegate(this.r, localHandler);
    if (isClickable()) {
      setOnClickListener(this);
    }
    if ((parama.q()) && (parama.J()))
    {
      a(2);
      return;
    }
    if (c())
    {
      a(1);
      return;
    }
    if (parama.K()) {}
    for (int i1 = 0;; i1 = 3)
    {
      a(i1);
      return;
    }
  }
  
  public void onClick(View paramView)
  {
    a(paramView);
  }
  
  protected void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    a();
  }
  
  public void onStartTemporaryDetach()
  {
    super.onStartTemporaryDetach();
    a();
  }
  
  protected void onWindowVisibilityChanged(int paramInt)
  {
    super.onWindowVisibilityChanged(paramInt);
    if (paramInt == 8) {
      a();
    }
  }
  
  public void setErrorPlaybackListener(z paramz)
  {
    this.p = paramz;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.widget.PttLayout
 * JD-Core Version:    0.7.0.1
 */