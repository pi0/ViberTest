package com.viber.voip.widget.a;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import android.widget.LinearLayout;
import android.widget.TextView;

public class a
  extends LinearLayout
{
  public static e a = new e(2130838322, 2131494449);
  public static e b = new e(-1, -1, 5000L);
  private final TextView c;
  private final TextView d;
  private final Handler e = new Handler();
  private d f;
  private e g = a;
  private Parcelable h;
  private CharSequence i;
  private final Runnable j = new b(this);
  
  private a(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    LayoutInflater.from(paramContext).inflate(2130903345, this, true);
    this.c = ((TextView)findViewById(2131166154));
    this.d = ((TextView)findViewById(2131166155));
    this.d.setOnClickListener(new c(this));
    a(true);
  }
  
  private static Animation a(Animation.AnimationListener paramAnimationListener)
  {
    AlphaAnimation localAlphaAnimation = new AlphaAnimation(1.0F, 0.0F);
    localAlphaAnimation.setDuration(500L);
    localAlphaAnimation.setAnimationListener(paramAnimationListener);
    return localAlphaAnimation;
  }
  
  private static a a(View paramView)
  {
    View localView = paramView.findViewById(2131166153);
    a locala = null;
    if (localView != null) {
      locala = (a)localView.getParent();
    }
    return locala;
  }
  
  public static a a(View paramView, CharSequence paramCharSequence, d paramd, Parcelable paramParcelable, boolean paramBoolean, e parame)
  {
    Object localObject = a(paramView);
    if (localObject == null)
    {
      a locala = new a(paramView.getContext(), null);
      ((ViewGroup)paramView.findViewById(16908290)).addView(locala);
      localObject = locala;
    }
    ((a)localObject).g = parame;
    ((a)localObject).setUndoListener(paramd);
    ((a)localObject).a(paramBoolean, paramCharSequence, paramParcelable);
    return localObject;
  }
  
  public static a a(View paramView, CharSequence paramCharSequence, d paramd, e parame)
  {
    return a(paramView, paramCharSequence, paramd, null, false, parame);
  }
  
  private void a(boolean paramBoolean)
  {
    this.e.removeCallbacks(this.j);
    this.h = null;
    if (paramBoolean)
    {
      setVisibility(8);
      return;
    }
    clearAnimation();
    startAnimation(a(null));
    setVisibility(8);
  }
  
  private void a(boolean paramBoolean, CharSequence paramCharSequence, Parcelable paramParcelable)
  {
    this.h = paramParcelable;
    this.i = paramCharSequence;
    this.c.setText(this.i);
    if (this.g != null)
    {
      if (this.g.b <= 0) {
        break label124;
      }
      this.d.setVisibility(0);
      this.d.setText(this.g.b);
    }
    for (;;)
    {
      this.e.removeCallbacks(this.j);
      if (this.g.c > 0L) {
        this.e.postDelayed(this.j, this.g.c);
      }
      if (!paramBoolean)
      {
        clearAnimation();
        startAnimation(b(null));
      }
      setVisibility(0);
      return;
      label124:
      this.d.setVisibility(8);
    }
  }
  
  private static Animation b(Animation.AnimationListener paramAnimationListener)
  {
    AlphaAnimation localAlphaAnimation = new AlphaAnimation(0.0F, 1.0F);
    localAlphaAnimation.setDuration(500L);
    localAlphaAnimation.setAnimationListener(paramAnimationListener);
    return localAlphaAnimation;
  }
  
  private void setUndoListener(d paramd)
  {
    this.f = paramd;
  }
  
  public d getUndoListener()
  {
    return this.f;
  }
  
  protected void onRestoreInstanceState(Parcelable paramParcelable)
  {
    if ((paramParcelable instanceof Bundle))
    {
      Bundle localBundle = (Bundle)paramParcelable;
      this.i = localBundle.getCharSequence("undo_message");
      this.h = localBundle.getParcelable("undo_token");
      return;
    }
    super.onRestoreInstanceState(paramParcelable);
  }
  
  protected Parcelable onSaveInstanceState()
  {
    Bundle localBundle = new Bundle();
    localBundle.putCharSequence("undo_message", this.i);
    localBundle.putParcelable("undo_token", this.h);
    return localBundle;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.widget.a.a
 * JD-Core Version:    0.7.0.1
 */