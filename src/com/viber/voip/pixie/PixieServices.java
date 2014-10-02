package com.viber.voip.pixie;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.Build;
import android.os.Build.VERSION;
import com.viber.voip.ViberApplication;
import com.viber.voip.bc;
import com.viber.voip.bd;
import com.viber.voip.util.gj;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.regex.PatternSyntaxException;

public class PixieServices
{
  private static final long ACTIVATION_LISTS_CACHE_TIME = 21600000L;
  private static final String ACTIVATION_LISTS_URL;
  private static final int CONFIG_KEY_CALLS_OVER_UDP = 0;
  private static final String CONFIG_KEY_CODES = "ueon";
  private static final int CONFIG_KEY_NUMBER_OF_EDGE_LISTS = 1;
  private static final int CONFIG_KEY_OBFUSCATION_POLICY = 2;
  private static final int CONFIG_KEY_UNBLOCKER_2_EDGE_LISTS = 3;
  static final int CRYPTO_STRING_ID_ACTIVATION_ALGORITHM = 2;
  static final int CRYPTO_STRING_ID_ACTIVATION_KEYGEN_ALGORITHM = 7;
  static final int CRYPTO_STRING_ID_ACTIVATION_KEYSPEC_ALGORITHM = 9;
  static final int CRYPTO_STRING_ID_ACTIVATION_PASSWORD = 3;
  public static final String EDGE_LIST_FILE_NAME_SUFFIX_V1 = ".e";
  private static final long EDGE_PROXY_LIST_CACHE_TIME = 13500000L;
  private static final String EDGE_PROXY_LIST_PREFIX_URL = StringStore.getString(59);
  private static final int EDGE_PROXY_LIST_REFRESH_INTERVAL_MS = 14400000;
  private static final int[] EXTERNAL_CONNECTION_TEST_URLS;
  private static final long EXTERNAL_IP_CACHE_TIME = 7200000L;
  private static List<PixieServices.ExternalIpProvider> IP_PROVIDERS_FALLBACK;
  private static PixieServices.ExternalIpProvider IP_PROVIDER_GOOGLE;
  public static final char OBFUSCATION_POLICY_HTTP = 'h';
  public static final char OBFUSCATION_POLICY_SSL = 's';
  static final int PIXIE_REFRESH_RETRY_ON_ERROR_TIMEOUT_MS = 3600000;
  private static final String PREFS_NAME = "ub";
  private static final String PREF_NAME_ACTIVATION_DATA = "ad";
  private static final String PREF_NAME_ACTIVATION_DATA_EXPIRATION = "ae";
  private static final String PREF_NAME_EDGE_PROXIES = "ep";
  private static final String PREF_NAME_EDGE_PROXIES_EXPIRATION = "ee";
  private static final String PREF_NAME_EXTERNAL_IP = "ei";
  private static final String PREF_NAME_EXTERNAL_IP_EXPIRATION = "ie";
  private static final String REGEXP_IP_ADDRESS = "(\\d{1,3}\\.\\d{1,3}\\.\\d{1,3}\\.\\d{1,3})";
  private static String TAG = "UB";
  private static final int URL_CONNECT_TIMEOUT = 10000;
  private static final String VIBER_DOWN_URL;
  private static PixieServices instance = null;
  private List<Pattern> activationAllowExternalIP = Collections.synchronizedList(new ArrayList());
  private List<Pattern> activationAllowNetworkOperator = Collections.synchronizedList(new ArrayList());
  private List<Pattern> activationAllowNetworkOperator_v2 = Collections.synchronizedList(new ArrayList());
  private List<Pattern> activationAllowPhoneNumber = Collections.synchronizedList(new ArrayList());
  private List<Pattern> activationAllowPhoneNumber_v2 = Collections.synchronizedList(new ArrayList());
  private String[] activationConfigurationValue = new String["ueon".length()];
  private String activationDataEncrypted;
  private long activationDataExpirationTime;
  private List<Pattern> activationRestrictPhoneNumber = Collections.synchronizedList(new ArrayList());
  private Context applicationContext;
  private String edgeProxyContent;
  private long edgeProxyContentExpirationTime;
  private String externalIP;
  private long externalIPExpirationTime;
  private PixieServices.PixieServicesCallback listener;
  private Thread refresherThread = new PixieServices.1(this);
  private short unblockerVersion = 1;
  private int userHashCode;
  
