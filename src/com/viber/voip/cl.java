package com.viber.voip;

import android.content.Intent;
import com.viber.service.i;
import com.viber.voip.a.a;
import com.viber.voip.a.bc;
import com.viber.voip.a.g;
import com.viber.voip.messages.j;
import com.viber.voip.util.gw;

class cl
  implements i
{
  cl(SystemDialogActivity paramSystemDialogActivity, String paramString1, String paramString2, String paramString3) {}
  
  public void a()
  {
    if ("vnd.android.cursor.item/vnd.com.viber.voip.viber_number_call".equals(this.a))
    {
      bc.a().a(a.v.i(false));
      gw.a(this.d, this.b, a.C);
      this.d.finish();
    }
    do
    {
      return;
      if ("vnd.android.cursor.item/vnd.com.viber.voip.viber_number_message".equals(this.a))
      {
        Intent localIntent = j.a(this.b, 0L, 0L, this.c, null);
        localIntent.setAction("com.viber.voip.action.PRE_CONVERSATION");
        localIntent.putExtra("send_1to1", true);
        this.d.startActivity(localIntent);
        this.d.finish();
        return;
      }
    } while ((!"vnd.android.cursor.item/vnd.com.viber.voip.viber_out_call_none_viber".equals(this.a)) && (!"vnd.android.cursor.item/vnd.com.viber.voip.viber_out_call_viber".equals(this.a)));
    bc.a().a(a.v.i(true));
    gw.a(this.d, this.b, true, a.C);
    this.d.finish();
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.cl
 * JD-Core Version:    0.7.0.1
 */