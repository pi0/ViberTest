package com.viber.voip.messages.extras.a;

import android.content.Context;
import android.location.Address;
import android.location.Geocoder;
import android.location.Location;
import android.location.LocationManager;
import android.os.Handler;
import android.text.TextUtils;
import android.util.Log;
import com.viber.logger.QaLogger;
import com.viber.logger.QaLogger.QaLocationAskEvent;
import com.viber.logger.QaLogger.QaLocationReceivedEvent;
import com.viber.voip.ViberApplication;
import com.viber.voip.dc;
import com.viber.voip.dk;
import com.viber.voip.messages.extras.map.k;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

public class e
  implements a
{
  private long a;
  private LocationManager b = (LocationManager)ViberApplication.getInstance().getApplicationContext().getSystemService("location");
  private Location c;
  private Location d;
  private Location e;
  private Location f;
  private Map<Long, af> g = new HashMap();
  private Handler h = dc.a(dk.k);
  private Address i;
  
  private String a(Address paramAddress, String paramString)
  {
    if ((paramAddress == null) || (paramAddress.getCountryName() == null)) {
      return paramString;
    }
    if (TextUtils.isEmpty(paramString)) {
      return "";
    }
    if ((TextUtils.isEmpty(paramAddress.getCountryName())) && (paramString.indexOf(",") != -1)) {
      return paramString.substring(0, paramString.indexOf(","));
    }
    String str1 = paramString.replace(paramAddress.getCountryName(), " ");
    if (!TextUtils.isEmpty(paramAddress.getAddressLine(1))) {
      str1 = str1.replace(paramAddress.getAddressLine(1), " ");
    }
    String str2 = str1.replace(",  ", "");
    b("getAddressWithCuttingOwn.cutAddressString new address ready = " + str2);
    return str2;
  }
  
  private void a(long paramLong, af paramaf)
  {
    synchronized (this.g)
    {
      this.g.put(Long.valueOf(paramLong), paramaf);
      return;
    }
  }
  
  private void a(long paramLong, b paramb)
  {
    b("onGetLocationTimeout msgId:" + paramLong);
    if (b(Long.valueOf(paramLong)))
    {
      a(Long.valueOf(paramLong));
      paramb.a(null);
      QaLogger.a(new QaLogger.QaLocationReceivedEvent(paramLong, false));
    }
  }
  
  private void a(Address paramAddress, String paramString, c paramc)
  {
    dc.a(dk.a).post(new h(this, paramc, paramAddress, paramString));
  }
  
  private void a(Location paramLocation)
  {
    b("cachedGPSLocation was init with location = " + paramLocation);
    if (!a(this.d, paramLocation)) {
      a(paramLocation, true, null);
    }
    this.d = paramLocation;
  }
  
  private void a(Location paramLocation, boolean paramBoolean, b paramb)
  {
    if (paramLocation != null) {
      b(paramLocation.getLatitude(), paramLocation.getLongitude(), new v(this, paramBoolean, paramLocation, paramb));
    }
  }
  
  private void a(k paramk, boolean paramBoolean, c paramc)
  {
    Locale localLocale = Locale.getDefault();
    if (TextUtils.isEmpty(localLocale.getCountry())) {
      localLocale = Locale.ENGLISH;
    }
    Address localAddress = new Address(localLocale);
    localAddress.setLongitude(com.viber.voip.messages.extras.map.d.a(paramk.b().b()));
    localAddress.setLatitude(com.viber.voip.messages.extras.map.d.a(paramk.b().a()));
    localAddress.setLocality(paramk.d());
    String str = paramk.d();
    if (paramBoolean)
    {
      a(localAddress, str, paramc);
      return;
    }
    paramc.a(localAddress, str);
  }
  
  private void a(StringBuilder paramStringBuilder)
  {
    if (paramStringBuilder.length() > 0) {
      paramStringBuilder.append(", ");
    }
  }
  
  private boolean a(Location paramLocation1, Location paramLocation2)
  {
    return (paramLocation1 != null) && (paramLocation2 != null) && (paramLocation1.getLatitude() == paramLocation2.getLatitude()) && (paramLocation1.getLongitude() == paramLocation2.getLongitude()) && (paramLocation1.distanceTo(paramLocation2) <= 1000.0F);
  }
  
  private void b(Location paramLocation)
  {
    b("cachedWPSLocation was init with location = " + paramLocation);
    if (!a(this.c, paramLocation)) {
      a(paramLocation, false, null);
    }
    this.c = paramLocation;
  }
  
  private static void b(String paramString) {}
  
  private boolean b(b paramb)
  {
    b("getGPSLocation GPS_PROVIDER is disabled or we don't need use GPS");
    return true;
  }
  
  private boolean c(b paramb)
  {
    b("getWPSLocation");
    if (this.b.isProviderEnabled("network"))
    {
      ad localad = new ad(this, new s(this, paramb), 30000, null);
      this.b.requestLocationUpdates("network", 0L, 0.0F, localad);
      return true;
    }
    b("getWPSLocation NETWORK_PROVIDER is disabled!");
    return false;
  }
  
  private void d()
  {
    dc.a(dk.h).post(new i(this));
  }
  
  private void d(b paramb)
  {
    this.h.post(new t(this, paramb));
  }
  
  public d a(double paramDouble1, double paramDouble2)
  {
    Context localContext = ViberApplication.getInstance().getApplicationContext();
    Locale localLocale1 = Locale.getDefault();
    Locale localLocale2;
    if (TextUtils.isEmpty(localLocale1.getCountry())) {
      localLocale2 = Locale.ENGLISH;
    }
    for (;;)
    {
      b("getAddress lat = " + paramDouble1 + ", lng = " + paramDouble2 + ", locale (country) = " + localLocale2.getCountry());
      Geocoder localGeocoder = new Geocoder(localContext, localLocale2);
      StringBuilder localStringBuilder = new StringBuilder();
      try
      {
        List localList = localGeocoder.getFromLocation(paramDouble1, paramDouble2, 1);
        Address localAddress;
        if (localList.size() > 0) {
          localAddress = (Address)localList.get(0);
        }
        String str1;
        String str2;
        IOException localIOException2;
        IllegalArgumentException localIllegalArgumentException2;
        localLocale2 = localLocale1;
      }
      catch (IOException localIOException1)
      {
        for (;;)
        {
          try
          {
            str1 = localAddress.getAddressLine(0);
            str2 = localAddress.getAddressLine(1);
            if (!TextUtils.isEmpty(str1)) {
              localStringBuilder.append(str1);
            }
            if ((!TextUtils.isEmpty(str2)) && (!str1.equals(str2)))
            {
              a(localStringBuilder);
              localStringBuilder.append(str2);
            }
            a(localStringBuilder);
            localStringBuilder.append(localAddress.getCountryName());
            b("getAddress return value = " + localStringBuilder.toString());
            return new d(localAddress, localStringBuilder.toString());
          }
          catch (IllegalArgumentException localIllegalArgumentException3)
          {
            continue;
          }
          catch (IOException localIOException3)
          {
            continue;
          }
          localIOException1 = localIOException1;
          localIOException2 = localIOException1;
          localAddress = null;
          b(Log.getStackTraceString(localIOException2));
        }
      }
      catch (IllegalArgumentException localIllegalArgumentException1)
      {
        for (;;)
        {
          localIllegalArgumentException2 = localIllegalArgumentException1;
          localAddress = null;
          b(Log.getStackTraceString(localIllegalArgumentException2));
          continue;
          localAddress = null;
        }
      }
    }
  }
  
  public void a()
  {
    b();
  }
  
  public void a(double paramDouble1, double paramDouble2, c paramc)
  {
    b("getAddressWithCuttingOwn cachedOwnAddress = " + this.i);
    if (this.i == null)
    {
      a(new w(this, paramDouble1, paramDouble2, paramc));
      return;
    }
    a(paramDouble1, paramDouble2, true, new aa(this, paramc));
  }
  
  public void a(double paramDouble1, double paramDouble2, boolean paramBoolean, c paramc)
  {
    this.h.post(new ab(this, paramDouble1, paramDouble2, paramBoolean, paramc));
  }
  
  public void a(long paramLong, b paramb, boolean paramBoolean)
  {
    b("getLocation msgId = " + paramLong + ",isPublicGroup:" + paramBoolean);
    QaLogger.a(new QaLogger.QaLocationAskEvent(paramLong));
    Location localLocation2;
    if (paramBoolean)
    {
      if (this.d == null) {}
    }
    else {
      while (this.d != null)
      {
        b("return cached GPSLocation");
        QaLogger.a(new QaLogger.QaLocationReceivedEvent(paramLong, true));
        if (!paramBoolean) {
          break;
        }
        localLocation2 = this.e;
        paramb.a(localLocation2);
        return;
      }
    }
    if (paramBoolean)
    {
      if (this.f == null) {
        break label168;
      }
      label114:
      b("return cached WPSLocation");
      QaLogger.a(new QaLogger.QaLocationReceivedEvent(paramLong, true));
      if (!paramBoolean) {
        break label222;
      }
    }
    label168:
    label222:
    for (Location localLocation1 = this.f;; localLocation1 = c())
    {
      paramb.a(localLocation1);
      return;
      localLocation2 = this.d;
      break;
      if (c() != null) {
        break label114;
      }
      if (!this.b.isProviderEnabled("network")) {
        break label290;
      }
      b("all cached are empty. try to get location.");
      if (!b(Long.valueOf(paramLong))) {
        break label231;
      }
      b("this msgId already in LocationUpdates, msgId:" + paramLong);
      return;
    }
    label231:
    if (paramBoolean) {}
    for (af localaf = new af(this, new f(this, paramb), paramLong);; localaf = new af(this, paramb, paramLong))
    {
      this.b.requestLocationUpdates("network", 2000L, 1000.0F, localaf);
      return;
    }
    label290:
    paramb.a(null);
    QaLogger.a(new QaLogger.QaLocationReceivedEvent(paramLong, false));
  }
  
  public void a(b paramb)
  {
    a(paramb, true);
  }
  
  public void a(b paramb, boolean paramBoolean)
  {
    if (paramBoolean) {
      if (this.d != null)
      {
        b("return cached GPSLocation");
        paramb.a(this.d);
      }
    }
    do
    {
      do
      {
        return;
        if (c() != null)
        {
          b("return cached WPSLocation");
          paramb.a(c());
          return;
        }
      } while (c(paramb));
      paramb.a(null);
      return;
      if (!b(paramb))
      {
        paramb.a(null);
        return;
      }
    } while (c(paramb));
    d(paramb);
  }
  
  public void a(Long paramLong)
  {
    if ((af)this.g.get(paramLong) != null) {
      synchronized (this.g)
      {
        this.g.remove(paramLong);
        return;
      }
    }
  }
  
  public void b()
  {
    long l = System.currentTimeMillis();
    if (l - this.a > 120000L)
    {
      b(null);
      d();
    }
    for (;;)
    {
      this.a = l;
      return;
      b("cache time was not expired! nothing to do.");
    }
  }
  
  public void b(double paramDouble1, double paramDouble2, c paramc)
  {
    new com.viber.voip.messages.extras.map.d(null, null).a(paramDouble1, paramDouble2, new g(this, paramc));
  }
  
  public boolean b(Long paramLong)
  {
    return this.g.containsKey(paramLong);
  }
  
  public Location c()
  {
    return this.c;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.extras.a.e
 * JD-Core Version:    0.7.0.1
 */