  static
  {
    IP_PROVIDER_GOOGLE = new PixieServices.ExternalIpProvider(64, 90, 100, 4, 33);
    IP_PROVIDERS_FALLBACK = new ArrayList();
    IP_PROVIDERS_FALLBACK.add(new PixieServices.ExternalIpProvider(20, 12, 200, -1, -1));
    IP_PROVIDERS_FALLBACK.add(new PixieServices.ExternalIpProvider(47, 3, 120, 4, -1));
    IP_PROVIDERS_FALLBACK.add(new PixieServices.ExternalIpProvider(18, -1, 40, -1, -1));
    IP_PROVIDERS_FALLBACK.add(new PixieServices.ExternalIpProvider(6, -1, 40, -1, -1));
    IP_PROVIDERS_FALLBACK.add(new PixieServices.ExternalIpProvider(24, 11, 40, -1, -1));
    EXTERNAL_CONNECTION_TEST_URLS = new int[] { 22, 7, 21, 100, 1, 10 };
    ACTIVATION_LISTS_URL = StringStore.getString(41);
    VIBER_DOWN_URL = StringStore.getString(13);
  }
  
  private PixieServices(Context paramContext)
  {
    this.applicationContext = paramContext;
    restoreSavedState();
    this.refresherThread.start();
  }
  
  private void calculateUserHashCode(String paramString1, String paramString2)
  {
    if (paramString1 != null) {
      this.userHashCode = paramString1.hashCode();
    }
    for (;;)
    {
      this.userHashCode = (7 + (0xFFFFFF & this.userHashCode));
      return;
      if (paramString2 != null) {
        this.userHashCode = paramString2.hashCode();
      } else {
        this.userHashCode = 0;
      }
    }
  }
  
  private boolean canConnectExternally()
  {
    int i = (int)(Math.random() * EXTERNAL_CONNECTION_TEST_URLS.length);
    int j = 0;
    int k = i;
    while (j < 2) {
      try
      {
        HttpURLConnection localHttpURLConnection = (HttpURLConnection)new URL(StringStore.getString(EXTERNAL_CONNECTION_TEST_URLS[k])).openConnection();
        localHttpURLConnection.setConnectTimeout(5000);
        localHttpURLConnection.setReadTimeout(3000);
        localHttpURLConnection.getResponseCode();
        return true;
      }
      catch (IOException localIOException)
      {
        k = (k + 1) % EXTERNAL_CONNECTION_TEST_URLS.length;
        j++;
      }
    }
    return false;
  }
  
