package com.viber.voip.messages.conversation.ui;

import android.os.Bundle;
import android.os.Parcelable;
import android.support.v4.app.FragmentActivity;
import com.viber.voip.messages.orm.entity.impl.MessageCallEntityImpl;
import java.util.List;

class al
  implements Runnable
{
  al(ak paramak, List paramList) {}
  
  public void run()
  {
    if ((this.b.a.getActivity() != null) && (this.b.a.getActivity().hasWindowFocus()))
    {
      Bundle localBundle = new Bundle();
      localBundle.putParcelableArray("extra_calls", (Parcelable[])this.a.toArray(new MessageCallEntityImpl[0]));
      g localg = new g();
      localg.setArguments(localBundle);
      localg.show(this.b.a.getFragmentManager(), ConversationFragment.H());
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.conversation.ui.al
 * JD-Core Version:    0.7.0.1
 */