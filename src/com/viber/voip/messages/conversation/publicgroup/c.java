package com.viber.voip.messages.conversation.publicgroup;

import android.content.res.Resources;
import com.viber.voip.util.at;
import com.viber.voip.widget.TextViewWithDescription;

class c
  implements Runnable
{
  c(CreatePublicGroupActivity paramCreatePublicGroupActivity, int paramInt, boolean paramBoolean) {}
  
  public void run()
  {
    int i = 1;
    CreatePublicGroupActivity localCreatePublicGroupActivity;
    if (this.a == 0)
    {
      this.c.a.setRightDrawable(this.c.getResources().getDrawable(2130838447));
      this.c.a.a("", i);
      this.c.a.c();
      localCreatePublicGroupActivity = this.c;
      if ((this.a != 0) || (!CreatePublicGroupActivity.b(this.c))) {
        break label362;
      }
    }
    for (;;)
    {
      CreatePublicGroupActivity.a(localCreatePublicGroupActivity, i);
      return;
      if (this.a == i)
      {
        this.c.a.setRightDrawable(this.c.getResources().getDrawable(2130838446));
        this.c.a.a(this.c.getResources().getString(2131494555), 2);
        this.c.a.c();
        break;
      }
      if (this.a == 100)
      {
        this.c.a.setRightDrawable(null);
        this.c.a.a("", i);
        break;
      }
      if (this.a == 110)
      {
        this.c.a.setRightDrawable(null);
        this.c.a.a(this.c.getResources().getString(2131494557), 2);
        break;
      }
      if ((this.a != 2) && (this.a != 101) && (this.a != 102)) {
        break;
      }
      if ((this.a == 2) && (this.b)) {
        at.a(this.c, 2131494558, 2131494559, null);
      }
      this.c.a.a(this.c.getResources().getDrawable(2130838339), this.c.getResources().getDrawable(2130838340));
      this.c.a.setRightDrawableClickListener(new d(this));
      this.c.a.a(this.c.getResources().getString(2131494556), i);
      break;
      label362:
      int j = 0;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.conversation.publicgroup.c
 * JD-Core Version:    0.7.0.1
 */