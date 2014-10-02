package com.viber.voip;

import android.content.Intent;
import com.viber.voip.messages.j;
import com.viber.voip.util.az;

class cd
  implements az
{
  cd(cc paramcc) {}
  
  public void a(boolean paramBoolean)
  {
    Intent localIntent = j.a(this.a.a, 0L, 0L, null, null);
    localIntent.putExtra("send_1to1", true);
    SystemDialogActivity.a(this.a.b, 1, this.a.a);
    this.a.b.finish();
    this.a.b.startActivity(localIntent);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.cd
 * JD-Core Version:    0.7.0.1
 */