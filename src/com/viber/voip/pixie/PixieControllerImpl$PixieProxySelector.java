package com.viber.voip.pixie;

import com.viber.voip.ViberApplication;
import java.io.IOException;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.Proxy.Type;
import java.net.ProxySelector;
import java.net.SocketAddress;
import java.net.URI;
import java.util.LinkedList;
import java.util.List;

public class PixieControllerImpl$PixieProxySelector
  extends ProxySelector
{
  private boolean mShouldRedirect = true;
  private List<Proxy> noProxy;
  private List<Proxy> pixieProxy = new LinkedList();
  
  public PixieControllerImpl$PixieProxySelector(int paramInt)
  {
    this.pixieProxy.add(new Proxy(Proxy.Type.HTTP, new InetSocketAddress("127.0.0.1", paramInt)));
    this.noProxy = new LinkedList();
    this.noProxy.add(Proxy.NO_PROXY);
  }
  
  public void connectFailed(URI paramURI, SocketAddress paramSocketAddress, IOException paramIOException)
  {
    ViberApplication.log(6, PixieControllerImpl.access$000(), "Pixie: Unable to connect to proxy at: " + paramSocketAddress.toString() + " reason: " + paramIOException.getMessage());
  }
  
  public void redirect(boolean paramBoolean)
  {
    this.mShouldRedirect = paramBoolean;
  }
  
  public List<Proxy> select(URI paramURI)
  {
    String str = paramURI.getScheme();
    if ((this.mShouldRedirect) && (("http".equalsIgnoreCase(str)) || ("https".equalsIgnoreCase(str)))) {
      return this.pixieProxy;
    }
    ViberApplication.log(5, PixieControllerImpl.access$000(), "Pixie: returning no proxy for: " + paramURI.toString());
    return this.noProxy;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.pixie.PixieControllerImpl.PixieProxySelector
 * JD-Core Version:    0.7.0.1
 */