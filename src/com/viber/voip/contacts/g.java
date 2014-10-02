package com.viber.voip.contacts;

import android.content.Context;
import android.os.Handler;
import android.support.v4.app.LoaderManager;
import android.text.TextUtils;
import com.viber.provider.e;
import com.viber.voip.util.a.a;
import com.viber.voip.util.a.c;
import com.viber.voip.util.a.f;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class g
  extends b
{
  private static Pattern m = Pattern.compile("([^\\s(\\u0020-\\u002f)(\\u003a-\\u003f)(\\u005b-\\u005e)(\\u007b-\\u007e)]+)", 2);
  private String n = "";
  
  protected g(int paramInt1, Context paramContext, LoaderManager paramLoaderManager, com.viber.voip.contacts.c.d.b paramb, e parame, int paramInt2)
  {
    super(paramInt1, paramContext, paramLoaderManager, paramb, parame, paramInt2);
  }
  
  public g(Context paramContext, LoaderManager paramLoaderManager, com.viber.voip.contacts.c.d.b paramb, e parame)
  {
    super(paramContext, paramLoaderManager, paramb, parame, -1);
  }
  
  private String a(String paramString1, String paramString2, String paramString3)
  {
    StringBuilder localStringBuilder = new StringBuilder().append(paramString1).append(" LIKE '").append(e(paramString2)).append("'");
    if (TextUtils.isEmpty(paramString3)) {}
    for (String str = "";; str = " " + paramString3 + " ") {
      return str;
    }
  }
  
  private void a(HashMap<String, StringBuilder> paramHashMap, String paramString1, String paramString2, boolean paramBoolean)
  {
    StringBuilder localStringBuilder1 = (StringBuilder)paramHashMap.get(paramString1);
    StringBuilder localStringBuilder2;
    if (localStringBuilder1 == null)
    {
      localStringBuilder2 = new StringBuilder();
      paramHashMap.put(paramString1, localStringBuilder2);
    }
    for (StringBuilder localStringBuilder3 = localStringBuilder2;; localStringBuilder3 = localStringBuilder1)
    {
      if (paramBoolean) {}
      for (String str = "";; str = "AND")
      {
        localStringBuilder3.append(a(paramString1, paramString2, str));
        return;
      }
    }
  }
  
  private String[] f(String paramString)
  {
    Matcher localMatcher = m.matcher(paramString);
    ArrayList localArrayList = new ArrayList();
    do
    {
      if (!localMatcher.find()) {
        break;
      }
      localArrayList.add(localMatcher.group(0));
    } while (localArrayList.size() < 5);
    return (String[])localArrayList.toArray(new String[localArrayList.size()]);
  }
  
  protected void a(String paramString1, String paramString2, boolean paramBoolean)
  {
    String str1;
    String str2;
    String str3;
    label52:
    HashMap localHashMap;
    int i;
    label77:
    String str4;
    boolean bool2;
    label105:
    c localc;
    String str5;
    if (TextUtils.isEmpty(paramString1))
    {
      str1 = "";
      this.j = str1;
      this.k = paramString2;
      str2 = e(this.j);
      if (TextUtils.isEmpty(this.k)) {
        break label168;
      }
      str3 = e(this.k);
      String[] arrayOfString1 = f(paramString1);
      if (arrayOfString1.length <= 0) {
        break label335;
      }
      localHashMap = new HashMap();
      i = 0;
      if (i >= arrayOfString1.length) {
        break label234;
      }
      str4 = arrayOfString1[i];
      if (i != -1 + arrayOfString1.length) {
        break label175;
      }
      bool2 = true;
      localc = a.a(str4);
      if (!localc.c) {
        break label181;
      }
      str5 = str4;
    }
    for (;;)
    {
      if (f.g(str4)) {
        a(localHashMap, "phonebookcontact.display_name", str4, bool2);
      }
      a(localHashMap, "phonebookcontact.low_display_name", str5, bool2);
      i++;
      break label77;
      str1 = paramString1;
      break;
      label168:
      str3 = str2;
      break label52;
      label175:
      bool2 = false;
      break label105;
      label181:
      str5 = localc.a;
      String str6 = localc.b;
      a(localHashMap, "phonebookcontact.phonetic_name", str6, bool2);
      a(localHashMap, "phonebookcontact.low_display_name", str6, bool2);
      a(localHashMap, "phonebookcontact.phonetic_name", str5, bool2);
    }
    label234:
    Iterator localIterator = localHashMap.keySet().iterator();
    StringBuilder localStringBuilder = new StringBuilder();
    while (localIterator.hasNext()) {
      localStringBuilder.append("(" + localHashMap.get(localIterator.next()) + ") OR ");
    }
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = localStringBuilder.toString();
    this.n = String.format("( %s phonebookcontact._id IN (SELECT phonebookdata.contact_id FROM phonebookdata WHERE phonebookdata.mime_type=0 AND (phonebookdata.data1 LIKE ? OR phonebookdata.data2 LIKE ? OR phonebookdata.data2 LIKE ?)))", arrayOfObject);
    label335:
    boolean bool1;
    if (!TextUtils.isEmpty(paramString1))
    {
      bool1 = true;
      if (bool1 != this.i) {
        this.i = bool1;
      }
      p();
      if (!this.i) {
        break label439;
      }
    }
    label439:
    for (String[] arrayOfString2 = { str2, str2, str3 };; arrayOfString2 = null)
    {
      b(arrayOfString2);
      if (paramBoolean)
      {
        this.h.removeCallbacks(this.l);
        this.h.postDelayed(this.l, 200L);
        g();
      }
      return;
      bool1 = false;
      break;
    }
  }
  
  protected String q()
  {
    return this.n;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.contacts.g
 * JD-Core Version:    0.7.0.1
 */