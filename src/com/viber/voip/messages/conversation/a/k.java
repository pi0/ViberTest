package com.viber.voip.messages.conversation.a;

import android.view.View;
import android.view.View.OnClickListener;
import com.viber.voip.block.i;
import com.viber.voip.messages.conversation.h;
import com.viber.voip.messages.conversation.ui.ConversationFragment;
import java.util.HashSet;
import java.util.Set;

class k
  implements View.OnClickListener
{
  k(j paramj) {}
  
  public void onClick(View paramView)
  {
    HashSet localHashSet = new HashSet();
    localHashSet.add(j.a(this.a).e());
    i.a(g.b(this.a.a).E(), null, localHashSet, null, false);
    this.a.a(false);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.conversation.a.k
 * JD-Core Version:    0.7.0.1
 */