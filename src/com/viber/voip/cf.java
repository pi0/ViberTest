package com.viber.voip;

import android.content.Intent;
import com.viber.voip.messages.j;
import com.viber.voip.util.az;

class cf
  implements az
{
  cf(SystemDialogActivity paramSystemDialogActivity, String paramString) {}
  
  public void a(boolean paramBoolean)
  {
    Intent localIntent = j.a(this.a, 0L, 0L, null, null);
    localIntent.putExtra("send_1to1", true);
    SystemDialogActivity.a(this.b, 1, this.a);
    this.b.finish();
    this.b.startActivity(localIntent);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.cf
 * JD-Core Version:    0.7.0.1
 */