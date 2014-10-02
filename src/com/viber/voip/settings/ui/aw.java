package com.viber.voip.settings.ui;

import com.viber.voip.ViberApplication;
import com.viber.voip.settings.j;
import com.viber.voip.settings.l;
import com.viber.voip.widget.PreferenceWithImage;

class aw
  implements Runnable
{
  aw(av paramav) {}
  
  public void run()
  {
    String str = ViberApplication.preferences().b(j.ar(), "");
    PreferenceWithImage localPreferenceWithImage = (PreferenceWithImage)this.a.a(j.aq());
    if (localPreferenceWithImage != null)
    {
      localPreferenceWithImage.a(str);
      localPreferenceWithImage.setSummary(str);
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.settings.ui.aw
 * JD-Core Version:    0.7.0.1
 */