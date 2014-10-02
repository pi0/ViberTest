package com.viber.voip.user;

import com.viber.voip.rakuten.l;
import com.viber.voip.registration.dj;
import java.util.ArrayList;
import java.util.List;

public class YouFragment$PreferenceItems
{
  public static final List<YouFragment.PreferenceItem> ALL = new ArrayList();
  
  static
  {
    ALL.add(new YouFragment.PreferenceItem(2131165272, 2130838578, 2130838578, 2131494840));
    if (l.a().b()) {
      ALL.add(new YouFragment.PreferenceItem(2131165273, 2130838328, 2130838328, 2131494797));
    }
    ALL.add(new YouFragment.PreferenceItem(2131165274, 2130838519, 2130838519, 2131494309, true));
    if (!dj.d()) {
      ALL.add(new YouFragment.PreferenceItem(2131165275, 2130837949, 2130837949, 2131494617));
    }
    ALL.add(new YouFragment.PreferenceItem(2131165276, 2130838481, 2130838482, 2131493848));
    ALL.add(new YouFragment.PreferenceItem(2131165278, 2130837835, 2130837835, 2131494122));
    ALL.add(new YouFragment.PreferenceItem(2131165280, 2130838189, 2130838189, 2131493942));
  }
  
  public static YouFragment.PreferenceItem getItemById(int paramInt)
  {
    for (int i = 0; i < ALL.size(); i++) {
      if (paramInt == ((YouFragment.PreferenceItem)ALL.get(i)).id) {
        return (YouFragment.PreferenceItem)ALL.get(i);
      }
    }
    return null;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.user.YouFragment.PreferenceItems
 * JD-Core Version:    0.7.0.1
 */