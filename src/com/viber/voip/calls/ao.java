package com.viber.voip.calls;

import android.content.Context;
import android.content.res.Resources;
import com.viber.provider.contacts.d;
import com.viber.voip.ViberApplication;
import com.viber.voip.contacts.c.e.b;
import com.viber.voip.settings.l;
import com.viber.voip.util.fe;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

public class ao
{
  private static final String[] a = { "_id", "display_name" };
  private Context b;
  private Map<Character, Character> c = new HashMap();
  private fe d;
  
  public ao(Context paramContext)
  {
    this.b = paramContext;
    this.d = b.a(paramContext);
    b();
  }
  
  private void a(char paramChar, int paramInt)
  {
    if (paramInt != 0) {}
    for (String str = this.b.getResources().getString(paramInt); str != null; str = null) {
      for (char c1 : str.toLowerCase().toCharArray()) {
        this.c.put(Character.valueOf(c1), Character.valueOf(paramChar));
      }
    }
    this.c.put(Character.valueOf(paramChar), Character.valueOf(paramChar));
  }
  
  private void b()
  {
    try
    {
      this.c.clear();
      a('0', 2131494805);
      a('1', 2131494806);
      a('2', 2131494807);
      a('3', 2131494808);
      a('4', 2131494809);
      a('5', 2131494810);
      a('6', 2131494811);
      a('7', 2131494812);
      a('8', 2131494813);
      a('9', 2131494814);
      this.c.put(Character.valueOf(' '), Character.valueOf('0'));
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  private void c()
  {
    this.d.a(1584, null, d.a, a, null, null, null, new ap(this), false, false);
  }
  
  public String a(String paramString)
  {
    if (paramString != null) {}
    for (;;)
    {
      StringBuilder localStringBuilder;
      int j;
      try
      {
        char[] arrayOfChar = paramString.toCharArray();
        localStringBuilder = new StringBuilder();
        int i = arrayOfChar.length;
        j = 0;
        if (j < i)
        {
          char c1 = arrayOfChar[j];
          Character localCharacter = (Character)this.c.get(Character.valueOf(c1));
          if (localCharacter != null) {
            localStringBuilder.append(localCharacter);
          } else {
            localStringBuilder.append('1');
          }
        }
      }
      finally {}
      String str2 = localStringBuilder.toString();
      for (String str1 = str2;; str1 = "?") {
        return str1;
      }
      j++;
    }
  }
  
  public void a()
  {
    String str1 = ViberApplication.preferences().b("recent_calls_current_language", "");
    String str2 = Locale.getDefault().getDisplayLanguage();
    if (!str1.equals(str2))
    {
      ViberApplication.preferences().a("recent_calls_current_language", str2);
      b();
      c();
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.calls.ao
 * JD-Core Version:    0.7.0.1
 */