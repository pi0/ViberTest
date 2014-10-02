package com.viber.voip.util;

import com.viber.voip.ViberApplication;
import com.viber.voip.settings.l;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map.Entry;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class bb
{
  private static SimpleDateFormat a = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.US);
  private static final String k = bb.class.getSimpleName();
  private long b;
  private long c;
  private long d;
  private long e;
  private boolean f;
  private Calendar g = Calendar.getInstance();
  private long h = b(System.currentTimeMillis());
  private long i = this.h + this.e;
  private HashMap<String, bc> j;
  
  public bb()
  {
    d("ctor cur day: " + a(this.h) + ", next day:" + a(this.i));
    a(ViberApplication.preferences().b("DOWNLOAD_VALVE_DEBUG_ENABLED", false));
    a();
  }
  
  private String a(long paramLong)
  {
    return a.format(new Date(paramLong));
  }
  
  private void a()
  {
    d("load");
    this.j = new HashMap();
    try
    {
      String str1 = ViberApplication.preferences().b("DOWNLOAD_VALVE_DATA", "");
      if (str1.length() > 0)
      {
        JSONArray localJSONArray = new JSONArray(str1);
        for (int m = 0; m < localJSONArray.length(); m++)
        {
          JSONObject localJSONObject = localJSONArray.getJSONObject(m);
          String str2 = localJSONObject.getString("url");
          bc localbc = new bc(this, str2);
          localbc.c = localJSONObject.getInt("count");
          if (localJSONObject.has("global_count")) {
            localbc.d = localJSONObject.getInt("global_count");
          }
          localbc.b = localJSONObject.getLong("time");
          this.j.put(str2, localbc);
        }
      }
      return;
    }
    catch (JSONException localJSONException)
    {
      localJSONException.printStackTrace();
      c();
    }
  }
  
  private long b(long paramLong)
  {
    this.g.setTimeInMillis(paramLong);
    if (!this.f)
    {
      this.g.set(11, 0);
      this.g.set(12, 0);
    }
    for (;;)
    {
      this.g.set(13, 0);
      this.g.set(14, 0);
      return this.g.getTimeInMillis();
      this.g.set(12, 3 * (this.g.get(12) / 3));
    }
  }
  
  private void b()
  {
    d("save");
    c();
    try
    {
      JSONArray localJSONArray = new JSONArray();
      Iterator localIterator = this.j.entrySet().iterator();
      while (localIterator.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)localIterator.next();
        JSONObject localJSONObject = new JSONObject();
        String str2 = (String)localEntry.getKey();
        bc localbc = (bc)localEntry.getValue();
        localJSONObject.put("url", str2);
        localJSONObject.put("count", localbc.c);
        localJSONObject.put("global_count", localbc.d);
        localJSONObject.put("time", localbc.b);
        localJSONArray.put(localJSONObject);
      }
      str1 = localJSONArray.toString();
    }
    catch (JSONException localJSONException)
    {
      localJSONException.printStackTrace();
      return;
    }
    String str1;
    ViberApplication.preferences().a("DOWNLOAD_VALVE_DATA", str1);
  }
  
  private void c()
  {
    d("ITEMS BEGIN");
    Iterator localIterator = this.j.entrySet().iterator();
    while (localIterator.hasNext()) {
      d(((bc)((Map.Entry)localIterator.next()).getValue()).toString());
    }
    d("ITEMS END");
  }
  
  protected static void d(String paramString) {}
  
  private long e(String paramString)
  {
    try
    {
      bc localbc = (bc)this.j.get(paramString);
      if (localbc == null)
      {
        localbc = new bc(this, paramString);
        this.j.put(paramString, localbc);
      }
      localbc.b();
      long l = localbc.d;
      d("reportError: " + localbc);
      b();
      return l;
    }
    finally {}
  }
  
  public void a(String paramString)
  {
    long l = e(paramString);
    com.viber.voip.a.bc.a().a("General", "corrupted_pack_" + paramString, "Content", Long.valueOf(l));
  }
  
  public void a(String paramString, int paramInt)
  {
    d("reportDownloadStatus " + paramInt + ", url:" + paramString);
    if (((paramInt > 0) && (paramInt < 200)) || (paramInt >= 300)) {
      e(paramString);
    }
  }
  
  public void a(boolean paramBoolean)
  {
    ViberApplication.preferences().a("DOWNLOAD_VALVE_DEBUG_ENABLED", paramBoolean);
    this.f = paramBoolean;
    if (!paramBoolean)
    {
      this.b = 1800000L;
      this.c = 3600000L;
      this.d = 7200000L;
    }
    for (this.e = 86400000L;; this.e = 180000L)
    {
      d("debug: " + this.f);
      d("minTimeAfterAttempt1: " + this.b);
      d("minTimeAfterAttempt2: " + this.c);
      d("minTimeAfterAttempt3: " + this.d);
      d("millisInDay: " + this.e);
      return;
      this.b = 30000L;
      this.c = 60000L;
      this.d = 120000L;
    }
  }
  
  /* Error */
  public boolean b(String paramString)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 133	com/viber/voip/util/bb:j	Ljava/util/HashMap;
    //   6: aload_1
    //   7: invokevirtual 278	java/util/HashMap:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   10: checkcast 165	com/viber/voip/util/bc
    //   13: astore_3
    //   14: aload_3
    //   15: ifnull +52 -> 67
    //   18: aload_3
    //   19: invokevirtual 353	com/viber/voip/util/bc:d	()Z
    //   22: istore 4
    //   24: new 75	java/lang/StringBuilder
    //   27: dup
    //   28: invokespecial 76	java/lang/StringBuilder:<init>	()V
    //   31: ldc_w 355
    //   34: invokevirtual 82	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   37: aload_3
    //   38: invokevirtual 285	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   41: ldc_w 357
    //   44: invokevirtual 82	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   47: iload 4
    //   49: invokevirtual 332	java/lang/StringBuilder:append	(Z)Ljava/lang/StringBuilder;
    //   52: invokevirtual 90	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   55: invokestatic 93	com/viber/voip/util/bb:d	(Ljava/lang/String;)V
    //   58: iload 4
    //   60: istore 5
    //   62: aload_0
    //   63: monitorexit
    //   64: iload 5
    //   66: ireturn
    //   67: new 75	java/lang/StringBuilder
    //   70: dup
    //   71: invokespecial 76	java/lang/StringBuilder:<init>	()V
    //   74: ldc_w 355
    //   77: invokevirtual 82	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   80: aload_1
    //   81: invokevirtual 82	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   84: ldc_w 359
    //   87: invokevirtual 82	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   90: invokevirtual 90	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   93: invokestatic 93	com/viber/voip/util/bb:d	(Ljava/lang/String;)V
    //   96: iconst_1
    //   97: istore 5
    //   99: goto -37 -> 62
    //   102: astore_2
    //   103: aload_0
    //   104: monitorexit
    //   105: aload_2
    //   106: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	107	0	this	bb
    //   0	107	1	paramString	String
    //   102	4	2	localObject	Object
    //   13	25	3	localbc	bc
    //   22	37	4	bool1	boolean
    //   60	38	5	bool2	boolean
    // Exception table:
    //   from	to	target	type
    //   2	14	102	finally
    //   18	58	102	finally
    //   67	96	102	finally
  }
  
  /* Error */
  public void c(String paramString)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 133	com/viber/voip/util/bb:j	Ljava/util/HashMap;
    //   6: aload_1
    //   7: invokevirtual 278	java/util/HashMap:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   10: checkcast 165	com/viber/voip/util/bc
    //   13: astore_3
    //   14: aload_3
    //   15: ifnull +42 -> 57
    //   18: new 75	java/lang/StringBuilder
    //   21: dup
    //   22: invokespecial 76	java/lang/StringBuilder:<init>	()V
    //   25: ldc_w 361
    //   28: invokevirtual 82	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   31: aload_3
    //   32: invokevirtual 285	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   35: invokevirtual 90	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   38: invokestatic 93	com/viber/voip/util/bb:d	(Ljava/lang/String;)V
    //   41: aload_0
    //   42: getfield 133	com/viber/voip/util/bb:j	Ljava/util/HashMap;
    //   45: aload_1
    //   46: invokevirtual 364	java/util/HashMap:remove	(Ljava/lang/Object;)Ljava/lang/Object;
    //   49: pop
    //   50: aload_0
    //   51: invokespecial 286	com/viber/voip/util/bb:b	()V
    //   54: aload_0
    //   55: monitorexit
    //   56: return
    //   57: new 75	java/lang/StringBuilder
    //   60: dup
    //   61: invokespecial 76	java/lang/StringBuilder:<init>	()V
    //   64: ldc_w 361
    //   67: invokevirtual 82	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   70: aload_1
    //   71: invokevirtual 82	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   74: invokevirtual 90	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   77: invokestatic 93	com/viber/voip/util/bb:d	(Ljava/lang/String;)V
    //   80: goto -26 -> 54
    //   83: astore_2
    //   84: aload_0
    //   85: monitorexit
    //   86: aload_2
    //   87: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	88	0	this	bb
    //   0	88	1	paramString	String
    //   83	4	2	localObject	Object
    //   13	19	3	localbc	bc
    // Exception table:
    //   from	to	target	type
    //   2	14	83	finally
    //   18	54	83	finally
    //   57	80	83	finally
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.util.bb
 * JD-Core Version:    0.7.0.1
 */