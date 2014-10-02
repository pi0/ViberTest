package com.viber.voip.contacts.ui;

import android.os.Bundle;
import com.actionbarsherlock.view.MenuItem;
import com.viber.voip.ViberApplication;
import com.viber.voip.util.gl;

public class ContactDetailsDialogActivity
  extends ContactDetailsActivity
{
  protected boolean a()
  {
    return false;
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    if (ViberApplication.isTablet()) {
      gl.a(this, true);
    }
    super.onCreate(paramBundle);
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    switch (paramMenuItem.getItemId())
    {
    default: 
      return super.onOptionsItemSelected(paramMenuItem);
    }
    finish();
    return true;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.contacts.ui.ContactDetailsDialogActivity
 * JD-Core Version:    0.7.0.1
 */