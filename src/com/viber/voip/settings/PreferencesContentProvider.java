package com.viber.voip.settings;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import com.viber.voip.ViberApplication;
import com.viber.voip.process.k;
import java.io.PrintStream;
import java.util.Arrays;
import java.util.HashSet;

public class PreferencesContentProvider
  extends ContentProvider
{
  private static final String b = PreferencesContentProvider.class.getSimpleName();
  private static int c = 0;
  private static int d = 1;
  private static int e = 2;
  private static final Uri f = Uri.parse("content://com.viber.provider.prefs");
  private static HashSet<String> g;
  l a;
  
  public static h a(Context paramContext)
  {
    return new h(paramContext, null);
  }
  
  private static final void b(String paramString)
  {
    System.err.println(b + " " + paramString);
  }
  
  private static void c(Context paramContext)
  {
    try
    {
      if (g == null)
      {
        j.a(paramContext.getApplicationContext());
        g = new HashSet();
        g.addAll(Arrays.asList(c()));
      }
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  private static String[] c()
  {
    String[] arrayOfString = new String[27];
    arrayOfString[0] = j.B();
    arrayOfString[1] = j.S();
    arrayOfString[2] = j.T();
    arrayOfString[3] = j.U();
    arrayOfString[4] = j.V();
    arrayOfString[5] = j.W();
    arrayOfString[6] = j.G();
    arrayOfString[7] = j.L();
    arrayOfString[8] = j.ag();
    arrayOfString[9] = j.J();
    arrayOfString[10] = "ANIMATED_MESSAGES_ENABLED";
    arrayOfString[11] = "reg_viber_country_code_string";
    arrayOfString[12] = "reg_viber_country_code_string_version";
    arrayOfString[13] = "reg_viber_phone_num_canonized";
    arrayOfString[14] = "is_activated";
    arrayOfString[15] = "gallery_coach_show";
    arrayOfString[16] = "PREF_MARKET_ENABLE_URL_CHANGE";
    arrayOfString[17] = "PREF_MARKET_PRODUCTS_SYNCED";
    arrayOfString[18] = "PREF_MARKET_VISIT_COUNT";
    arrayOfString[19] = "PREF_VIBER_OUT_PRODUCT_IDS";
    arrayOfString[20] = "use_as_secondary";
    arrayOfString[21] = "check_data_roaming";
    arrayOfString[22] = "all_sticker_pack_count";
    arrayOfString[23] = "update_pack_count_time";
    arrayOfString[24] = "watched_sticker_pack_count";
    arrayOfString[25] = "show_facebook_like_dialog";
    arrayOfString[26] = "call_min_time_count";
    return arrayOfString;
  }
  
  public int delete(Uri paramUri, String paramString, String[] paramArrayOfString)
  {
    throw new UnsupportedOperationException("unsupported");
  }
  
  public String getType(Uri paramUri)
  {
    return null;
  }
  
  public Uri insert(Uri paramUri, ContentValues paramContentValues)
  {
    throw new UnsupportedOperationException("unsupported");
  }
  
  public boolean onCreate()
  {
    k.a(getContext());
    this.a = ViberApplication.preferences(getContext());
    return true;
  }
  
  public Cursor query(Uri paramUri, String[] paramArrayOfString1, String paramString1, String[] paramArrayOfString2, String paramString2)
  {
    if (paramString1 != null)
    {
      if (this.a.b(paramString1)) {}
      for (String str5 = "T";; str5 = "F") {
        return new i(str5);
      }
    }
    String str1 = paramArrayOfString2[c];
    String str2 = paramArrayOfString2[d];
    String str3 = paramArrayOfString2[e];
    switch (str3.charAt(0))
    {
    default: 
      throw new IllegalArgumentException("illegal type: " + str3);
    case 'S': 
      return new i(this.a.b(str1, str2));
    case 'B': 
      l locall = this.a;
      int i = str2.charAt(0);
      boolean bool = false;
      if (i == 84) {
        bool = true;
      }
      if (locall.b(str1, bool)) {}
      for (String str4 = "T";; str4 = "F") {
        return new i(str4);
      }
    case 'F': 
      return new i(Float.toString(this.a.b(str1, Float.parseFloat(str2))));
    case 'I': 
      return new i(Integer.toString(this.a.b(str1, Integer.parseInt(str2))));
    }
    return new i(Long.toString(this.a.b(str1, Long.parseLong(str2))));
  }
  
  public int update(Uri paramUri, ContentValues paramContentValues, String paramString, String[] paramArrayOfString)
  {
    String str1 = paramArrayOfString[c];
    String str2 = paramArrayOfString[d];
    String str3 = paramArrayOfString[e];
    switch (str3.charAt(0))
    {
    default: 
      throw new IllegalArgumentException("illegal type: " + str3);
    case 'S': 
      this.a.a(str1, str2);
      return 1;
    case 'B': 
      l locall = this.a;
      int i = str2.charAt(0);
      boolean bool = false;
      if (i == 84) {
        bool = true;
      }
      locall.a(str1, bool);
      return 1;
    case 'F': 
      this.a.a(str1, Float.parseFloat(str2));
      return 1;
    case 'I': 
      this.a.a(str1, Integer.parseInt(str2));
      return 1;
    }
    this.a.a(str1, Long.parseLong(str2));
    return 1;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.settings.PreferencesContentProvider
 * JD-Core Version:    0.7.0.1
 */