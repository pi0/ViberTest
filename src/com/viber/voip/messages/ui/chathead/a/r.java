package com.viber.voip.messages.ui.chathead.a;

import android.content.Context;
import android.content.Intent;
import com.actionbarsherlock.internal.view.menu.MenuBuilder;
import com.actionbarsherlock.internal.view.menu.MenuBuilder.Callback;
import com.actionbarsherlock.view.MenuItem;

class r
  implements MenuBuilder.Callback
{
  r(l paraml) {}
  
  public boolean onMenuItemSelected(MenuBuilder paramMenuBuilder, MenuItem paramMenuItem)
  {
    switch (paramMenuItem.getItemId())
    {
    default: 
      return false;
    case 2131165300: 
      this.a.c();
      l.a(this.a).d(true);
      return true;
    }
    this.a.c();
    Intent localIntent = new Intent("com.viber.voip.action.SETTINGS");
    localIntent.putExtra("selected_item", 2131493535);
    localIntent.setFlags(268435456);
    l.f(this.a).startActivity(localIntent);
    return true;
  }
  
  public void onMenuModeChange(MenuBuilder paramMenuBuilder) {}
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.ui.chathead.a.r
 * JD-Core Version:    0.7.0.1
 */