  private void decodeActivationLists()
  {
    int i = 7;
    int j = 0;
    if (this.activationDataEncrypted == null) {}
    for (;;)
    {
      return;
      int k = this.activationDataEncrypted.length() / 2;
      byte[] arrayOfByte1 = new byte[k];
      int m = 0;
      if (m < k)
      {
        String str3 = this.activationDataEncrypted.substring(m * 2, 2 + m * 2);
        Integer localInteger;
        if (gj.c(str3))
        {
          localInteger = null;
          label67:
          if (localInteger == null) {
            break label104;
          }
        }
        label104:
        for (int i11 = localInteger.byteValue();; i11 = 0)
        {
          arrayOfByte1[m] = i11;
          m++;
          break;
          localInteger = Integer.valueOf(str3, 16);
          break label67;
        }
      }
      byte[] arrayOfByte2 = new byte[Math.max(0, -12 + arrayOfByte1.length)];
      int n = 0x46 & arrayOfByte1[i];
      int i1 = 0;
      int i2 = i;
      int i3 = i;
      while (i1 < n)
      {
        int i10 = ((i2 ^ 0x7) + (i3 ^ 0x7)) % 2147483647;
        i1++;
        i3 = i2;
        i2 = i10;
      }
      int i4 = i3;
      int i5 = i2;
      int i6 = 0;
      while (i6 < arrayOfByte2.length)
      {
        arrayOfByte2[i6] = ((byte)(i4 ^ (byte)(arrayOfByte1[(i6 + 12)] ^ arrayOfByte1[i6])));
        i = (i + 1) % 12;
        int i9 = ((i5 ^ 0x7) + (i4 ^ 0x7)) % 2147483647;
        i6++;
        i4 = i5;
        i5 = i9;
      }
      String str1 = new String(arrayOfByte2);
      this.activationRestrictPhoneNumber.clear();
      this.activationAllowPhoneNumber.clear();
      this.activationAllowExternalIP.clear();
      this.activationAllowNetworkOperator.clear();
      this.activationAllowPhoneNumber_v2.clear();
      this.activationAllowNetworkOperator_v2.clear();
      String[] arrayOfString = str1.split("\n");
      int i7 = arrayOfString.length;
      while (j < i7)
      {
        String str2 = arrayOfString[j].trim();
        if (str2.length() >= 3) {}
        try
        {
          switch (str2.charAt(0))
          {
          case 'p': 
            this.activationAllowPhoneNumber.add(Pattern.compile(str2.substring(1)));
          }
        }
        catch (PatternSyntaxException localPatternSyntaxException)
        {
          int i8;
          break label599;
        }
        this.activationRestrictPhoneNumber.add(Pattern.compile(str2.substring(1)));
        break label599;
        this.activationAllowExternalIP.add(Pattern.compile(str2.substring(1)));
        break label599;
        this.activationAllowNetworkOperator.add(Pattern.compile(str2.substring(1)));
        break label599;
        this.activationAllowNetworkOperator_v2.add(Pattern.compile(str2.substring(1)));
        break label599;
        this.activationAllowPhoneNumber_v2.add(Pattern.compile(str2.substring(1)));
        break label599;
        i8 = "ueon".indexOf(str2.charAt(1));
        if (i8 >= 0) {
          this.activationConfigurationValue[i8] = str2.substring(2);
        }
        label599:
        j++;
      }
    }
  }
  
  private String getExternalIP()
  {
    if ((this.externalIP != null) && (System.currentTimeMillis() <= this.externalIPExpirationTime)) {
      return this.externalIP;
    }
    PixieServices.ExternalIpProvider.Result localResult1 = IP_PROVIDER_GOOGLE.getExternalIP();
    if ((PixieServices.ExternalIpProvider.Result.access$000(localResult1) != null) && (PixieServices.ExternalIpProvider.Result.access$100(localResult1) < 0)) {
      return PixieServices.ExternalIpProvider.Result.access$000(localResult1);
    }
    if ((PixieServices.ExternalIpProvider.Result.access$100(localResult1) == 200) && (localResult1 == null)) {}
    for (;;)
    {
      PixieServices.ExternalIpProvider.Result localResult2 = ((PixieServices.ExternalIpProvider)IP_PROVIDERS_FALLBACK.get((int)(Math.random() * IP_PROVIDERS_FALLBACK.size()))).getExternalIP();
      if (PixieServices.ExternalIpProvider.Result.access$000(localResult2) != null) {
        setExternalIP(PixieServices.ExternalIpProvider.Result.access$000(localResult2));
      }
      return PixieServices.ExternalIpProvider.Result.access$000(localResult2);
      if (PixieServices.ExternalIpProvider.Result.access$100(localResult1) == 200) {}
    }
  }
  
  public static PixieServices getInstance(Context paramContext)
  {
    try
    {
      if (instance == null) {
        instance = new PixieServices(paramContext);
      }
      PixieServices localPixieServices = instance;
      return localPixieServices;
    }
    finally {}
  }
  
  private SharedPreferences.Editor getSharedPreferencesEditor()
  {
    return this.applicationContext.getSharedPreferences("ub", 0).edit();
  }
  
  private boolean isPixieEnabledForIP(String paramString)
  {
    synchronized (this.activationAllowExternalIP)
    {
      Iterator localIterator = this.activationAllowExternalIP.iterator();
      while (localIterator.hasNext()) {
        if (((Pattern)localIterator.next()).matcher(paramString).find()) {
          return true;
        }
      }
      return false;
    }
  }
  
  private boolean isPixieEnabledForNetworkOperator(String paramString)
  {
    if ((paramString == null) || (paramString.length() == 0)) {
      return false;
    }
    synchronized (this.activationAllowNetworkOperator)
    {
      Iterator localIterator = this.activationAllowNetworkOperator.iterator();
      while (localIterator.hasNext()) {
        if (((Pattern)localIterator.next()).matcher(paramString).find()) {
          return true;
        }
      }
    }
    return false;
  }
  
