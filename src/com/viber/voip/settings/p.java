package com.viber.voip.settings;

import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import com.viber.voip.util.bj;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.concurrent.locks.ReentrantLock;

public class p
{
  private static final ReentrantLock a = new ReentrantLock();
  
  public static void a(Context paramContext, l paraml)
  {
    if (!paraml.b("preferences_migration_performed", false))
    {
      b(paramContext, paraml);
      paraml.a("preferences_migration_performed", true);
    }
  }
  
  private static void a(Context paramContext, l paraml, Map<String, Object> paramMap)
  {
    Map localMap = PreferenceManager.getDefaultSharedPreferences(paramContext).getAll();
    a locala = (a)paraml;
    Iterator localIterator = localMap.entrySet().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      locala.a((String)localEntry.getKey(), localEntry.getValue());
    }
    a(paramContext, "info.dat", paraml, paramMap);
  }
  
  private static void a(Context paramContext, String paramString, l paraml, Map<String, Object> paramMap)
  {
    bj.a(bj.b(paramContext, paramString), paramMap, a);
    a(paraml, paramMap, paramContext.getSharedPreferences(paramString, 0).getAll());
  }
  
  private static void a(l paraml, Map<String, Object> paramMap, Map<String, ?> paramMap1)
  {
    a locala = (a)paraml;
    Iterator localIterator1 = paramMap1.entrySet().iterator();
    while (localIterator1.hasNext())
    {
      Map.Entry localEntry2 = (Map.Entry)localIterator1.next();
      locala.a((String)localEntry2.getKey(), localEntry2.getValue());
    }
    Iterator localIterator2 = paramMap.entrySet().iterator();
    while (localIterator2.hasNext())
    {
      Map.Entry localEntry1 = (Map.Entry)localIterator2.next();
      locala.a((String)localEntry1.getKey(), localEntry1.getValue());
    }
  }
  
  private static void b(Context paramContext, l paraml)
  {
    Map localMap = Collections.synchronizedMap(new HashMap());
    a(paramContext, paraml, localMap);
    a(paramContext, "device.dat", paraml, localMap);
    a(paramContext, "com.viber.voip.registration.ActivationController", paraml, localMap);
    a(paramContext, "viber_SoundService", paraml, localMap);
    a(paramContext, "com.viber.voip.ViberApplication", paraml, localMap);
    a(paramContext, "Notifier", paraml, localMap);
    a(paramContext, "MessagesCount", paraml, localMap);
    a(paramContext, "BadgesCount", paraml, localMap);
    a(paramContext, "com.viber.service.VoipConnectorService", paraml, localMap);
    a(paramContext, "com.viber.voip.contacts.ui.ContactDetailsActivity", paraml, localMap);
    a(paramContext, "com.viber.voip.IdleActivity", paraml, localMap);
    a(paramContext, "viber_uploader", paraml, localMap);
    a(paramContext, "statistics", paraml, localMap);
    a(paramContext, "dbg_conn_test", paraml, localMap);
    a(paramContext, "android.preference.PreferenceScreen", paraml, localMap);
    a(paramContext, "com.viber.voip.registration.ActivationFragment", paraml, localMap);
    a(paramContext, "messages", paraml, localMap);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.settings.p
 * JD-Core Version:    0.7.0.1
 */