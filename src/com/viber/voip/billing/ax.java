package com.viber.voip.billing;

import android.os.Handler;
import android.os.RemoteException;
import java.util.List;
import org.json.JSONException;

class ax
  extends bl
{
  ax(ap paramap, String paramString, List paramList, bk parambk)
  {
    super(paramap, paramString);
  }
  
  public void a()
  {
    bm localbm = new bm();
    bo localbo = new bo(0, "Query product details successful.");
    try
    {
      ap.a(this.c, "inapp", localbm, this.a);
      ap.b(this.c).post(new ay(this, localbo, localbm));
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new ao(-1001, "Remote exception while refreshing inventory.", localRemoteException);
    }
    catch (ao localao)
    {
      for (;;)
      {
        localbo = localao.a();
      }
    }
    catch (JSONException localJSONException)
    {
      throw new ao(-1002, "Error parsing JSON response while refreshing inventory.", localJSONException);
    }
    catch (Exception localException)
    {
      throw new ao(-1008, "Exception while refreshing inventory.", localException);
    }
  }
  
  void a(bo parambo)
  {
    bm localbm = new bm();
    ap.b(this.c).post(new az(this, parambo, localbm));
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.billing.ax
 * JD-Core Version:    0.7.0.1
 */