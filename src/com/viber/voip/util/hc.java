package com.viber.voip.util;

import android.content.Context;
import android.content.Intent;
import com.viber.voip.ViberApplication;
import com.viber.voip.user.YouActivity;
import com.viber.voip.user.YouDialogActivity;

public class hc
{
  public static Intent a(Context paramContext)
  {
    if (ViberApplication.isTablet()) {
      return c(paramContext);
    }
    return b(paramContext);
  }
  
  public static Intent b(Context paramContext)
  {
    return new Intent(paramContext, YouActivity.class);
  }
  
  public static Intent c(Context paramContext)
  {
    return new Intent(paramContext, YouDialogActivity.class);
  }
  
  public static void d(Context paramContext)
  {
    paramContext.startActivity(a(paramContext));
  }
  
  public static void e(Context paramContext)
  {
    paramContext.startActivity(b(paramContext));
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.util.hc
 * JD-Core Version:    0.7.0.1
 */