  private boolean isPixieEnabledForNetworkOperator_v2(String paramString)
  {
    if ((paramString == null) || (paramString.length() == 0)) {
      return false;
    }
    synchronized (this.activationAllowNetworkOperator_v2)
    {
      Iterator localIterator = this.activationAllowNetworkOperator_v2.iterator();
      while (localIterator.hasNext()) {
        if (((Pattern)localIterator.next()).matcher(paramString).find()) {
          return true;
        }
      }
    }
    return false;
  }
  
  private boolean isPixieEnabledForPhone(String paramString)
  {
    if ((paramString == null) || (paramString.length() == 0)) {
      return false;
    }
    synchronized (this.activationAllowPhoneNumber)
    {
      Iterator localIterator = this.activationAllowPhoneNumber.iterator();
      while (localIterator.hasNext()) {
        if (((Pattern)localIterator.next()).matcher(paramString).find()) {
          return true;
        }
      }
    }
    return false;
  }
  
  private boolean isPixieEnabledForPhone_v2(String paramString)
  {
    if ((paramString == null) || (paramString.length() == 0)) {
      return false;
    }
    synchronized (this.activationAllowPhoneNumber_v2)
    {
      Iterator localIterator = this.activationAllowPhoneNumber_v2.iterator();
      while (localIterator.hasNext()) {
        if (((Pattern)localIterator.next()).matcher(paramString).find()) {
          return true;
        }
      }
    }
    return false;
  }
  
  private boolean isPixieRestrictedForPhone(String paramString)
  {
    if ((paramString == null) || (paramString.length() == 0)) {
      return false;
    }
    synchronized (this.activationRestrictPhoneNumber)
    {
      Iterator localIterator = this.activationRestrictPhoneNumber.iterator();
      while (localIterator.hasNext()) {
        if (((Pattern)localIterator.next()).matcher(paramString).find()) {
          return true;
        }
      }
    }
    return false;
  }
  
  private boolean loadActivationLists(boolean paramBoolean)
  {
    if ((!paramBoolean) && (this.activationDataEncrypted != null))
    {
      long l = System.currentTimeMillis();
      if (this.activationDataExpirationTime < l) {}
    }
    do
    {
      return true;
      this.activationDataEncrypted = loadS3Url(ACTIVATION_LISTS_URL);
      if (this.activationDataEncrypted == null) {
        return false;
      }
      this.activationDataExpirationTime = (21600000L + System.currentTimeMillis());
      SharedPreferences.Editor localEditor = getSharedPreferencesEditor();
      localEditor.putString("ad", this.activationDataEncrypted);
      localEditor.putLong("ae", this.activationDataExpirationTime);
      localEditor.commit();
      decodeActivationLists();
    } while (this.listener == null);
    this.listener.onNewActivationFileLoaded();
    return true;
  }
  
