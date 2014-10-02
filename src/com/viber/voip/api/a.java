package com.viber.voip.api;

import android.content.Intent;
import com.viber.voip.e.q;

class a
  extends q
{
  a(ViberApi paramViberApi) {}
  
  public void a(String paramString1, String paramString2)
  {
    Intent localIntent = new Intent("com.viber.voip.action.API_INCOMING_CALL");
    localIntent.putExtra("phone_number", paramString2);
    ViberApi.a(this.a, localIntent);
  }
  
  public void b(String paramString1, String paramString2)
  {
    Intent localIntent = new Intent("com.viber.voip.action.API_OUTGOING_CALL");
    localIntent.putExtra("phone_number", paramString2);
    ViberApi.a(this.a, localIntent);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.api.a
 * JD-Core Version:    0.7.0.1
 */