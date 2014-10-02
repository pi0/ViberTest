package com.viber.voip.messages.conversation.publicgroup;

import android.os.Handler;
import android.view.View;
import com.viber.voip.dc;
import com.viber.voip.dk;
import com.viber.voip.messages.ui.du;

class ax
  extends du
{
  private int c = -1;
  
  ax(PublicGroupInfoFragment paramPublicGroupInfoFragment, ParticipantControlsContainer paramParticipantControlsContainer) {}
  
  public void a(View paramView, int paramInt1, int paramInt2)
  {
    if (paramView.getMeasuredWidth() != this.c)
    {
      this.c = paramView.getMeasuredWidth();
      PublicGroupInfoFragment.a("Changed witdh: " + this.c);
      dc.a(dk.a).post(new ay(this));
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.conversation.publicgroup.ax
 * JD-Core Version:    0.7.0.1
 */