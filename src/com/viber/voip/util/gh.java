package com.viber.voip.util;

import android.text.TextUtils;
import android.util.Log;
import com.viber.voip.ViberApplication;
import com.viber.voip.contacts.b.h;
import com.viber.voip.settings.l;
import java.util.Iterator;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

final class gh
  implements Runnable
{
  gh(Set paramSet, int paramInt) {}
  
  public void run()
  {
    for (;;)
    {
      JSONArray localJSONArray;
      int j;
      try
      {
        if (TextUtils.isEmpty(gg.a()))
        {
          localJSONArray = new JSONArray();
          int i = localJSONArray.length();
          j = 0;
          k = 0;
          if (j < i)
          {
            if (((JSONObject)localJSONArray.get(j)).getInt("watchedTime") == 0) {
              break label157;
            }
            m = k + 1;
            break label161;
          }
        }
        else
        {
          localJSONArray = new JSONArray(gg.a());
          continue;
        }
        Iterator localIterator = this.a.iterator();
        if (localIterator.hasNext())
        {
          localJSONArray.put(gg.a(((h)localIterator.next()).getId(), 0));
          continue;
        }
        ViberApplication.preferences().a("recents_count", this.b - k);
      }
      catch (JSONException localJSONException)
      {
        fz.a(Log.getStackTraceString(localJSONException));
        return;
      }
      gg.a(localJSONArray.toString());
      return;
      label157:
      int m = k;
      label161:
      j++;
      int k = m;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.util.gh
 * JD-Core Version:    0.7.0.1
 */