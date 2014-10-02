package com.viber.voip.contacts.ui;

import android.content.Intent;
import android.net.Uri;

 enum ag
{
  ag()
  {
    super(str, i, null);
  }
  
  Intent a(String paramString)
  {
    Intent localIntent = new Intent("android.intent.action.VIEW");
    localIntent.putExtra("address", paramString);
    localIntent.putExtra("sms_body", "");
    localIntent.setData(Uri.parse("smsto:" + paramString));
    return localIntent;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.contacts.ui.ag
 * JD-Core Version:    0.7.0.1
 */