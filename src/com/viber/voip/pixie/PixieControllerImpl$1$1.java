package com.viber.voip.pixie;

import com.viber.jni.PhoneControllerWrapper;
import com.viber.voip.ViberApplication;
import java.io.IOException;
import java.net.ServerSocket;

class PixieControllerImpl$1$1
  implements Runnable
{
  PixieControllerImpl$1$1(PixieControllerImpl.1 param1) {}
  
  public void run()
  {
    ViberApplication.log(3, PixieControllerImpl.access$000(), "Pixie: Phone controller is ready, calling native start pixie, setting traffic redirect.");
    PixieControllerImpl.access$200(this.this$1.this$0).removeReadyListener(PixieControllerImpl.access$100(this.this$1.this$0));
    PixieControllerImpl.access$302(this.this$1.this$0, Config.DEFAULT_LOCAL_PROXY_PORT);
    try
    {
      ServerSocket localServerSocket = new ServerSocket(0);
      localServerSocket.setReuseAddress(true);
      PixieControllerImpl.access$302(this.this$1.this$0, localServerSocket.getLocalPort());
      localServerSocket.close();
      ViberApplication.log(3, PixieControllerImpl.access$000(), "Pixie: will run server on port: " + PixieControllerImpl.access$300(this.this$1.this$0));
      str = PixieControllerImpl.access$400(this.this$1.this$0).getEdgeProxyBundle();
      if (str == null)
      {
        ViberApplication.log(6, PixieControllerImpl.access$000(), "Pixie: list is empty!");
        return;
      }
    }
    catch (IOException localIOException)
    {
      String str;
      for (;;)
      {
        ViberApplication.log(6, PixieControllerImpl.access$000(), "Pixie: could not listen(0) " + localIOException.getCause());
      }
      PixieControllerImpl.access$502(this.this$1.this$0, true);
      PixieControllerImpl.access$200(this.this$1.this$0).startPixie("127.0.0.1", String.valueOf(PixieControllerImpl.access$300(this.this$1.this$0)), str, PixieControllerImpl.access$400(this.this$1.this$0).getUserAgentString(), PixieControllerImpl.access$400(this.this$1.this$0).getObfuscationPolicy());
      PixieControllerImpl.setupClientToUseLocalProxy(PixieControllerImpl.access$300(this.this$1.this$0));
      PixieControllerImpl.access$600(this.this$1.this$0);
      ViberApplication.log(3, PixieControllerImpl.access$000(), "Pixie: waiting for phone controler to be fully initialized");
      PixieControllerImpl.access$200(this.this$1.this$0).addInitializedListener(PixieControllerImpl.access$700(this.this$1.this$0));
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.pixie.PixieControllerImpl.1.1
 * JD-Core Version:    0.7.0.1
 */