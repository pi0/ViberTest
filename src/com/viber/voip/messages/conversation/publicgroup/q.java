package com.viber.voip.messages.conversation.publicgroup;

import android.location.Address;
import android.os.Bundle;
import com.viber.voip.messages.extras.a.c;

class q
  implements c
{
  q(CreatePublicGroupActivity paramCreatePublicGroupActivity, Bundle paramBundle) {}
  
  public void a(Address paramAddress, String paramString)
  {
    this.b.runOnUiThread(new r(this, paramAddress, paramString));
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.conversation.publicgroup.q
 * JD-Core Version:    0.7.0.1
 */