  private boolean loadEdgeProxyList(boolean paramBoolean)
  {
    if ((!paramBoolean) && (this.edgeProxyContent != null))
    {
      long l2 = System.currentTimeMillis();
      if (this.edgeProxyContentExpirationTime >= l2) {
        return true;
      }
    }
    if (this.activationConfigurationValue[1] != null) {}
    int k;
    for (;;)
    {
      try
      {
        int i10 = Integer.parseInt(this.activationConfigurationValue[1]);
        int i = i10;
        int j = 13 + this.userHashCode % i;
        k = 1749203505;
        int m = 1594369083;
        int n = 1208757733;
        int i1 = 589458919;
        int i2 = 0;
        if (i2 >= j) {
          break;
        }
        int i8 = m ^ m << 11;
        int i9 = k ^ k >> 19 ^ i8 ^ i8 >> 8;
        i2++;
        m = n;
        n = i1;
        i1 = k;
        k = i9;
        continue;
        i = 1;
      }
      catch (NumberFormatException localNumberFormatException2)
      {
        ViberApplication.log(6, TAG, "Invalid value");
      }
    }
    String str1 = EDGE_PROXY_LIST_PREFIX_URL;
    int i3 = k;
    String str2 = str1;
    for (int i4 = 0; i4 < 8; i4++)
    {
      str2 = str2 + (i3 & 0xF);
      i3 >>= 4;
    }
    String str4;
    if (this.unblockerVersion < 2)
    {
      str4 = str2 + ".e";
      this.edgeProxyContent = loadS3Url(str4);
      if (this.edgeProxyContent == null) {
        return false;
      }
    }
    else
    {
      String str3 = this.activationConfigurationValue[3];
      if ((str3 != null) && (str3.length() != 0)) {}
      for (;;)
      {
        try
        {
          int i7 = Integer.parseInt(str3);
          i5 = i7;
          int i6 = 1 + (int)(Math.random() * i5);
          str4 = str2 + "." + i6;
        }
        catch (NumberFormatException localNumberFormatException1)
        {
          ViberApplication.log(6, TAG, "Invalid value for CONFIG_KEY_UNBLOCKER_2_EDGE_LISTS");
        }
        int i5 = 0;
      }
    }
    long l1 = 13500000L;
    if (this.edgeProxyContent.length() < 100) {
      l1 /= 4L;
    }
    for (;;)
    {
      this.edgeProxyContentExpirationTime = (l1 + System.currentTimeMillis());
      SharedPreferences.Editor localEditor = getSharedPreferencesEditor();
      localEditor.putString("ep", this.edgeProxyContent);
      localEditor.putLong("ee", this.edgeProxyContentExpirationTime);
      localEditor.commit();
      if (this.listener == null) {
        break;
      }
      this.listener.onNewEdgeListLoaded();
      return true;
      if (this.edgeProxyContent.length() < 150) {
        l1 /= 2L;
      }
    }
  }
  
  private String loadS3Url(String paramString)
  {
    StringStore.getString(44);
    String str1 = bc.b().aa + paramString;
    String str2 = null;
    if (0 == 0)
    {
      String str3 = StringStore.getString(39);
      str2 = loadUrl(str3 + str1);
    }
    return str2;
  }
  
  private String loadUrl(String paramString)
  {
    ViberApplication.log(3, TAG, "Pixie: loadUrl : " + paramString);
    for (;;)
    {
      try
      {
        HttpURLConnection localHttpURLConnection = (HttpURLConnection)new URL(paramString).openConnection();
        localHttpURLConnection.setConnectTimeout(10000);
        StringBuilder localStringBuilder;
        BufferedReader localBufferedReader;
        if ((localHttpURLConnection != null) && (localHttpURLConnection.getResponseCode() == 200))
        {
          localStringBuilder = new StringBuilder();
          localBufferedReader = new BufferedReader(new InputStreamReader(localHttpURLConnection.getInputStream()));
          String str1 = localBufferedReader.readLine();
          if (str1 != null)
          {
            if (localStringBuilder.length() > 0) {
              localStringBuilder.append('\n');
            }
            localStringBuilder.append(str1);
            continue;
          }
        }
        String str2;
        String str3 = null;
      }
      catch (MalformedURLException localMalformedURLException)
      {
        ViberApplication.log(6, TAG, "", localMalformedURLException);
        return null;
        localBufferedReader.close();
        str2 = localStringBuilder.toString();
        str3 = str2;
        return str3;
      }
      catch (IOException localIOException)
      {
        ViberApplication.log(4, TAG, "", localIOException);
        return null;
      }
    }
  }
  
  private void restoreSavedState()
  {
    SharedPreferences localSharedPreferences = this.applicationContext.getSharedPreferences("ub", 0);
    this.externalIP = localSharedPreferences.getString("ei", null);
    this.externalIPExpirationTime = localSharedPreferences.getLong("ie", 0L);
    this.activationDataEncrypted = localSharedPreferences.getString("ad", null);
    this.activationDataExpirationTime = localSharedPreferences.getLong("ae", 0L);
    this.edgeProxyContent = localSharedPreferences.getString("ep", null);
    this.edgeProxyContentExpirationTime = localSharedPreferences.getLong("ee", 0L);
    decodeActivationLists();
  }
  
  private void validateAndCorrectTimestamps()
  {
    long l = System.currentTimeMillis();
    if (13500000L + l < this.edgeProxyContentExpirationTime) {
      this.edgeProxyContentExpirationTime = l;
    }
    if (21600000L + l < this.activationDataExpirationTime) {
      this.activationDataExpirationTime = l;
    }
  }
  
