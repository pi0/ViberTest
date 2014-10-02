package com.viber.voip.util;

import android.content.Context;
import android.content.Intent;
import com.viber.voip.AddFriendPreview;
import com.viber.voip.BaseAddFriendActivity.ContactDetails;

public class gv
{
  public static Intent a(Context paramContext, String paramString, boolean paramBoolean)
  {
    Intent localIntent = new Intent(paramContext, AddFriendPreview.class);
    localIntent.putExtra("phone_number", paramString);
    localIntent.putExtra("invite_not_viber", paramBoolean);
    return localIntent;
  }
  
  public static void a(Context paramContext, String paramString)
  {
    paramContext.startActivity(a(paramContext, paramString, true));
  }
  
  public static void a(Context paramContext, String paramString, BaseAddFriendActivity.ContactDetails paramContactDetails)
  {
    paramContext.startActivity(b(paramContext, paramString, paramContactDetails));
  }
  
  public static Intent b(Context paramContext, String paramString, BaseAddFriendActivity.ContactDetails paramContactDetails)
  {
    Intent localIntent = new Intent(paramContext, AddFriendPreview.class);
    localIntent.putExtra("phone_number", paramString);
    localIntent.putExtra("contact_details", paramContactDetails);
    return localIntent;
  }
  
  public static void b(Context paramContext, String paramString)
  {
    paramContext.startActivity(c(paramContext, paramString));
  }
  
  public static Intent c(Context paramContext, String paramString)
  {
    return a(paramContext, paramString, false);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.util.gv
 * JD-Core Version:    0.7.0.1
 */