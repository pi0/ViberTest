package com.viber.voip.messages.conversation.publicgroup;

import android.content.Context;
import android.content.res.Resources;
import android.widget.LinearLayout;
import com.viber.voip.messages.a.a;
import com.viber.voip.messages.a.b;
import com.viber.voip.messages.conversation.ap;
import com.viber.voip.messages.conversation.ar;

public class bc
  extends LinearLayout
{
  private int a;
  private int b;
  private PublicGroupInfoParticipantView[] c;
  
  public bc(Context paramContext, int paramInt)
  {
    super(paramContext);
    this.a = paramInt;
    setOrientation(1);
    this.b = paramContext.getResources().getDimensionPixelSize(2131362304);
    this.c = new PublicGroupInfoParticipantView[this.a];
    for (int i = 0; i < this.a; i++)
    {
      PublicGroupInfoParticipantView localPublicGroupInfoParticipantView = new PublicGroupInfoParticipantView(paramContext);
      if (i > 0) {
        localPublicGroupInfoParticipantView.setPadding(0, this.b, 0, 0);
      }
      this.c[i] = localPublicGroupInfoParticipantView;
      addView(localPublicGroupInfoParticipantView);
    }
  }
  
  public void a(int paramInt1, ap paramap, int paramInt2)
  {
    int i = paramInt1 * this.a;
    int j = Math.min(i + this.a, paramap.getCount());
    int k = 0;
    int m = i;
    if (k < this.a)
    {
      PublicGroupInfoParticipantView localPublicGroupInfoParticipantView = this.c[k];
      if (m < j)
      {
        localPublicGroupInfoParticipantView.setVisibility(0);
        ar localar = paramap.e(m);
        localPublicGroupInfoParticipantView.a(localar.a(paramInt2), b.d().a(localar.b(), true), localar.o(), localar.h(), localar.f(), localar.g());
        localPublicGroupInfoParticipantView.setDefaultOnClickListener(paramInt2);
      }
      for (;;)
      {
        int n = m + 1;
        k++;
        m = n;
        break;
        localPublicGroupInfoParticipantView.setVisibility(8);
      }
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.conversation.publicgroup.bc
 * JD-Core Version:    0.7.0.1
 */