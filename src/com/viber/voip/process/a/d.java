package com.viber.voip.process.a;

import android.content.Context;
import android.os.Bundle;
import com.viber.voip.ViberEnv;
import com.viber.voip.pixie.PixieController;
import com.viber.voip.process.b;
import com.viber.voip.process.c;

public class d
  extends c
{
  private static final String PARAM_LOCAL_PROXY_PORT = "local_proxy_port";
  private static final String PARAM_USE_LOCAL_PROXY = "use_local_proxy";
  
  public void doInTargetProcess(Bundle paramBundle, b paramb)
  {
    ViberEnv.getPixieController().addReadyListener(new e(this, paramb));
  }
  
  public void execute(Context paramContext)
  {
    execute(paramContext, d.class, null);
  }
  
  public void onReply(boolean paramBoolean, int paramInt) {}
  
  public void processResult(Bundle paramBundle)
  {
    boolean bool = paramBundle.getBoolean("use_local_proxy");
    int i = 0;
    if (bool) {
      i = paramBundle.getInt("local_proxy_port");
    }
    onReply(bool, i);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.process.a.d
 * JD-Core Version:    0.7.0.1
 */