package com.viber.voip.messages.ui.chathead;

import android.os.Vibrator;
import android.widget.ImageView;
import com.nineoldandroids.animation.Animator;
import com.nineoldandroids.animation.AnimatorListenerAdapter;
import java.util.ArrayList;
import java.util.Iterator;

class i
  extends AnimatorListenerAdapter
{
  i(d paramd) {}
  
  public void onAnimationEnd(Animator paramAnimator)
  {
    int[] arrayOfInt = new int[2];
    d.y(this.a).getLocationOnScreen(arrayOfInt);
    int i = arrayOfInt[0];
    int j = arrayOfInt[1] - d.z(this.a);
    Iterator localIterator = d.t(this.a).iterator();
    while (localIterator.hasNext())
    {
      b localb = (b)localIterator.next();
      ay.a(localb.a(), i);
      ay.b(localb.a(), j);
    }
    d.d(this.a, true);
    d.A(this.a).vibrate(20L);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.ui.chathead.i
 * JD-Core Version:    0.7.0.1
 */