package com.viber.voip.widget;

import android.app.Activity;
import android.os.Bundle;
import android.os.Handler;
import android.os.Parcelable;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.animation.AlphaAnimation;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import java.util.Iterator;
import java.util.LinkedList;

public class MessageBar
{
  private View a;
  private TextView b;
  private TextView c;
  private ImageView d;
  private ImageView e;
  private ProgressBar f;
  private LinkedList<MessageBar.Message> g = new LinkedList();
  private MessageBar.Message h;
  private boolean i;
  private k j;
  private Handler k;
  private AlphaAnimation l;
  private AlphaAnimation m;
  private final View.OnClickListener n = new h(this);
  private final Runnable o = new i(this);
  
  public MessageBar(Activity paramActivity)
  {
    ViewGroup localViewGroup = (ViewGroup)paramActivity.findViewById(16908290);
    a(paramActivity.getLayoutInflater().inflate(2130903245, localViewGroup));
  }
  
  public MessageBar(LayoutInflater paramLayoutInflater, View paramView)
  {
    a(paramLayoutInflater.inflate(2130903245, (ViewGroup)paramView));
  }
  
  private void a(View paramView)
  {
    this.a = paramView.findViewById(2131165282);
    this.a.setVisibility(8);
    this.b = ((TextView)paramView.findViewById(2131165283));
    this.c = ((TextView)paramView.findViewById(2131165284));
    this.e = ((ImageView)paramView.findViewById(2131165286));
    this.d = ((ImageView)paramView.findViewById(2131165285));
    this.f = ((ProgressBar)paramView.findViewById(2131165287));
    this.e.setOnClickListener(this.n);
    this.l = new AlphaAnimation(0.0F, 1.0F);
    this.m = new AlphaAnimation(1.0F, 0.0F);
    this.m.setDuration(600L);
    this.m.setAnimationListener(new g(this));
    this.k = new Handler();
  }
  
  private void a(MessageBar.Message paramMessage)
  {
    a(paramMessage, false);
  }
  
  private void a(MessageBar.Message paramMessage, boolean paramBoolean)
  {
    this.i = true;
    this.a.setVisibility(0);
    this.h = paramMessage;
    this.b.setText(paramMessage.a);
    label84:
    label110:
    label125:
    Handler localHandler;
    label137:
    Runnable localRunnable;
    if (!TextUtils.isEmpty(paramMessage.b))
    {
      this.c.setVisibility(0);
      this.c.setText(paramMessage.b);
      if (paramMessage.c == 0) {
        break label193;
      }
      this.e.setVisibility(0);
      this.e.setImageResource(paramMessage.c);
      if (paramMessage.d == 0) {
        break label205;
      }
      this.d.setVisibility(0);
      this.d.setImageResource(paramMessage.d);
      if (!paramMessage.e) {
        break label217;
      }
      this.f.setVisibility(0);
      if (!paramBoolean) {
        break label229;
      }
      this.l.setDuration(0L);
      this.a.startAnimation(this.l);
      localHandler = this.k;
      localRunnable = this.o;
      if (!paramMessage.f) {
        break label242;
      }
    }
    label193:
    label205:
    label217:
    label229:
    label242:
    for (long l1 = 60000L;; l1 = 5000L)
    {
      localHandler.postDelayed(localRunnable, l1);
      return;
      this.c.setVisibility(8);
      break;
      this.e.setVisibility(8);
      break label84;
      this.d.setVisibility(8);
      break label110;
      this.f.setVisibility(8);
      break label125;
      this.l.setDuration(600L);
      break label137;
    }
  }
  
  public void a()
  {
    this.g.clear();
    this.k.removeCallbacks(this.o);
    if (this.i) {
      this.o.run();
    }
  }
  
  public void a(Bundle paramBundle)
  {
    MessageBar.Message localMessage = (MessageBar.Message)paramBundle.getParcelable("com.viber.voip.widget.MessageBar.currentMessage");
    if (localMessage != null)
    {
      a(localMessage, true);
      for (Parcelable localParcelable : paramBundle.getParcelableArray("com.viber.voip.widget.MessageBar.messages")) {
        this.g.add((MessageBar.Message)localParcelable);
      }
    }
  }
  
  public void a(k paramk)
  {
    this.j = paramk;
  }
  
  public void a(String paramString1, String paramString2, int paramInt1, int paramInt2, Parcelable paramParcelable, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3)
  {
    MessageBar.Message localMessage = new MessageBar.Message(paramString1, paramString2, paramInt1, paramInt2, paramParcelable, paramBoolean2, paramBoolean3);
    if ((this.i) && (!paramBoolean1))
    {
      this.g.add(localMessage);
      return;
    }
    a(localMessage);
  }
  
  public void a(String paramString1, String paramString2, int paramInt1, int paramInt2, boolean paramBoolean1, boolean paramBoolean2)
  {
    a(paramString1, paramString2, paramInt1, paramInt2, null, paramBoolean1, paramBoolean2, false);
  }
  
  public void a(String paramString1, String paramString2, int paramInt1, int paramInt2, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3)
  {
    a(paramString1, paramString2, paramInt1, paramInt2, null, paramBoolean1, paramBoolean2, paramBoolean3);
  }
  
  public void a(String paramString1, String paramString2, int paramInt, boolean paramBoolean1, boolean paramBoolean2)
  {
    a(paramString1, paramString2, paramInt, 0, null, true, paramBoolean1, paramBoolean2);
  }
  
  public void b()
  {
    this.g.clear();
    this.k.removeCallbacks(this.o);
    this.h = null;
    this.a.setVisibility(8);
    this.i = false;
  }
  
  public Bundle c()
  {
    Bundle localBundle = new Bundle();
    localBundle.putParcelable("com.viber.voip.widget.MessageBar.currentMessage", this.h);
    MessageBar.Message[] arrayOfMessage = new MessageBar.Message[this.g.size()];
    Iterator localIterator = this.g.iterator();
    int i2;
    for (int i1 = 0; localIterator.hasNext(); i1 = i2)
    {
      MessageBar.Message localMessage = (MessageBar.Message)localIterator.next();
      i2 = i1 + 1;
      arrayOfMessage[i1] = localMessage;
    }
    localBundle.putParcelableArray("com.viber.voip.widget.MessageBar.messages", arrayOfMessage);
    return localBundle;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.widget.MessageBar
 * JD-Core Version:    0.7.0.1
 */