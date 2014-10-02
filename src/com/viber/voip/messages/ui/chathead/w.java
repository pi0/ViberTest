package com.viber.voip.messages.ui.chathead;

import android.os.Vibrator;
import android.widget.ImageView;
import com.nineoldandroids.animation.Animator;
import com.nineoldandroids.animation.AnimatorListenerAdapter;
import com.viber.voip.messages.ui.chathead.a.a;

class w
  extends AnimatorListenerAdapter
{
  w(d paramd, a parama) {}
  
  public void onAnimationEnd(Animator paramAnimator)
  {
    int[] arrayOfInt = new int[2];
    d.y(this.b).getLocationOnScreen(arrayOfInt);
    int i = arrayOfInt[0];
    int j = arrayOfInt[1] - d.d(this.b);
    ay.a(this.a, i);
    ay.b(this.a, j);
    d.d(this.b, true);
    d.A(this.b).vibrate(20L);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.ui.chathead.w
 * JD-Core Version:    0.7.0.1
 */