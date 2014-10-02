package com.viber.voip.contacts.ui;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import com.viber.voip.contacts.b.d;
import com.viber.voip.contacts.d.a;
import com.viber.voip.contacts.d.b;
import com.viber.voip.messages.j;
import java.util.Collection;

public class ai
{
  private static int a(Integer paramInteger)
  {
    switch (paramInteger.intValue())
    {
    case 2: 
    default: 
      return 2131493640;
    case 1: 
      return 2131493639;
    case 3: 
      return 2131493641;
    case 4: 
      return 2131493642;
    case 5: 
      return 2131493643;
    case 6: 
      return 2131493644;
    case 7: 
      return 2131493645;
    case 8: 
      return 2131493646;
    case 9: 
      return 2131493647;
    case 10: 
      return 2131493648;
    case 11: 
      return 2131493649;
    case 12: 
      return 2131493650;
    case 13: 
      return 2131493651;
    case 14: 
      return 2131493652;
    case 15: 
      return 2131493653;
    case 16: 
      return 2131493654;
    case 17: 
      return 2131493655;
    case 18: 
      return 2131493656;
    case 19: 
      return 2131493657;
    }
    return 2131493658;
  }
  
  public static String a(Context paramContext, int paramInt, String paramString)
  {
    if ((paramInt == 0) && (!TextUtils.isEmpty(paramString))) {
      return paramString;
    }
    return paramContext.getString(a(Integer.valueOf(paramInt)));
  }
  
  public static String a(Context paramContext, String paramString1, String paramString2)
  {
    if ((TextUtils.isEmpty(paramString1)) || (!TextUtils.isDigitsOnly(paramString1))) {
      return a(paramContext, 2, paramString2);
    }
    return a(paramContext, Integer.valueOf(paramString1).intValue(), paramString2);
  }
  
  public static void a(Context paramContext, Collection<a> paramCollection, Runnable paramRunnable)
  {
    a locala = new a();
    locala.a = b.c;
    locala.g = 2130838293;
    locala.f = paramContext.getString(2131493631);
    locala.h = new aj(paramRunnable);
    paramCollection.add(locala);
  }
  
  public static void a(Context paramContext, Collection<a> paramCollection, String paramString1, String paramString2, d paramd, boolean paramBoolean)
  {
    a(paramContext, paramCollection, paramString1, paramString2, "", "", paramd, paramBoolean);
  }
  
  public static void a(Context paramContext, Collection<a> paramCollection, String paramString1, String paramString2, String paramString3, String paramString4, d paramd, boolean paramBoolean)
  {
    a locala1 = new a();
    locala1.a = b.a;
    locala1.e = "";
    locala1.b = paramString3;
    locala1.c = paramString4;
    Object localObject;
    a locala2;
    if (paramBoolean)
    {
      localObject = new Intent("com.viber.voip.action.CALL", Uri.fromParts("tel", paramString1, null));
      ((Intent)localObject).putExtra("viber_out", true);
      ((Intent)localObject).setFlags(268435456);
      locala1.d = ((Intent)localObject);
      locala1.f = paramString1;
      paramCollection.add(locala1);
      locala2 = new a();
      locala2.a = b.b;
      locala2.b = paramString3;
      locala2.c = paramString4;
      locala2.e = paramContext.getString(2131493630);
      if (paramd != null) {
        break label236;
      }
    }
    label236:
    for (locala2.d = j.a(paramString2, 0L, 0L, "", null);; locala2.d = j.a(paramString2, paramd.getId(), paramd.c(), paramd.a(), paramd.b()))
    {
      locala2.d.putExtra("send_1to1", true);
      locala2.f = paramString1;
      paramCollection.add(locala2);
      return;
      if (paramString2 == null) {}
      for (String str = paramString1;; str = paramString2)
      {
        Intent localIntent = new Intent("com.viber.voip.action.CALL", Uri.fromParts("tel", str, null));
        localIntent.setFlags(268435456);
        localObject = localIntent;
        break;
      }
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.contacts.ui.ai
 * JD-Core Version:    0.7.0.1
 */