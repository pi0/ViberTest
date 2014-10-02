package com.viber.voip.util;

import android.content.Context;
import com.viber.voip.ViberApplication;
import com.viber.voip.settings.l;
import java.util.ArrayList;

public class hk
{
  private static final String a = hk.class.getSimpleName();
  private static hk b;
  private static ArrayList<hl> c = new ArrayList();
  
  static
  {
    b = new hk();
    b();
  }
  
  public static hk a()
  {
    try
    {
      hk localhk = b;
      return localhk;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  private static hl a(String paramString)
  {
    hl localhl = new hl(paramString, 250);
    c.add(localhl);
    return localhl;
  }
  
  private static void b()
  {
    int i = ViberApplication.preferences().b("user_dictionary_version", 0);
    ViberApplication.log("ViberDictionaryController savedVersion " + i);
    if (i < 1)
    {
      a("Viber");
      ViberApplication.preferences().a("user_dictionary_version", 1);
    }
  }
  
  public void a(Context paramContext) {}
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.util.hk
 * JD-Core Version:    0.7.0.1
 */