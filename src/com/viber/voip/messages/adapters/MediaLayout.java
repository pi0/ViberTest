package com.viber.voip.messages.adapters;

import android.annotation.SuppressLint;
import android.content.Context;
import android.net.Uri;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TextView;
import com.viber.voip.ViberApplication;
import com.viber.voip.messages.extras.image.m;
import com.viber.voip.messages.i;
import com.viber.voip.stickers.ba;
import com.viber.voip.stickers.bb;
import com.viber.voip.stickers.r;
import com.viber.voip.util.b.w;
import com.viber.voip.util.b.z;

public class MediaLayout
  extends FrameLayout
  implements View.OnClickListener, c
{
  private static final int c = com.viber.voip.messages.extras.image.h.a(200.0F);
  private static final String q = MediaLayout.class.getSimpleName();
  public ImageView a;
  public ImageView b;
  private Context d;
  private com.viber.voip.stickers.b e;
  private bb f;
  private w g;
  private com.viber.voip.util.b.x h;
  private View i;
  private TextView j;
  private int k;
  private com.viber.voip.messages.conversation.a.a.a l;
  private com.viber.voip.messages.conversation.a.b.b m;
  private ProgressBar n;
  private f o;
  private boolean p;
  
  public MediaLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    this.d = paramContext;
    b();
  }
  
  private static void a(String paramString)
  {
    ViberApplication.log(3, q, paramString);
  }
  
  private void b()
  {
    LayoutInflater.from(this.d).inflate(2130903276, this);
    setDuplicateParentStateEnabled(true);
    this.a = ((ImageView)findViewById(2131165997));
    this.b = ((ImageView)findViewById(2131165998));
    this.i = findViewById(2131165707);
    this.j = ((TextView)findViewById(2131165999));
    this.n = ((ProgressBar)findViewById(2131165601));
    this.g = w.a(this.d);
    this.h = new z().a(new com.viber.voip.util.b.b.f(this.d)).b(false).b();
    this.k = com.viber.voip.messages.extras.image.h.a(20.0F);
    this.p = com.viber.voip.messages.extras.image.h.b();
  }
  
  private void b(com.viber.voip.messages.conversation.a.a.a parama)
  {
    if (("image".equals(parama.e())) || ("video".equals(parama.e())))
    {
      if (d())
      {
        this.n.setVisibility(8);
        if (parama.h() > 0L)
        {
          if (this.i.getVisibility() == 4) {
            this.i.setVisibility(0);
          }
          if (this.j.getVisibility() == 4) {
            this.j.setVisibility(0);
          }
        }
      }
      do
      {
        return;
        this.n.setVisibility(0);
      } while (parama.h() <= 0L);
      this.i.setVisibility(8);
      this.j.setVisibility(8);
      return;
    }
    this.n.setVisibility(8);
  }
  
  private void c() {}
  
  private boolean d()
  {
    if (this.l == null) {}
    int i1;
    do
    {
      return false;
      i1 = this.l.F();
    } while ((i1 != 1) && (i1 != 2) && (i1 != -1));
    return true;
  }
  
  @SuppressLint({"InlinedApi"})
  public void a()
  {
    bb.a(this.a, true);
    this.a.setLayoutParams(new RelativeLayout.LayoutParams(-2, -2));
    this.i.setVisibility(8);
    this.j.setVisibility(8);
    this.b.setVisibility(8);
  }
  
  public void a(int paramInt)
  {
    a();
    com.viber.voip.stickers.c.a locala = r.a().l(paramInt);
    boolean bool1 = locala.g();
    if (locala.j())
    {
      ViewGroup localViewGroup = (ViewGroup)getParent();
      localViewGroup.getViewTreeObserver().addOnGlobalLayoutListener(new d(this, localViewGroup, paramInt, locala, bool1));
      return;
    }
    com.viber.voip.stickers.b localb = getStickerBitmapLoader();
    if (!bool1) {}
    for (boolean bool2 = true;; bool2 = false)
    {
      com.viber.voip.stickers.h localh = localb.a(locala, bool2, true, ba.b);
      a("stickerId = " + paramInt + " , bitmapHolder = " + localh);
      if (localh == null) {
        break;
      }
      localh.b();
      this.a.setImageBitmap(localh.a());
      return;
    }
  }
  
  public void a(Uri paramUri, int paramInt)
  {
    a();
    this.a.setImageResource(paramInt);
    this.g.a(paramUri, this.a, this.h);
  }
  
  public void a(View paramView)
  {
    if (this.l != null) {
      this.m.c(this.l);
    }
  }
  
  public void a(g paramg, boolean paramBoolean)
  {
    a();
    if (!paramBoolean)
    {
      this.a.setLayoutParams(new RelativeLayout.LayoutParams(m.a, m.a / 2));
      this.a.setBackgroundResource(2130837974);
    }
    if ((paramg.c() == 0) || (paramg.d() == 0)) {
      ViberApplication.getInstance().getMessagesManager().c().a(paramg.a(), com.viber.voip.messages.extras.map.d.a(paramg), m.a / 2, m.a);
    }
    this.g.a(paramg.b(), this.a, this.h, new e(this));
  }
  
  public void a(g paramg, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3)
  {
    a();
    if (!paramBoolean3) {
      this.a.setLayoutParams(new RelativeLayout.LayoutParams(m.a, m.a));
    }
    if (paramBoolean2)
    {
      this.b.setVisibility(0);
      this.b.setOnClickListener(this);
      this.o = new f(this, paramg, paramBoolean1);
      if ((!"video".equals(paramg.e())) && (!"animated_message".equals(paramg.e()))) {
        break label197;
      }
    }
    label197:
    for (int i1 = 2130837976;; i1 = 2130837975)
    {
      ImageView localImageView = this.a;
      if (paramBoolean3) {
        i1 = 0;
      }
      localImageView.setBackgroundResource(i1);
      if (paramg.c() != paramg.d()) {
        this.a.setLayoutParams(new RelativeLayout.LayoutParams(paramg.d(), paramg.c()));
      }
      this.g.a(paramg.b(), this.a, this.h, this.o);
      return;
      this.b.setVisibility(8);
      break;
    }
  }
  
  public void a(com.viber.voip.messages.conversation.a.a.a parama)
  {
    boolean bool1 = true;
    this.l = parama;
    boolean bool2;
    if (("image".equals(parama.e())) || ("animated_message".equals(parama.e())) || ("video".equals(parama.e()))) {
      if (parama.h() > 0L)
      {
        bool2 = bool1;
        if (("animated_message".equals(parama.e())) || (parama.H() == null)) {
          break label106;
        }
        label87:
        a(parama, bool2, bool1, false);
      }
    }
    for (;;)
    {
      b(parama);
      return;
      bool2 = false;
      break;
      label106:
      bool1 = false;
      break label87;
      if ("location".equals(parama.e())) {
        a(parama, false);
      }
    }
  }
  
  public com.viber.voip.stickers.b getStickerBitmapLoader()
  {
    if (this.e == null) {
      this.e = r.a().d();
    }
    return this.e;
  }
  
  public bb getStickerSvgController()
  {
    if (this.f == null) {
      this.f = r.a().e();
    }
    return this.f;
  }
  
  public void onClick(View paramView)
  {
    if (this.l == null) {}
    while (paramView != this.b) {
      return;
    }
    this.m.e(this.l);
  }
  
  protected void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    c();
  }
  
  public void onStartTemporaryDetach()
  {
    super.onStartTemporaryDetach();
    c();
  }
  
  public void setBallonClickListener(com.viber.voip.messages.conversation.a.b.b paramb)
  {
    this.m = paramb;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.adapters.MediaLayout
 * JD-Core Version:    0.7.0.1
 */