package com.viber.voip.contacts.ui;

import android.content.Intent;
import android.net.Uri;

 enum af
{
  af()
  {
    super(str, i, null);
  }
  
  Intent a(String paramString)
  {
    Intent localIntent = new Intent("android.intent.action.CALL", Uri.fromParts("tel", paramString, null));
    localIntent.setFlags(268435456);
    return localIntent;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.contacts.ui.af
 * JD-Core Version:    0.7.0.1
 */