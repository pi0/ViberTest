package com.viber.voip.messages.ui.chathead.a;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import android.text.Editable;
import android.view.ContextMenu;
import android.view.ContextMenu.ContextMenuInfo;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.MenuInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.viber.voip.ViberApplication;
import com.viber.voip.messages.LocationEditText;
import com.viber.voip.messages.conversation.a.a.a;
import com.viber.voip.messages.conversation.ap;
import com.viber.voip.messages.conversation.ui.ConversationFragment;
import com.viber.voip.messages.conversation.ui.ba;
import com.viber.voip.messages.conversation.w;
import com.viber.voip.messages.ui.ad;
import com.viber.voip.messages.ui.aj;
import com.viber.voip.messages.ui.ay;
import com.viber.voip.messages.ui.bb;
import com.viber.voip.messages.ui.bd;
import com.viber.voip.util.gj;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;

public abstract class b
  extends ConversationFragment
  implements ay
{
  private TextView a;
  private TextView l;
  private EditText m;
  private ad n;
  private ap o;
  private bb p;
  private com.viber.provider.e q = new c(this);
  private h r = new h(this, new g(this));
  
  protected String F()
  {
    return "Messages_chat_head";
  }
  
  public void I()
  {
    if (this.o == null)
    {
      this.o = new ap(D(), true, true, this.g, this.q);
      this.o.n();
    }
    this.o.h();
    this.o.b(this.f.k());
    this.o.e();
  }
  
  public abstract void a(Intent paramIntent);
  
  public void a(String paramString)
  {
    this.l.setText(paramString);
    TextView localTextView = this.l;
    if (gj.c(paramString)) {}
    for (int i = 8;; i = 0)
    {
      localTextView.setVisibility(i);
      return;
    }
  }
  
  public void b(a parama)
  {
    c(-1);
    super.b(parama);
  }
  
  public void b(String paramString)
  {
    this.a.setText(paramString);
  }
  
  public boolean b(Intent paramIntent)
  {
    return (paramIntent != null) && (paramIntent.getAction() != null) && (paramIntent.getAction().contains("com.viber.voip.action"));
  }
  
  protected boolean b(View paramView)
  {
    c(paramView);
    return true;
  }
  
  public abstract void c(int paramInt);
  
  public void c(View paramView)
  {
    try
    {
      Class localClass1 = Class.forName("com.android.internal.view.menu.ContextMenuBuilder");
      Constructor localConstructor = localClass1.getDeclaredConstructor(new Class[] { Context.class });
      Object[] arrayOfObject1 = new Object[1];
      arrayOfObject1[0] = new ContextThemeWrapper(paramView.getContext(), 2131558709);
      Object localObject1 = localConstructor.newInstance(arrayOfObject1);
      Class localClass2 = Class.forName("com.android.internal.view.menu.MenuBuilder$Callback");
      Object localObject2 = Proxy.newProxyInstance(localClass2.getClassLoader(), new Class[] { localClass2 }, this.r);
      localClass1.getMethod("setCallback", new Class[] { localClass2 }).invoke(localObject1, new Object[] { localObject2 });
      Method localMethod = localClass1.getDeclaredMethod("show", new Class[] { View.class, IBinder.class });
      Object[] arrayOfObject2 = new Object[2];
      arrayOfObject2[0] = paramView;
      arrayOfObject2[1] = h();
      localMethod.invoke(localObject1, arrayOfObject2);
      ViberApplication.log("show");
      return;
    }
    catch (Exception localException)
    {
      ViberApplication.log(localException.toString());
    }
  }
  
  public void c(String paramString)
  {
    if ((this.m != null) && (paramString != null))
    {
      int i = this.m.getSelectionStart();
      Editable localEditable = this.m.getText();
      CharSequence localCharSequence1 = localEditable.subSequence(0, i);
      CharSequence localCharSequence2 = localEditable.subSequence(i, localEditable.length());
      this.m.setText(localCharSequence1 + paramString + localCharSequence2);
      this.p.a(this.m, bd.c, false);
      this.m.setSelection(i);
    }
  }
  
  public boolean c(a parama)
  {
    c(-1);
    return super.c(parama);
  }
  
  public void e(a parama)
  {
    c(-1);
    super.e(parama);
  }
  
  public void g(a parama)
  {
    c(-1);
    super.g(parama);
  }
  
  public abstract IBinder h();
  
  public ad i()
  {
    if (this.n == null) {
      this.n = new f(this);
    }
    return this.n;
  }
  
  public void onCreateContextMenu(ContextMenu paramContextMenu, View paramView, ContextMenu.ContextMenuInfo paramContextMenuInfo)
  {
    a(paramContextMenu, paramView, new MenuInflater(paramView.getContext()));
  }
  
  @SuppressLint({"NewApi"})
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    LinearLayout localLinearLayout = (LinearLayout)super.onCreateView(paramLayoutInflater, paramViewGroup, paramBundle);
    View localView = paramLayoutInflater.inflate(2130903298, localLinearLayout, false);
    localLinearLayout.addView(localView, 0);
    this.a = ((TextView)localView.findViewById(2131165494));
    this.l = ((TextView)localView.findViewById(2131165495));
    this.m = ((LocationEditText)localLinearLayout.findViewById(2131165915));
    this.m.setInputType(524432);
    this.m.setOnLongClickListener(new d(this));
    registerForContextMenu(this.m);
    e locale = new e(this);
    localLinearLayout.findViewById(2131166053).setOnClickListener(locale);
    localLinearLayout.findViewById(2131166052).setOnClickListener(locale);
    B().k().a(this);
    this.p = new bb(D());
    return localLinearLayout;
  }
  
  public void onDestroyView()
  {
    if (this.o != null) {
      this.o.m();
    }
    super.onDestroyView();
  }
  
  public void startActivity(Intent paramIntent)
  {
    if (b(paramIntent)) {
      a(paramIntent);
    }
    for (;;)
    {
      paramIntent.addFlags(268435456);
      D().startActivity(paramIntent);
      return;
      D().sendBroadcast(new Intent("com.viber.voip.action.POPUP_SERVICE_ACTION"));
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.ui.chathead.a.b
 * JD-Core Version:    0.7.0.1
 */