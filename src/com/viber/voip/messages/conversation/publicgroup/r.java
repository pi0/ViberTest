package com.viber.voip.messages.conversation.publicgroup;

import android.location.Address;
import android.os.Bundle;
import com.viber.voip.ViberApplication;
import com.viber.voip.util.gj;
import com.viber.voip.widget.TextViewWithDescription;

class r
  implements Runnable
{
  r(q paramq, Address paramAddress, String paramString) {}
  
  public void run()
  {
    ViberApplication.log("getLocation onAddressReady address:" + this.a + ",addressString:" + this.b);
    if ((this.c.b.c != null) && (!this.c.b.isFinishing()))
    {
      CreatePublicGroupActivity.b(this.c.b, this.b);
      if (this.a != null) {
        CreatePublicGroupActivity.c(this.c.b, this.a.getCountryCode());
      }
      for (;;)
      {
        this.c.b.c.setRightDrawable(null);
        CreatePublicGroupActivity.a(this.c.b, CreatePublicGroupActivity.b(this.c.b));
        if ((this.c.a == null) || (gj.c(this.c.a.getString("countryName")))) {
          break;
        }
        CreatePublicGroupActivity.a(this.c.b, this.c.a.getString("countryName"));
        return;
        CreatePublicGroupActivity.c(this.c.b, null);
      }
      CreatePublicGroupActivity localCreatePublicGroupActivity = this.c.b;
      if (gj.c(this.b)) {}
      for (String str = this.c.b.getString(2131493920);; str = this.b)
      {
        CreatePublicGroupActivity.a(localCreatePublicGroupActivity, str);
        return;
      }
    }
    CreatePublicGroupActivity.a(this.c.b, "");
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.conversation.publicgroup.r
 * JD-Core Version:    0.7.0.1
 */