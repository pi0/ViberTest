package com.viber.voip.messages.ui.chathead;

import com.nineoldandroids.animation.Animator;
import com.nineoldandroids.animation.AnimatorListenerAdapter;
import com.viber.voip.messages.controller.c.e;
import com.viber.voip.messages.orm.entity.ConversationEntity;
import com.viber.voip.messages.ui.chathead.a.a;
import com.viber.voip.util.fz;

class v
  extends AnimatorListenerAdapter
{
  v(d paramd, a parama1, a parama2, b paramb) {}
  
  public void onAnimationEnd(Animator paramAnimator)
  {
    this.a.setBorderVisible(true);
    if ((this.b != null) && (this.b != this.a)) {
      this.b.setBorderVisible(false);
    }
    if (!(this.c instanceof ax))
    {
      this.c.a().setShowBadge(false);
      this.c.a().a();
    }
    if (this.c.b() != null)
    {
      e.a().c(this.c.b().getId(), true);
      e.a().a(this.c.b().getId(), true);
    }
    d.c(this.d, d.aa(this.d).g());
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.ui.chathead.v
 * JD-Core Version:    0.7.0.1
 */