  public String getEdgeProxyBundle()
  {
    return this.edgeProxyContent;
  }
  
  public char getObfuscationPolicy()
  {
    String str = this.activationConfigurationValue[2];
    if ((str == null) || (str.length() == 0)) {
      return 's';
    }
    return str.charAt(0);
  }
  
  public String getUserAgentString()
  {
    StringBuilder localStringBuilder = new StringBuilder(64);
    localStringBuilder.append(StringStore.getString(8));
    localStringBuilder.append(System.getProperty(StringStore.getString(0)));
    localStringBuilder.append(StringStore.getString(46));
    String str1 = Build.VERSION.RELEASE;
    if (str1.length() > 0) {}
    for (;;)
    {
      localStringBuilder.append(str1);
      if ("REL".equals(Build.VERSION.CODENAME))
      {
        String str3 = Build.MODEL;
        if (str3.length() > 0)
        {
          localStringBuilder.append("; ");
          localStringBuilder.append(str3);
        }
      }
      String str2 = Build.ID;
      if (str2.length() > 0)
      {
        localStringBuilder.append(' ').append(StringStore.getString(9)).append('/');
        localStringBuilder.append(str2);
      }
      localStringBuilder.append(")");
      return localStringBuilder.toString();
      str1 = "1.0";
    }
  }
  
  public boolean isCallsOverUDP()
  {
    String str = this.activationConfigurationValue[0];
    boolean bool1 = false;
    if (str != null)
    {
      boolean bool2 = str.equals("1");
      bool1 = false;
      if (bool2) {
        bool1 = true;
      }
    }
    return bool1;
  }
  
  public boolean reloadEdgeProxyList()
  {
    return loadEdgeProxyList(true);
  }
  
  public void removeListener()
  {
    this.listener = null;
  }
  
  public void setExternalIP(String paramString)
  {
    if (paramString == null) {
      return;
    }
    this.externalIP = paramString;
    this.externalIPExpirationTime = (7200000L + System.currentTimeMillis());
    SharedPreferences.Editor localEditor = getSharedPreferencesEditor();
    localEditor.putString("ei", paramString);
    localEditor.putLong("ie", this.externalIPExpirationTime);
    localEditor.commit();
  }
  
  public void setListener(PixieServices.PixieServicesCallback paramPixieServicesCallback)
  {
    this.listener = paramPixieServicesCallback;
  }
  
  public boolean shouldUsePixieSystem(String paramString1, String paramString2, boolean paramBoolean)
  {
    int i = 1;
    calculateUserHashCode(paramString1, paramString2);
    loadActivationLists(false);
    if (!isPixieRestrictedForPhone(paramString1)) {
      if (!paramBoolean) {}
    }
    for (;;)
    {
      if (i != 0) {
        i = loadEdgeProxyList(false);
      }
      return i;
      if ((isPixieEnabledForPhone_v2(paramString1)) || (isPixieEnabledForNetworkOperator_v2(paramString2)))
      {
        this.unblockerVersion = 2;
        ViberApplication.log(3, TAG, "Pixie: phone number found in v2 list");
      }
      else if ((isPixieEnabledForPhone(paramString1)) || (isPixieEnabledForNetworkOperator(paramString2)))
      {
        this.unblockerVersion = i;
        ViberApplication.log(3, TAG, "Pixie: phone number found in v1 list");
      }
      else
      {
        i = 0;
      }
    }
  }
  
  public boolean shouldUsePixieSystemAfterNormalConnectFailed(String paramString1, String paramString2)
  {
    calculateUserHashCode(paramString1, paramString2);
    loadActivationLists(false);
    if (isPixieRestrictedForPhone(paramString1)) {}
    String str2;
    do
    {
      String str1;
      do
      {
        do
        {
          return false;
        } while (!canConnectExternally());
        str1 = loadS3Url(VIBER_DOWN_URL);
      } while ((str1 == null) || (str1.length() == 0) || (str1.toLowerCase().charAt(0) == 'y'));
      str2 = getExternalIP();
    } while ((str2 == null) || (!isPixieEnabledForIP(str2)));
    return loadEdgeProxyList(false);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.pixie.PixieServices
 * JD-Core Version:    0.7.0.1
 */