package com.viber.voip.messages.ui;

import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import com.actionbarsherlock.app.ActionBar;
import com.actionbarsherlock.view.MenuItem;
import com.viber.voip.app.ViberSingleFragmentActivity;
import com.viber.voip.messages.conversation.ui.bv;

public class ConversationGalleryActivity
  extends ViberSingleFragmentActivity
{
  public static Intent a(long paramLong, String paramString)
  {
    Intent localIntent = new Intent("com.viber.voip.action.messages.ui.GALLERY_ACTION");
    localIntent.putExtra("conversation_id", paramLong);
    localIntent.putExtra("conversation_name", paramString);
    return localIntent;
  }
  
  protected Fragment b()
  {
    bv localbv = new bv();
    localbv.setArguments(getIntent().getExtras());
    return localbv;
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    getSupportActionBar().setHomeButtonEnabled(true);
    getSupportActionBar().setDisplayShowHomeEnabled(false);
    getSupportActionBar().setDisplayHomeAsUpEnabled(true);
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
 * Qualified Name:     com.viber.voip.messages.ui.ConversationGalleryActivity
 * JD-Core Version:    0.7.0.1
 */