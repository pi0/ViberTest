package com.viber.voip.registration;

import com.viber.voip.d.d;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;
import java.util.concurrent.CountDownLatch;

class as
  implements d
{
  as(ar paramar, CountryCode[] paramArrayOfCountryCode, Exception[] paramArrayOfException, CountDownLatch paramCountDownLatch) {}
  
  public void a(int paramInt, String paramString)
  {
    List localList = SelectCountryActivity.a();
    int i;
    if (localList != null)
    {
      i = 0;
      if (i < localList.size())
      {
        CountryCode localCountryCode = (CountryCode)localList.get(i);
        if (!localCountryCode.a().equals("US")) {
          break label64;
        }
        this.a[0] = localCountryCode;
      }
    }
    for (;;)
    {
      this.c.countDown();
      return;
      label64:
      i++;
      break;
      this.b[0] = new IOException("Data receive failed status = " + paramInt + " message " + paramString);
    }
  }
  
  public void a(InputStream paramInputStream)
  {
    aw localaw = new aw(paramInputStream);
    for (;;)
    {
      try
      {
        this.a[0] = localaw.a();
        localObject1 = this.a[0];
        List localList = SelectCountryActivity.a();
        if ((localList == null) || (this.a[0] == null) || (this.a[0].b() == null)) {
          continue;
        }
        i = 0;
        if (i >= localList.size()) {
          continue;
        }
        localObject2 = (CountryCode)localList.get(i);
        if (!this.a[0].b().equals(((CountryCode)localObject2).b())) {
          continue;
        }
        if (!this.a[0].a().equals(((CountryCode)localObject2).a())) {
          continue;
        }
      }
      catch (Exception localException)
      {
        Object localObject1;
        int i;
        this.b[0] = localException;
        continue;
        Object localObject2 = localObject1;
        continue;
      }
      this.a[0] = localObject2;
      this.c.countDown();
      return;
      localObject2 = localObject1;
      i++;
      localObject1 = localObject2;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.registration.as
 * JD-Core Version:    0.7.0.1
 */