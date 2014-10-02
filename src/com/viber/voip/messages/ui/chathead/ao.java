package com.viber.voip.messages.ui.chathead;

import com.nineoldandroids.animation.Animator;
import com.nineoldandroids.animation.AnimatorListenerAdapter;
import com.viber.voip.messages.j;
import com.viber.voip.messages.orm.entity.ConversationEntity;
import com.viber.voip.messages.ui.chathead.a.a;

class ao
  extends AnimatorListenerAdapter
{
  ao(d paramd, boolean paramBoolean, b paramb) {}
  
  public void onAnimationEnd(Animator paramAnimator)
  {
    if (this.a)
    {
      d.a(this.c, this.b.a());
      d.a(this.c, this.b);
    }
    for (;;)
    {
      super.onAnimationEnd(paramAnimator);
      d.c(this.c, true);
      return;
      this.b.a().setShowBadge(true);
      if (this.b.b().getUnreadMessagesCount() != 0) {
        this.b.a().setMessagesCount(j.b(this.b.b().getUnreadMessagesCount()));
      }
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.ui.chathead.ao
 * JD-Core Version:    0.7.0.1
 */