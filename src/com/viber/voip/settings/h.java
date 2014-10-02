package com.viber.voip.settings;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import com.viber.voip.process.k;
import java.util.HashSet;

public class h
{
  ContentResolver a;
  
  private h(Context paramContext)
  {
    PreferencesContentProvider.b(paramContext);
    this.a = paramContext.getContentResolver();
  }
  
  private String a(String paramString1, String paramString2, String paramString3)
  {
    if (b(paramString1))
    {
      PreferencesContentProvider.a("getValueAsString, proc: " + k.a() + ", key: " + paramString1 + ", defValue:" + paramString2 + ", type:" + paramString3);
      Cursor localCursor = this.a.query(PreferencesContentProvider.a(), null, null, new String[] { paramString1, paramString2, paramString3 }, null);
      if ((localCursor != null) && (localCursor.moveToFirst()))
      {
        paramString2 = localCursor.getString(0);
        localCursor.close();
      }
      return paramString2;
    }
    return null;
  }
  
  private void b(String paramString1, String paramString2, String paramString3)
  {
    if (b(paramString1))
    {
      PreferencesContentProvider.a("setValueAsString, proc: " + k.a() + ", key: " + paramString1 + ", value:" + paramString2 + ", type:" + paramString3);
      this.a.update(PreferencesContentProvider.a(), new ContentValues(), null, new String[] { paramString1, paramString2, paramString3 });
    }
  }
  
  private boolean b(String paramString)
  {
    if (PreferencesContentProvider.b().contains(paramString)) {
      return true;
    }
    throw new IllegalArgumentException("ILLEGAL REMOTE PREF KEY!!! " + paramString + ", process:" + k.a());
  }
  
  public float a(String paramString, float paramFloat)
  {
    return Float.parseFloat(a(paramString, Float.toString(paramFloat), "F"));
  }
  
  public int a(String paramString, int paramInt)
  {
    return Integer.parseInt(a(paramString, Integer.toString(paramInt), "I"));
  }
  
  public long a(String paramString, long paramLong)
  {
    return Long.parseLong(a(paramString, Long.toString(paramLong), "L"));
  }
  
  public String a(String paramString1, String paramString2)
  {
    return a(paramString1, paramString2, "S");
  }
  
  public boolean a(String paramString)
  {
    if (b(paramString))
    {
      PreferencesContentProvider.a("contains, proc: " + k.a() + ", key: " + paramString);
      Cursor localCursor = this.a.query(PreferencesContentProvider.a(), null, paramString, null, null);
      if ((localCursor != null) && (localCursor.moveToFirst()))
      {
        String str = localCursor.getString(0);
        localCursor.close();
        return str.charAt(0) == 'T';
      }
    }
    return false;
  }
  
  public boolean a(String paramString, boolean paramBoolean)
  {
    if (paramBoolean) {}
    for (String str = "T"; a(paramString, str, "B").charAt(0) == 'T'; str = "F") {
      return true;
    }
    return false;
  }
  
  public void b(String paramString, float paramFloat)
  {
    b(paramString, Float.toString(paramFloat), "F");
  }
  
  public void b(String paramString, int paramInt)
  {
    b(paramString, Integer.toString(paramInt), "I");
  }
  
  public void b(String paramString, long paramLong)
  {
    b(paramString, Long.toString(paramLong), "L");
  }
  
  public void b(String paramString1, String paramString2)
  {
    b(paramString1, paramString2, "S");
  }
  
  public void b(String paramString, boolean paramBoolean)
  {
    if (paramBoolean) {}
    for (String str = "T";; str = "F")
    {
      b(paramString, str, "B");
      return;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.settings.h
 * JD-Core Version:    0.7.0.1
 */