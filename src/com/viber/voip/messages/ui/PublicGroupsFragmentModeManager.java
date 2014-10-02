package com.viber.voip.messages.ui;

import android.app.Activity;
import android.app.AlertDialog;
import com.viber.voip.messages.adapters.a.a;
import com.viber.voip.messages.adapters.a.b;
import com.viber.voip.util.at;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;

public class PublicGroupsFragmentModeManager
  extends MessagesFragmentModeManager
{
  public PublicGroupsFragmentModeManager(dk paramdk, dn paramdn, MessagesFragmentModeManager.MessagesFragmentModeManagerData paramMessagesFragmentModeManagerData, do paramdo)
  {
    super(paramdk, paramdn, paramMessagesFragmentModeManagerData, paramdo);
  }
  
  private void a(Activity paramActivity)
  {
    this.d = ((AlertDialog)at.a(paramActivity, 2131494549, 2131494552, new ed(this), null, false));
  }
  
  public dl a(a parama)
  {
    b localb = (b)parama;
    return new ee(parama.e(), parama.B(), parama.C(), localb.I());
  }
  
  protected void a(Activity paramActivity, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3, boolean paramBoolean4)
  {
    Iterator localIterator = a().values().iterator();
    dl localdl;
    do
    {
      if (!localIterator.hasNext()) {
        break;
      }
      localdl = (dl)localIterator.next();
    } while ((ee.a((ee)localdl) != 1) || (localdl.c));
    for (int i = 1;; i = 0)
    {
      if (i != 0)
      {
        a(paramActivity);
        return;
      }
      super.a(paramActivity, paramBoolean1, paramBoolean2, paramBoolean3, paramBoolean4);
      return;
    }
  }
  
  public MessagesFragmentModeManager.MessagesFragmentModeManagerData g()
  {
    return new PublicGroupsFragmentModeManager.PublicGroupsFragmentModeManagerData(this);
  }
  
  public void w()
  {
    a(this.b.a(a().keySet()), true);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.ui.PublicGroupsFragmentModeManager
 * JD-Core Version:    0.7.0.1
 */