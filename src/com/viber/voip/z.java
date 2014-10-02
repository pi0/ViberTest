package com.viber.voip;

import android.view.View;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.viber.voip.messages.extras.image.h;
import com.viber.voip.ui.x;

public class z
  implements x
{
  private int b = -1;
  private View c;
  private TextView d;
  private ProgressBar e;
  private int f;
  
  public z(ConversationListView paramConversationListView)
  {
    this.c = View.inflate(paramConversationListView.getContext(), 2130903316, null);
    this.d = ((TextView)this.c.findViewById(2131166095));
    this.e = ((ProgressBar)this.c.findViewById(2131166096));
    this.f = h.a(60.0F);
  }
  
  public View a()
  {
    return this.c;
  }
  
  public void a(int paramInt)
  {
    if (this.b == paramInt) {
      return;
    }
    this.b = paramInt;
    int i;
    label38:
    ProgressBar localProgressBar;
    int j;
    switch (paramInt)
    {
    default: 
      i = 0;
      localProgressBar = this.e;
      j = 0;
      if (paramInt != 0) {
        break;
      }
    }
    for (;;)
    {
      localProgressBar.setVisibility(j);
      if (i == 0) {
        break;
      }
      this.d.setText(i);
      return;
      i = 2131494164;
      break label38;
      i = 2131494165;
      c();
      break label38;
      j = 8;
    }
  }
  
  public int b()
  {
    return this.f;
  }
  
  public void c()
  {
    Animation localAnimation = AnimationUtils.loadAnimation(ViberApplication.getInstance(), 2130968581);
    localAnimation.setStartOffset(1500L);
    localAnimation.setAnimationListener(new aa(this));
    this.c.startAnimation(localAnimation);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.z
 * JD-Core Version:    0.7.0.1
 */