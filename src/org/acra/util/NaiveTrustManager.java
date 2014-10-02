package org.acra.util;

import java.security.cert.X509Certificate;
import javax.net.ssl.X509TrustManager;

class NaiveTrustManager
  implements X509TrustManager
{
  public void checkClientTrusted(X509Certificate[] paramArrayOfX509Certificate, String paramString) {}
  
  public void checkServerTrusted(X509Certificate[] paramArrayOfX509Certificate, String paramString) {}
  
  public X509Certificate[] getAcceptedIssuers()
  {
    return new X509Certificate[0];
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     org.acra.util.NaiveTrustManager
 * JD-Core Version:    0.7.0.1
 */