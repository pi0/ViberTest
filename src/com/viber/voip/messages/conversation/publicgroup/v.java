package com.viber.voip.messages.conversation.publicgroup;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import com.viber.voip.messages.j;

class v
  implements DialogInterface.OnClickListener
{
  v(CreatePublicGroupActivity paramCreatePublicGroupActivity, long paramLong) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    Intent localIntent = j.a(this.a, 2);
    this.b.startActivity(localIntent);
    this.b.finish();
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.conversation.publicgroup.v
 * JD-Core Version:    0.7.0.1
 */