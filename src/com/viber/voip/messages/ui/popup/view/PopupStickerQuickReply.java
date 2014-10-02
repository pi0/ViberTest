package com.viber.voip.messages.ui.popup.view;

import android.content.Context;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnTouchListener;
import android.widget.FrameLayout.LayoutParams;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import com.viber.voip.stickers.ba;
import com.viber.voip.stickers.r;

public class PopupStickerQuickReply
  extends LinearLayout
  implements View.OnClickListener, View.OnTouchListener
{
  private static final Integer[] a;
  private static final Integer[] b;
  private static final ba d = ba.a;
  private c c;
  
  static
  {
    Integer[] arrayOfInteger1 = new Integer[5];
    arrayOfInteger1[0] = Integer.valueOf(404);
    arrayOfInteger1[1] = Integer.valueOf(437);
    arrayOfInteger1[2] = Integer.valueOf(-2);
    arrayOfInteger1[3] = Integer.valueOf(-1);
    arrayOfInteger1[4] = Integer.valueOf(407);
    a = arrayOfInteger1;
    Integer[] arrayOfInteger2 = new Integer[5];
    arrayOfInteger2[0] = Integer.valueOf(404);
    arrayOfInteger2[1] = Integer.valueOf(437);
    arrayOfInteger2[2] = Integer.valueOf(423);
    arrayOfInteger2[3] = Integer.valueOf(420);
    arrayOfInteger2[4] = Integer.valueOf(407);
    b = arrayOfInteger2;
  }
  
  public PopupStickerQuickReply(Context paramContext)
  {
    super(paramContext);
    a();
  }
  
  public PopupStickerQuickReply(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    a();
  }
  
  private View a(int paramInt1, int paramInt2, r paramr, com.viber.voip.stickers.b paramb)
  {
    View localView1 = inflate(getContext(), 2130903339, null);
    localView1.setLayoutParams(new LinearLayout.LayoutParams((int)getResources().getDimension(2131362193), (int)getResources().getDimension(2131362193), 1.0F));
    FrameLayout.LayoutParams localLayoutParams = new FrameLayout.LayoutParams(-2, -2);
    localLayoutParams.gravity = 17;
    ImageView localImageView1 = (ImageView)localView1.findViewById(2131166141);
    localImageView1.setLayoutParams(localLayoutParams);
    localImageView1.setScaleType(ImageView.ScaleType.CENTER_CROP);
    ImageView localImageView2 = (ImageView)localView1.findViewById(2131166142);
    localImageView2.setLayoutParams(localLayoutParams);
    localImageView1.setScaleType(ImageView.ScaleType.CENTER_CROP);
    View localView2 = localView1.findViewById(2131166140);
    com.viber.voip.stickers.c.a locala = paramr.a(paramInt1, false);
    com.viber.voip.stickers.ui.b localb = new com.viber.voip.stickers.ui.b(paramb, localImageView1, localImageView2);
    localb.a(locala);
    localb.a(true, true, d);
    localb.a(false, true, d);
    localView2.setTag(new b(locala, paramInt2, localImageView1, localImageView2, localb, null));
    localView2.setOnClickListener(this);
    localView2.setOnTouchListener(this);
    return localView1;
  }
  
  private void a()
  {
    if (isInEditMode()) {}
    for (;;)
    {
      return;
      r localr = r.a();
      com.viber.voip.stickers.b localb = localr.d();
      setWeightSum(a.length);
      for (int i = 0; i < a.length; i++) {
        addView(a(a[i].intValue(), b[i].intValue(), localr, localb));
      }
    }
  }
  
  public void onClick(View paramView)
  {
    if (this.c != null) {
      this.c.a(((b)paramView.getTag()).b);
    }
  }
  
  public boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    b localb = (b)paramView.getTag();
    switch (paramMotionEvent.getAction())
    {
    case 2: 
    default: 
      return false;
    case 0: 
      localb.d.setVisibility(0);
      localb.e.a(true, true, d, new a(this, localb));
      return false;
    }
    localb.d.setVisibility(8);
    localb.e.a(true);
    return false;
  }
  
  public void setStickerSelectListener(c paramc)
  {
    this.c = paramc;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.ui.popup.view.PopupStickerQuickReply
 * JD-Core Version:    0.7.0.1
 */