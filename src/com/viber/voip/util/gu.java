package com.viber.voip.util;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import com.viber.voip.AddFriendActivity;

public class gu
{
  public static void a(Activity paramActivity, int paramInt, String paramString)
  {
    Intent localIntent = new Intent(paramActivity, AddFriendActivity.class);
    localIntent.putExtra("phone_number", paramString);
    paramActivity.startActivityForResult(localIntent, paramInt);
  }
  
  public static void a(Context paramContext)
  {
    a(paramContext, null);
  }
  
  public static void a(Context paramContext, String paramString)
  {
    Intent localIntent = new Intent(paramContext, AddFriendActivity.class);
    localIntent.putExtra("phone_number", paramString);
    paramContext.startActivity(localIntent);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.util.gu
 * JD-Core Version:    0.7.0.1
 */