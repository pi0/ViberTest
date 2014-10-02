package com.viber.voip.gallery.preview;

import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.view.View;
import com.nineoldandroids.animation.Animator;
import com.nineoldandroids.animation.AnimatorListenerAdapter;

class g
  extends AnimatorListenerAdapter
{
  g(DoodleBaseActivity paramDoodleBaseActivity, int paramInt, Runnable paramRunnable) {}
  
  public void onAnimationEnd(Animator paramAnimator)
  {
    FragmentTransaction localFragmentTransaction = this.c.getSupportFragmentManager().beginTransaction();
    switch (this.a)
    {
    }
    for (;;)
    {
      localFragmentTransaction.commit();
      this.c.c.setVisibility(4);
      if (this.b != null) {
        this.b.run();
      }
      return;
      this.c.g.setSelected(false);
      localFragmentTransaction.remove(DoodleBaseActivity.b(this.c));
      continue;
      this.c.h.setSelected(false);
      localFragmentTransaction.remove(DoodleBaseActivity.c(this.c));
      continue;
      this.c.i.setSelected(false);
      localFragmentTransaction.remove(DoodleBaseActivity.d(this.c));
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.gallery.preview.g
 * JD-Core Version:    0.7.0.1
 */