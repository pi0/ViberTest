package com.viber.voip.messages.extras.fb;

import android.content.Context;
import android.content.Intent;
import com.viber.voip.ViberApplication;
import com.viber.voip.a.a;
import com.viber.voip.a.bc;
import com.viber.voip.a.u;

public class b
  implements af
{
  private final Context a;
  
  public b(Context paramContext)
  {
    this.a = paramContext;
  }
  
  private void a(long paramLong, int paramInt)
  {
    int i;
    switch (paramInt)
    {
    case 2: 
    default: 
      i = -1;
    }
    for (;;)
    {
      Context localContext = this.a;
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = this.a.getString(i);
      a(paramLong, localContext.getString(2131493957, arrayOfObject));
      return;
      i = 2131493954;
      continue;
      i = 2131493955;
      continue;
      i = 2131493956;
    }
  }
  
  private void a(long paramLong, String paramString)
  {
    bc localbc = bc.a();
    u localu = a.z;
    a.z.getClass();
    localbc.a(localu.b("308"));
    ViberApplication.log(3, "DbOnSharedListener", "FacebookManager.getComment: to " + paramLong);
    Intent localIntent = new Intent(this.a, FacebookDialogActivity.class);
    localIntent.setFlags(268435456);
    localIntent.setAction("fb_error");
    localIntent.putExtra("msg_id", paramLong);
    localIntent.putExtra("msg_body", paramString);
    this.a.startActivity(localIntent);
  }
  
  public void a(long paramLong, String paramString1, String paramString2, String paramString3, int paramInt) {}
  
  public void a(long paramLong, String paramString1, String paramString2, String paramString3, int paramInt, Throwable paramThrowable)
  {
    ViberApplication.log(3, "DbOnSharedListener", "DialogOnSharedListener.onError: " + paramLong + " --> " + paramThrowable.getMessage());
    if (!paramThrowable.getMessage().contains("Error validating access token")) {
      a(paramLong, paramInt);
    }
  }
  
  public void b(long paramLong, String paramString1, String paramString2, String paramString3, int paramInt) {}
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.extras.fb.b
 * JD-Core Version:    0.7.0.1
 */