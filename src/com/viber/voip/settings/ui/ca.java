package com.viber.voip.settings.ui;

import com.viber.voip.user.YouFragment.PreferenceItem;
import java.util.ArrayList;
import java.util.List;

public class ca
{
  public static final List<YouFragment.PreferenceItem> a = new ArrayList();
  
  static
  {
    a.add(new YouFragment.PreferenceItem(2131493534, 2130838403, 2130838404, 2131494143));
    a.add(new YouFragment.PreferenceItem(2131493535, 2130838381, 2130837664, 2131494144));
    a.add(new YouFragment.PreferenceItem(2131493536, 2130838375, 2130837660, 2131494145));
    a.add(new YouFragment.PreferenceItem(2131493537, 2130837665, 2130837663, 2131494146));
    a.add(new YouFragment.PreferenceItem(2131493538, 2130838156, 2130837661, 2131494148));
    a.add(new YouFragment.PreferenceItem(2131493539, 2130838212, 2130837662, 2131494149));
    a.add(new YouFragment.PreferenceItem(2131493518, 2130837666, 2130837666, 2131494134));
  }
  
  public static YouFragment.PreferenceItem a(int paramInt)
  {
    for (int i = 0; i < a.size(); i++) {
      if (paramInt == ((YouFragment.PreferenceItem)a.get(i)).id) {
        return (YouFragment.PreferenceItem)a.get(i);
      }
    }
    return null;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.settings.ui.ca
 * JD-Core Version:    0.7.0.1
 */