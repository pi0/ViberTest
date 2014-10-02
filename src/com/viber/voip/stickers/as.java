package com.viber.voip.stickers;

import android.os.Handler;
import com.viber.voip.ViberApplication;
import com.viber.voip.ViberEnv;
import com.viber.voip.bc;
import com.viber.voip.bd;
import com.viber.voip.billing.a;
import com.viber.voip.dc;
import com.viber.voip.dk;
import com.viber.voip.registration.cp;
import com.viber.voip.util.http.HttpRequest;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class as
{
  private static final String a = as.class.getSimpleName();
  private List<Integer> b = new ArrayList();
  private r c;
  private Handler d = dc.a(dk.a);
  private Handler e = dc.a(dk.h);
  
  public as(r paramr)
  {
    this.c = paramr;
  }
  
  private String a(Iterable<Integer> paramIterable)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    Iterator localIterator = paramIterable.iterator();
    while (localIterator.hasNext())
    {
      int i = ((Integer)localIterator.next()).intValue();
      if (localStringBuilder.length() > 0) {
        localStringBuilder.append(",");
      }
      localStringBuilder.append(i);
    }
    return localStringBuilder.toString();
  }
  
  private void a(int paramInt)
  {
    this.c.h(paramInt);
  }
  
  private void a(ax paramax)
  {
    a("updatePromotedPackages(), promo ids: " + a(this.b));
    if (!paramax.a.equals(this.b))
    {
      a("updatePromotedPackages(), updating promo packages");
      this.b = paramax.a;
      this.c.a(this.b);
    }
    c();
  }
  
  private static void a(String paramString) {}
  
  private static void a(String paramString, Throwable paramThrowable) {}
  
  private void c()
  {
    this.e.post(new au(this));
  }
  
  private ax d()
  {
    for (;;)
    {
      int i;
      label113:
      Object localObject1;
      Object localObject2;
      label161:
      Object localObject4;
      Object localObject5;
      Object localObject6;
      try
      {
        String str1 = a.a(ViberEnv.newHttpRequest(bc.b().X).getInputStream());
        localax = new ax(null);
        JSONObject localJSONObject1 = (JSONObject)new JSONObject(str1).get("promo");
        String str2 = "+" + ViberApplication.getInstance().getRegistrationValues().a();
        String str3 = ViberApplication.getInstance().getRegistrationValues().e();
        JSONObject localJSONObject2;
        if (localJSONObject1 == null)
        {
          localObject3 = null;
          l1 = System.currentTimeMillis() / 1000L;
          if (localObject3 == null) {
            continue;
          }
          i = 0;
          if (i >= localObject3.length()) {
            continue;
          }
          localJSONObject2 = localObject3.getJSONObject(i);
          if (!localJSONObject2.has("id")) {
            break label439;
          }
        }
        else
        {
          Iterator localIterator = localJSONObject1.keys();
          localObject1 = null;
          localObject2 = null;
          localObject3 = null;
          if (!localIterator.hasNext()) {
            break label460;
          }
          String str4 = (String)localIterator.next();
          if (str4.equals(""))
          {
            localObject4 = localJSONObject1.getJSONArray("");
            localObject5 = localObject2;
            localObject6 = localObject3;
            break label445;
          }
          if (str4.equals(str2))
          {
            JSONArray localJSONArray2 = localJSONObject1.getJSONArray(str2);
            localObject6 = localObject3;
            localObject4 = localObject1;
            localObject5 = localJSONArray2;
            break label445;
          }
          if ((str3 == null) || (!str3.startsWith(str4))) {
            break label424;
          }
          JSONArray localJSONArray1 = localJSONObject1.getJSONArray(str4);
          Object localObject7 = localObject1;
          localObject5 = localObject2;
          localObject6 = localJSONArray1;
          localObject4 = localObject7;
          break label445;
        }
        localInteger = Integer.valueOf(localJSONObject2.getInt("id"));
        if (!localJSONObject2.has("expires")) {
          continue;
        }
        l2 = localJSONObject2.getLong("expires");
      }
      catch (JSONException localJSONException)
      {
        ax localax;
        long l1;
        Integer localInteger;
        Long localLong;
        a("Error fetching package promotions", localJSONException);
        localJSONException.printStackTrace();
        return null;
        long l2 = 0L;
        continue;
        return localax;
      }
      catch (IOException localIOException)
      {
        a("Error fetching package promotions", localIOException);
        localIOException.printStackTrace();
        continue;
      }
      catch (NumberFormatException localNumberFormatException)
      {
        a("Error parsing package promotions", localNumberFormatException);
        localNumberFormatException.printStackTrace();
        continue;
      }
      localLong = Long.valueOf(l2);
      if ((localLong.longValue() == 0L) || (l1 < localLong.longValue())) {
        localax.a.add(localInteger);
      }
      label424:
      label439:
      label445:
      label460:
      do
      {
        localObject3 = null;
        break;
        localObject4 = localObject1;
        localObject5 = localObject2;
        localObject6 = localObject3;
        break label445;
        i++;
        break label113;
        localObject3 = localObject6;
        localObject2 = localObject5;
        localObject1 = localObject4;
        break label161;
        if (localObject3 != null) {
          break;
        }
        if (localObject2 != null)
        {
          localObject3 = localObject2;
          break;
        }
      } while (localObject1 == null);
      Object localObject3 = localObject1;
    }
  }
  
  public void a()
  {
    a("ctor, scheduling download of pending icons in 5000ms");
    this.d.postDelayed(new at(this), 5000L);
    this.b = this.c.j();
  }
  
  void b()
  {
    this.e.post(new av(this));
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.stickers.as
 * JD-Core Version:    0.7.0.1
 */