package com.viber.voip.messages.ui.chathead;

import com.nineoldandroids.animation.Animator;
import com.nineoldandroids.animation.AnimatorListenerAdapter;
import com.nineoldandroids.animation.AnimatorSet;
import com.nineoldandroids.animation.ObjectAnimator;
import com.viber.voip.messages.ui.chathead.a.a;

class y
  extends AnimatorListenerAdapter
{
  y(d paramd, a parama) {}
  
  public void onAnimationEnd(Animator paramAnimator)
  {
    if (!d.g(this.b)) {
      return;
    }
    if (d.N(this.b))
    {
      d.a(this.b, false);
      d.G(this.b);
    }
    ObjectAnimator localObjectAnimator1;
    a locala4;
    float[] arrayOfFloat4;
    if (this.a == d.ab(this.b))
    {
      a locala3 = this.a;
      float[] arrayOfFloat3 = new float[1];
      arrayOfFloat3[0] = (d.c(this.b).j / d.c(this.b).b);
      localObjectAnimator1 = ObjectAnimator.ofFloat(locala3, "scaleX", arrayOfFloat3);
      locala4 = this.a;
      arrayOfFloat4 = new float[1];
      arrayOfFloat4[0] = (d.c(this.b).j / d.c(this.b).b);
    }
    a locala2;
    float[] arrayOfFloat2;
    for (ObjectAnimator localObjectAnimator2 = ObjectAnimator.ofFloat(locala4, "scaleY", arrayOfFloat4);; localObjectAnimator2 = ObjectAnimator.ofFloat(locala2, "scaleY", arrayOfFloat2))
    {
      AnimatorSet localAnimatorSet = new AnimatorSet();
      localAnimatorSet.setDuration(250L);
      localAnimatorSet.playTogether(new Animator[] { localObjectAnimator1, localObjectAnimator2 });
      localAnimatorSet.start();
      return;
      a locala1 = this.a;
      float[] arrayOfFloat1 = new float[1];
      arrayOfFloat1[0] = (d.c(this.b).i / d.c(this.b).b);
      localObjectAnimator1 = ObjectAnimator.ofFloat(locala1, "scaleX", arrayOfFloat1);
      locala2 = this.a;
      arrayOfFloat2 = new float[1];
      arrayOfFloat2[0] = (d.c(this.b).i / d.c(this.b).b);
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.ui.chathead.y
 * JD-Core Version:    0.7.0.1
 */