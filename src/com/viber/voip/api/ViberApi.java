package com.viber.voip.api;

import android.content.Context;
import android.content.Intent;
import com.viber.jni.CMissedCall;
import com.viber.jni.LocationInfo;
import com.viber.jni.PhoneControllerDelegateAdapter;
import com.viber.voip.ViberApplication;
import com.viber.voip.e.q;
import com.viber.voip.messages.controller.c.e;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class ViberApi
  extends PhoneControllerDelegateAdapter
{
  private static ViberApi a;
  private Context b = ViberApplication.getInstance();
  private q c = new a(this);
  
  public static ViberApi a()
  {
    if (a == null) {
      a = new ViberApi();
    }
    return a;
  }
  
  private void a(Intent paramIntent) {}
  
  private void a(String paramString, int paramInt)
  {
    Intent localIntent = new Intent("com.viber.voip.action.API_MISSED_CALL");
    localIntent.putExtra("phone_number", paramString);
    if (paramInt > 1) {
      localIntent.putExtra("count", paramInt);
    }
    a(localIntent);
  }
  
  public void b() {}
  
  public void onCallMissed(long paramLong, String paramString1, int paramInt1, int paramInt2, String paramString2)
  {
    a(paramString1, paramInt1);
  }
  
  public boolean onGetMissedCalls(CMissedCall[] paramArrayOfCMissedCall)
  {
    HashMap localHashMap = new HashMap();
    int i = 0;
    if (i < paramArrayOfCMissedCall.length)
    {
      String str = paramArrayOfCMissedCall[i].getPhoneNumber();
      Integer localInteger = (Integer)localHashMap.get(str);
      if (localInteger == null) {}
      for (int j = 1;; j = 1 + localInteger.intValue())
      {
        localHashMap.put(str, Integer.valueOf(j));
        i++;
        break;
      }
    }
    Iterator localIterator = localHashMap.entrySet().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      a((String)localEntry.getKey(), ((Integer)localEntry.getValue()).intValue());
    }
    return false;
  }
  
  public boolean onMediaReceived(long paramLong1, String paramString1, byte[] paramArrayOfByte, long paramLong2, int paramInt1, int paramInt2, LocationInfo paramLocationInfo, int paramInt3, String paramString2, String paramString3, String paramString4, String paramString5)
  {
    boolean bool;
    if (paramInt3 == 1)
    {
      bool = true;
      if (paramInt3 != 3) {
        break label60;
      }
    }
    label60:
    for (int i = 1;; i = 0)
    {
      if ((bool) || (i != 0))
      {
        b localb = new b(this, paramLong1, bool, paramString1, paramString5);
        e.a().a(localb);
      }
      return true;
      bool = false;
      break;
    }
  }
  
  public boolean onTextReceived(long paramLong1, String paramString1, String paramString2, long paramLong2, int paramInt1, int paramInt2, LocationInfo paramLocationInfo, String paramString3)
  {
    Intent localIntent = new Intent("com.viber.voip.action.API_TEXT_RECEIVED");
    localIntent.putExtra("phone_number", paramString1);
    localIntent.putExtra("text", paramString2);
    a(localIntent);
    return true;
  }
  
  public boolean onVideoReceived(long paramLong1, String paramString1, byte[] paramArrayOfByte, long paramLong2, int paramInt1, int paramInt2, LocationInfo paramLocationInfo, int paramInt3, String paramString2, String paramString3, String paramString4, String paramString5)
  {
    return onMediaReceived(paramLong1, paramString1, paramArrayOfByte, paramLong2, paramInt1, paramInt2, paramLocationInfo, 3, paramString2, paramString3, paramString5, paramString4);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.api.ViberApi
 * JD-Core Version:    0.7.0.1
 */