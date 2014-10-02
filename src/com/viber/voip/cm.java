package com.viber.voip;

import com.viber.voip.a.a;
import com.viber.voip.a.bc;
import com.viber.voip.a.u;
import com.viber.voip.util.ft;

class cm
  implements Runnable
{
  cm(SystemDialogActivity paramSystemDialogActivity, boolean paramBoolean) {}
  
  public void run()
  {
    String str;
    if (this.a)
    {
      if (!this.a) {
        break label67;
      }
      a.z.getClass();
      str = "202";
    }
    for (;;)
    {
      bc localbc = bc.a();
      u localu = a.z;
      a.z.getClass();
      localbc.a(localu.a(str, "Ok"));
      this.b.a(SystemDialogActivity.a(this.b));
      return;
      label67:
      if (ft.d(this.b).booleanValue())
      {
        a.z.getClass();
        str = "201";
      }
      else
      {
        a.z.getClass();
        str = "203";
      }
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.cm
 * JD-Core Version:    0.7.0.1
 */