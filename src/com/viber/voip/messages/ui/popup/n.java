package com.viber.voip.messages.ui.popup;

import android.support.v4.view.ViewPager;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import com.viber.voip.messages.ui.PttViewController;
import com.viber.voip.messages.ui.popup.view.PopupStickerQuickReply;
import com.viber.voip.messages.ui.popup.view.PopupViewPagerRoot;

public class n
{
  public final PopupViewPagerRoot a;
  public final ViewPager b;
  public final ViewPager c;
  public final ImageButton d;
  public final ImageButton e;
  public final LinearLayout f;
  public final LinearLayout g;
  public final ImageButton h;
  public final EditText i;
  public final Button j;
  public final View k;
  public final View l;
  public final View m;
  public final PopupStickerQuickReply n;
  public final View o;
  public final PttViewController p;
  protected int q;
  
  private n(PopupMessageActivity paramPopupMessageActivity)
  {
    this.g = ((LinearLayout)paramPopupMessageActivity.findViewById(2131165712));
    this.g.getViewTreeObserver().addOnGlobalLayoutListener(new o(this, paramPopupMessageActivity));
    this.i = ((EditText)paramPopupMessageActivity.findViewById(2131165866));
    this.h = ((ImageButton)paramPopupMessageActivity.findViewById(2131165867));
    this.a = ((PopupViewPagerRoot)paramPopupMessageActivity.findViewById(2131165863));
    this.b = ((ViewPager)paramPopupMessageActivity.findViewById(2131165861));
    this.c = ((ViewPager)paramPopupMessageActivity.findViewById(2131165862));
    this.f = ((LinearLayout)paramPopupMessageActivity.findViewById(2131165340));
    this.d = ((ImageButton)paramPopupMessageActivity.findViewById(2131165858));
    this.e = ((ImageButton)paramPopupMessageActivity.findViewById(2131165868));
    this.j = ((Button)paramPopupMessageActivity.findViewById(2131165864));
    this.k = paramPopupMessageActivity.findViewById(2131165865);
    this.l = paramPopupMessageActivity.findViewById(2131165769);
    this.m = paramPopupMessageActivity.findViewById(2131166048);
    this.n = ((PopupStickerQuickReply)paramPopupMessageActivity.findViewById(2131166049));
    this.o = paramPopupMessageActivity.findViewById(2131166050);
    this.p = ((PttViewController)paramPopupMessageActivity.findViewById(2131165697));
    this.p.setCallbacks(new q(this, paramPopupMessageActivity));
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.ui.popup.n
 * JD-Core Version:    0.7.0.1
 */