package com.viber.voip.messages.conversation.a.a.a;

import android.content.Context;
import android.content.res.Resources;
import android.support.v4.app.Fragment;
import android.text.TextUtils;
import android.text.TextUtils.TruncateAt;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnTouchListener;
import android.view.ViewStub;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;
import com.nineoldandroids.view.ViewHelper;
import com.viber.voip.messages.adapters.MediaLayout;
import com.viber.voip.messages.conversation.a.s;
import com.viber.voip.messages.conversation.ui.ConversationFragment;
import com.viber.voip.messages.extras.map.BalloonLayout;
import com.viber.voip.messages.ui.bb;
import com.viber.voip.messages.ui.bd;
import com.viber.voip.util.ca;
import com.viber.voip.util.gl;
import com.viber.voip.util.hm;
import com.viber.voip.widget.FollowPublicGroupLayout;
import com.viber.voip.widget.PttLayout;

class b
  extends com.viber.voip.ui.b.a<com.viber.voip.messages.conversation.a.a.a, com.viber.voip.messages.conversation.a.a.b.a.b>
  implements View.OnClickListener, View.OnTouchListener, com.viber.voip.ui.b.c
{
  private static final String b = b.class.getSimpleName();
  long a = 0L;
  private bb c;
  private BalloonLayout d;
  private ViewStub e;
  private ViewStub f;
  private ViewStub g;
  private MediaLayout h;
  private PttLayout i;
  private FollowPublicGroupLayout j;
  private com.viber.voip.messages.adapters.c l;
  private TextView m;
  private BalloonLayout n;
  private ConversationFragment o;
  private LinearLayout p;
  private TextView q;
  private final s r;
  private final s s;
  private final com.viber.voip.messages.conversation.a.b.b t;
  private com.viber.voip.messages.conversation.a.b.d u;
  private com.viber.voip.messages.conversation.a.a.a v;
  
  public b(View paramView, Fragment paramFragment, k paramk, bb parambb, s params1, s params2)
  {
    super(paramView);
    this.o = ((ConversationFragment)paramFragment);
    this.d = ((BalloonLayout)paramView.findViewById(2131165947));
    this.e = ((ViewStub)paramView.findViewById(2131165951));
    this.f = ((ViewStub)paramView.findViewById(2131165950));
    this.g = ((ViewStub)paramView.findViewById(2131165953));
    this.m = ((TextView)paramView.findViewById(2131165474));
    this.p = ((LinearLayout)paramView.findViewById(2131165954));
    this.n = ((BalloonLayout)paramView.findViewById(2131165956));
    this.n.setOnClickListener(this);
    this.r = params1;
    this.s = params2;
    this.t = ((com.viber.voip.messages.conversation.a.b.b)paramFragment);
    if ((paramFragment instanceof com.viber.voip.messages.conversation.a.b.d)) {
      this.u = ((com.viber.voip.messages.conversation.a.b.d)paramFragment);
    }
    this.d.setTag(paramk);
    paramFragment.registerForContextMenu(this.d);
    this.d.setFocusable(false);
    this.d.setFocusableInTouchMode(false);
    this.d.setOnTouchListener(this);
    this.d.setOnClickListener(this);
    this.c = parambb;
  }
  
  private void a(TextView paramTextView, int paramInt)
  {
    if (paramInt > 1) {
      gl.a(paramTextView, new e(this, paramTextView, paramInt));
    }
  }
  
  private void a(com.viber.voip.messages.conversation.a.a.a parama, long paramLong)
  {
    int k;
    if ((parama.a() == paramLong) && (paramLong > 0L)) {
      if (parama.q()) {
        if (parama.k()) {
          k = 2130837983;
        }
      }
    }
    for (;;)
    {
      this.d.setBackgroundResource(k);
      this.d.invalidate();
      return;
      k = 2130837992;
      continue;
      if (parama.k())
      {
        k = 2130837979;
      }
      else
      {
        k = 2130837986;
        continue;
        if ((parama.q()) && ((parama.r()) || (parama.s())))
        {
          if (parama.F() == -1)
          {
            if (parama.k()) {
              k = 2130837962;
            } else {
              k = 2130837965;
            }
          }
          else if (parama.k()) {
            k = 2130837963;
          } else {
            k = 2130837966;
          }
        }
        else if (parama.k()) {
          k = 2130837961;
        } else {
          k = 2130837964;
        }
      }
    }
  }
  
  private void a(com.viber.voip.messages.conversation.a.a.b.a.b paramb)
  {
    this.d.setMaxWidth(paramb.k());
    a(this.v, paramb.h());
  }
  
  private boolean a(com.viber.voip.messages.conversation.a.a.a parama)
  {
    return (TextUtils.isEmpty(parama.e())) || (parama.r()) || (parama.G());
  }
  
  private void b()
  {
    if (this.q == null) {
      if (!this.v.r()) {
        break label58;
      }
    }
    label58:
    for (ViewStub localViewStub = (ViewStub)this.k.findViewById(2131165955);; localViewStub = (ViewStub)this.k.findViewById(2131166000))
    {
      if (localViewStub != null) {
        localViewStub.inflate();
      }
      this.q = ((TextView)this.k.findViewById(2131165991));
      return;
    }
  }
  
  private void b(com.viber.voip.messages.conversation.a.a.a parama, com.viber.voip.messages.conversation.a.a.b.a.b paramb)
  {
    if ((parama.C()) && (parama.p()) && (com.viber.voip.k.a.b))
    {
      int k = paramb.a(parama.d());
      this.n.setMinimumWidth(k);
      this.n.setMaxWidth(k);
      this.n.setVisibility(0);
      return;
    }
    this.n.setVisibility(8);
  }
  
  private void b(com.viber.voip.messages.conversation.a.a.b.a.b paramb)
  {
    if ((!this.v.x()) && ((!TextUtils.isEmpty(this.v.y())) || (!TextUtils.isEmpty(this.v.E())))) {
      this.m.setVisibility(0);
    }
    for (;;)
    {
      b(this.v, paramb);
      if (!a(this.v)) {
        break;
      }
      c();
      return;
      this.m.setVisibility(8);
    }
    TextView localTextView = this.m;
    if (ca.a(this.v.E())) {}
    for (int k = 5;; k = 3)
    {
      localTextView.setGravity(k | 0x10);
      c(this.v, paramb);
      return;
    }
  }
  
  private void c()
  {
    this.m.setText(this.v.y());
    this.m.setMaxLines(2147483647);
    this.m.setMaxWidth(2147483647);
    TextView localTextView = this.m;
    if (ca.a(this.v.y())) {}
    for (int k = 5;; k = 3)
    {
      localTextView.setGravity(k | 0x10);
      hm.a(this.m, 31);
      this.c.a(this.m, bd.c, false);
      return;
    }
  }
  
  private void c(com.viber.voip.messages.conversation.a.a.a parama, com.viber.voip.messages.conversation.a.a.b.a.b paramb)
  {
    LinearLayout.LayoutParams localLayoutParams = (LinearLayout.LayoutParams)this.m.getLayoutParams();
    localLayoutParams.topMargin = this.d.getContext().getResources().getDimensionPixelOffset(2131362381);
    this.m.setLayoutParams(localLayoutParams);
    do
    {
      try
      {
        this.l.a(parama);
        if (!parama.w()) {
          if (this.v.B())
          {
            String str = this.v.D();
            if (TextUtils.isEmpty(str)) {
              str = paramb.m();
            }
            this.m.setText(str);
            this.m.setSingleLine();
            this.m.setEllipsize(TextUtils.TruncateAt.END);
            return;
          }
        }
      }
      catch (NullPointerException localNullPointerException)
      {
        for (;;)
        {
          localNullPointerException.printStackTrace();
          this.l = e();
          this.l.a(parama);
        }
        if (!TextUtils.isEmpty(this.v.E()))
        {
          this.m.setText(this.v.E());
          this.c.a(this.m, bd.c, false);
          this.m.setSingleLine(false);
          this.m.setMaxLines(2);
          if (gl.b())
          {
            this.m.setEllipsize(TextUtils.TruncateAt.END);
            return;
          }
          this.m.setEllipsize(null);
          a(this.m, 2);
          return;
        }
        this.m.setVisibility(8);
        return;
      }
    } while (parama.a() != paramb.i());
    paramb.b(-1L);
    this.l.a(this.d);
  }
  
  private void d()
  {
    int k = this.v.F();
    if ((k == 1) || (k == 2) || (k == -1))
    {
      ViewHelper.setAlpha(this.d, 1.0F);
      return;
    }
    ViewHelper.setAlpha(this.d, 0.4F);
  }
  
  private com.viber.voip.messages.adapters.c e()
  {
    if (this.v.w()) {
      return f();
    }
    if (this.v.x()) {
      return g();
    }
    return h();
  }
  
  private com.viber.voip.messages.adapters.c f()
  {
    if (this.h != null) {
      this.h.setVisibility(8);
    }
    if (this.i == null)
    {
      this.i = ((PttLayout)this.f.inflate());
      this.i.setErrorPlaybackListener(new c(this));
    }
    this.i.setVisibility(0);
    return this.i;
  }
  
  private com.viber.voip.messages.adapters.c g()
  {
    if (this.h != null) {
      this.h.setVisibility(8);
    }
    if (this.j == null)
    {
      this.j = ((FollowPublicGroupLayout)this.g.inflate());
      this.j.setJoinPGListener(new d(this));
      this.j.setMessageBallonClickListener(this.t);
    }
    this.j.setVisibility(0);
    return this.j;
  }
  
  private com.viber.voip.messages.adapters.c h()
  {
    if (this.i != null) {
      this.i.setVisibility(8);
    }
    if (this.h == null)
    {
      this.h = ((MediaLayout)this.e.inflate());
      this.h.setBallonClickListener(this.t);
    }
    this.h.setVisibility(0);
    return this.h;
  }
  
  public void a()
  {
    if (this.i != null) {
      this.i.a();
    }
  }
  
  public void a(com.viber.voip.messages.conversation.a.a.a parama, com.viber.voip.messages.conversation.a.a.b.a.b paramb)
  {
    this.v = parama;
    if (this.v.s()) {
      this.l = e();
    }
    a(paramb);
    b();
    b(paramb);
    d();
  }
  
  public void onClick(View paramView)
  {
    if (paramView == this.n)
    {
      this.t.d(this.v);
      return;
    }
    if ((!this.v.n()) && (this.l != null) && (this.l.getVisibility() == 0)) {
      this.l.a(paramView);
    }
    long l1 = System.currentTimeMillis();
    if ((this.u != null) && (l1 - this.a < 300L) && (this.v.p())) {
      this.u.a(this.v);
    }
    this.a = l1;
  }
  
  public boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    if (this.r != null) {
      this.r.a(paramMotionEvent);
    }
    return false;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.conversation.a.a.a.b
 * JD-Core Version:    0.7.0.1
 */