package com.viber.voip.messages.ui.chathead;

import android.net.Uri;
import com.nineoldandroids.animation.Animator;
import com.nineoldandroids.animation.AnimatorListenerAdapter;
import com.viber.voip.messages.orm.entity.impl.ParticipantInfoEntityImpl;
import java.util.ArrayList;

class an
  extends AnimatorListenerAdapter
{
  an(d paramd, b paramb, Uri paramUri, boolean paramBoolean, ParticipantInfoEntityImpl paramParticipantInfoEntityImpl) {}
  
  public void onAnimationEnd(Animator paramAnimator)
  {
    d.a(this.e, this.a, this.b, d.t(this.e).size(), this.c, this.d);
    super.onAnimationEnd(paramAnimator);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.ui.chathead.an
 * JD-Core Version:    0.7.0.1
 */