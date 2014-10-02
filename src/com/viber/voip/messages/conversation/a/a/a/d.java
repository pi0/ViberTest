package com.viber.voip.messages.conversation.a.a.a;

import android.content.Intent;
import android.support.v4.app.FragmentActivity;
import com.viber.voip.messages.conversation.a.a.a;
import com.viber.voip.messages.conversation.publicgroup.PublicGroupConversationData;
import com.viber.voip.messages.conversation.ui.ConversationFragment;
import com.viber.voip.messages.j;
import com.viber.voip.util.hv;

class d
  implements com.viber.voip.widget.d
{
  d(b paramb) {}
  
  public void a(a parama)
  {
    Intent localIntent1 = j.a(new PublicGroupConversationData(parama.ag(), parama.y(), hv.b(parama.I()), parama.E(), parama.M(), (int)parama.h(), parama.ah(), parama.Y()), true);
    localIntent1.addFlags(268435456);
    if (b.a(this.a).getActivity() != null) {}
    for (Intent localIntent2 = b.a(this.a).getActivity().getIntent();; localIntent2 = null)
    {
      localIntent1.putExtra("back_intent", localIntent2);
      b.a(this.a).getActivity().startActivity(localIntent1);
      return;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.conversation.a.a.a.d
 * JD-Core Version:    0.7.0.1
 */