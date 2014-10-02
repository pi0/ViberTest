package com.viber.voip.api;

import android.content.Intent;
import android.net.Uri;
import com.viber.voip.ViberApplication;
import com.viber.voip.registration.ActivationController;
import java.util.Iterator;

class c
  implements y
{
  c(ViberUrlHandlerActivity paramViberUrlHandlerActivity, Iterator paramIterator, String[] paramArrayOfString, Uri paramUri) {}
  
  public void a(int paramInt, Intent paramIntent)
  {
    if (paramInt == 0)
    {
      if (ViberApplication.isActivated()) {
        if (paramIntent != null) {
          this.d.startActivity(paramIntent);
        }
      }
      for (;;)
      {
        this.d.finish();
        return;
        if (4 == ViberUrlHandlerActivity.a().getStep()) {
          ViberUrlHandlerActivity.a().setStep(0, false);
        }
        ViberUrlHandlerActivity.a().resumeActivation();
      }
    }
    if (3 == paramInt)
    {
      if (paramIntent != null) {
        this.d.startActivity(paramIntent);
      }
      this.d.finish();
      return;
    }
    if (2 == paramInt)
    {
      if (ViberApplication.isActivated())
      {
        ViberUrlHandlerActivity.a(this.d);
        return;
      }
      ViberUrlHandlerActivity.a().resumeActivation();
      this.d.finish();
      return;
    }
    if (this.a.hasNext())
    {
      ((aa)this.a.next()).a(this.d, this.b, this, this.c);
      return;
    }
    ViberUrlHandlerActivity.b(this.d);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.api.c
 * JD-Core Version:    0.7.0.1
 */