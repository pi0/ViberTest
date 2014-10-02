package com.viber.voip;

import android.content.Intent;
import android.os.Bundle;
import com.viber.voip.app.ViberActivity;

public class PreConversationActivity
  extends ViberActivity
{
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
  }
  
  protected void onStart()
  {
    super.onStart();
    Intent localIntent1 = getIntent();
    Intent localIntent2 = new Intent("com.viber.voip.action.CONVERSATION");
    localIntent2.putExtras(localIntent1.getExtras());
    localIntent2.setFlags(localIntent1.getFlags());
    startActivity(localIntent2);
    finish();
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.PreConversationActivity
 * JD-Core Version:    0.7.0.1
 */