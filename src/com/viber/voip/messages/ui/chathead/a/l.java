package com.viber.voip.messages.ui.chathead.a;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.Intent;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.PopupWindow;
import com.actionbarsherlock.internal.view.menu.MenuBuilder;
import com.actionbarsherlock.internal.view.menu.MenuPopupHelper;
import com.viber.voip.e.u;
import com.viber.voip.messages.conversation.ui.ConversationData;
import com.viber.voip.messages.conversation.ui.ba;
import com.viber.voip.messages.conversation.w;
import com.viber.voip.messages.ui.MessageComposerView;
import com.viber.voip.util.hu;

public class l
  extends PopupWindow
{
  private b a;
  private i b;
  private Context c;
  private WindowManager d;
  private FrameLayout e;
  private View f;
  private View g;
  private Intent h;
  private View i;
  private boolean j;
  private MenuPopupHelper k;
  private ViewTreeObserver.OnGlobalLayoutListener l = new q(this);
  
  public l(Context paramContext)
  {
    super(paramContext);
    this.c = paramContext;
    this.d = ((WindowManager)this.c.getSystemService("window"));
    a();
  }
  
  private View a(Fragment paramFragment)
  {
    paramFragment.onCreate(null);
    LayoutInflater localLayoutInflater = (LayoutInflater)this.c.getSystemService("layout_inflater");
    FrameLayout localFrameLayout = new FrameLayout(new ContextThemeWrapper(this.c, 2131558588));
    localFrameLayout.setId(16908290);
    localFrameLayout.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
    View localView = paramFragment.onCreateView(localLayoutInflater, localFrameLayout, null);
    if (localView.getParent() == null) {
      localFrameLayout.addView(localView);
    }
    paramFragment.onActivityCreated(null);
    return localFrameLayout;
  }
  
  @TargetApi(16)
  public static void a(ViewTreeObserver paramViewTreeObserver, ViewTreeObserver.OnGlobalLayoutListener paramOnGlobalLayoutListener)
  {
    paramViewTreeObserver.removeOnGlobalLayoutListener(paramOnGlobalLayoutListener);
  }
  
  private void b(boolean paramBoolean)
  {
    MenuBuilder localMenuBuilder = new MenuBuilder(this.c);
    localMenuBuilder.setCallback(new r(this));
    if (!paramBoolean) {
      localMenuBuilder.add(0, 2131165300, 0, 2131494068);
    }
    localMenuBuilder.add(0, 2131165301, 0, 2131494487);
    this.k = new MenuPopupHelper(new ContextThemeWrapper(this.c, 2131558779), localMenuBuilder, this.e);
    this.k.show();
  }
  
  private void q()
  {
    this.h.setFlags(268435456);
    this.c.startActivity(this.h);
  }
  
  private void r()
  {
    Intent localIntent = new Intent("com.viber.voip.action.MESSAGES");
    localIntent.setFlags(268435456);
    this.c.startActivity(localIntent);
  }
  
  public void a()
  {
    this.e = new FrameLayout(new ContextThemeWrapper(this.c, 2131558588));
    FrameLayout.LayoutParams localLayoutParams = new FrameLayout.LayoutParams(-1, -1);
    this.e.setLayoutParams(localLayoutParams);
    this.a = new m(this);
    this.b = new n(this);
    this.f = a(this.a);
    this.g = a(this.b);
    this.g.setVisibility(8);
    this.i = this.f.findViewById(2131166054);
    n();
    this.i.setOnClickListener(new o(this));
    setContentView(b());
  }
  
  public void a(Intent paramIntent, boolean paramBoolean1, boolean paramBoolean2)
  {
    this.a.a("");
    this.h = paramIntent;
    this.a.a(paramIntent, paramBoolean1, paramBoolean2);
    this.f.setVisibility(0);
    this.g.setVisibility(8);
    this.a.G().a(true);
    this.a.G().l();
    ConversationData localConversationData = (ConversationData)paramIntent.getExtras().getParcelable("extra_conversation_data");
    if ((localConversationData != null) && (localConversationData.a())) {
      this.a.I();
    }
  }
  
  public void a(boolean paramBoolean)
  {
    this.a.c(paramBoolean);
    u.a().a(paramBoolean);
    hu.a().a(paramBoolean);
  }
  
  public FrameLayout b()
  {
    p localp = new p(this, this.c);
    localp.addView(this.f);
    localp.addView(this.g);
    return localp;
  }
  
  public void c()
  {
    dismiss();
    this.c.sendBroadcast(new Intent("com.viber.voip.action.CLOSE_POPUP"));
  }
  
  public void d()
  {
    this.a.C().k();
  }
  
  public void e()
  {
    this.a.onResume();
    this.b.onResume();
  }
  
  public void f()
  {
    this.a.onPause();
    this.b.onPause();
  }
  
  public void g()
  {
    this.a.onStop();
    this.b.onStop();
  }
  
  public void h()
  {
    this.a.onDestroyView();
    this.a.onDetach();
    this.b.onDestroyView();
    this.b.onDetach();
    if ((this.e != null) && (this.e.getParent() != null)) {
      this.d.removeView(this.e);
    }
  }
  
  public boolean i()
  {
    return this.g.getVisibility() == 0;
  }
  
  public void j()
  {
    if (this.a.G() != null)
    {
      this.a.G().l();
      this.a.G().a(false);
    }
  }
  
  public void k()
  {
    setContentView(this.g);
    this.f.setVisibility(8);
    this.b.t();
    this.g.setVisibility(0);
  }
  
  public void l()
  {
    this.a.B().h.c();
  }
  
  public void m()
  {
    if ((this.g.getVisibility() == 0) || ((this.f.getVisibility() == 0) && (!this.a.onActivityBackPressed()))) {
      dismiss();
    }
  }
  
  public void n()
  {
    this.i.getViewTreeObserver().addOnGlobalLayoutListener(this.l);
  }
  
  public void o()
  {
    if (Build.VERSION.SDK_INT >= 16)
    {
      a(this.i.getViewTreeObserver(), this.l);
      return;
    }
    this.i.getViewTreeObserver().removeGlobalOnLayoutListener(this.l);
  }
  
  public void p()
  {
    if (this.k != null) {
      this.k.dismiss();
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.ui.chathead.a.l
 * JD-Core Version:    0.7.0.1
 */