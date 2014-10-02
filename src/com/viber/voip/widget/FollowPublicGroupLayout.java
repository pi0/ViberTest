package com.viber.voip.widget;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.viber.jni.PhoneControllerWrapper;
import com.viber.voip.ViberApplication;
import com.viber.voip.messages.controller.GroupController;
import com.viber.voip.messages.controller.c.e;
import com.viber.voip.messages.controller.di;
import com.viber.voip.messages.conversation.a.a.a;
import com.viber.voip.messages.conversation.a.b.b;
import com.viber.voip.messages.i;
import com.viber.voip.util.b.b.f;
import com.viber.voip.util.b.w;
import com.viber.voip.util.b.x;
import com.viber.voip.util.b.z;
import com.viber.voip.util.ft;
import com.viber.voip.util.gj;
import com.viber.voip.util.hv;

public class FollowPublicGroupLayout
  extends FrameLayout
  implements View.OnClickListener, com.viber.voip.messages.adapters.c
{
  private static final String a = FollowPublicGroupLayout.class.getSimpleName();
  private View b;
  private TextView c;
  private TextView d;
  private ImageView e;
  private Button f;
  private TextView g;
  private a h;
  private w i;
  private x j;
  private d k;
  private b l;
  private int m;
  private di n = new c(this);
  
  public FollowPublicGroupLayout(Context paramContext)
  {
    super(paramContext);
    a(paramContext);
  }
  
  public FollowPublicGroupLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    a(paramContext);
  }
  
  public FollowPublicGroupLayout(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    a(paramContext);
  }
  
  private void a(Context paramContext)
  {
    this.b = LayoutInflater.from(paramContext).inflate(2130903260, this);
    this.c = ((TextView)this.b.findViewById(2131165965));
    this.e = ((ImageView)this.b.findViewById(2131165967));
    this.d = ((TextView)this.b.findViewById(2131165966));
    this.f = ((Button)this.b.findViewById(2131165968));
    this.f.setOnClickListener(this);
    this.g = ((TextView)this.b.findViewById(2131165969));
    this.i = w.a(paramContext);
    this.j = new z().a(2130838346, paramContext).b(2130838346, paramContext).a(new f(paramContext)).b(false).b();
  }
  
  private boolean a()
  {
    if (!ft.b(ViberApplication.getInstance().getApplicationContext()))
    {
      Intent localIntent1 = new Intent("com.viber.voip.action.CONNECTION_PROBLEM");
      localIntent1.setFlags(268435456);
      ViberApplication.getInstance().startActivity(localIntent1);
      return false;
    }
    if (!ViberApplication.getInstance().getPhoneController(true).isConnected())
    {
      Intent localIntent2 = new Intent("com.viber.voip.action.NO_SERVICE_DIALOG");
      localIntent2.setFlags(268435456);
      ViberApplication.getInstance().startActivity(localIntent2);
      return false;
    }
    return true;
  }
  
  public void a(View paramView)
  {
    if (this.h != null) {
      this.l.c(this.h);
    }
  }
  
  public void a(a parama)
  {
    this.h = parama;
    this.c.setText(parama.y());
    TextView localTextView = this.d;
    Resources localResources = getResources();
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = gj.a(parama.h());
    localTextView.setText(localResources.getString(2131494514, arrayOfObject));
    this.g.setText(this.h.Q());
    this.i.a(hv.b(parama.I()), this.e, this.j);
  }
  
  public void onClick(View paramView)
  {
    if (ViberApplication.isTablet()) {
      if (!ViberApplication.isTablet()) {}
    }
    while (!a()) {
      return;
    }
    this.m = ((int)System.currentTimeMillis());
    e.a().a(this.n);
    ViberApplication.getInstance().getMessagesManager().d().a(this.m, this.h.ag(), this.h.M(), this.h.E(), this.h.y(), this.h.ah(), this.h.Y());
  }
  
  protected void onDetachedFromWindow()
  {
    this.m = 0;
    e.a().b(this.n);
    super.onDetachedFromWindow();
  }
  
  public void onWindowFocusChanged(boolean paramBoolean)
  {
    this.m = 0;
    e.a().b(this.n);
    super.onWindowFocusChanged(paramBoolean);
  }
  
  public void setJoinPGListener(d paramd)
  {
    this.k = paramd;
  }
  
  public void setMessageBallonClickListener(b paramb)
  {
    this.l = paramb;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.widget.FollowPublicGroupLayout
 * JD-Core Version:    0.7.0.1
 */