package com.viber.jni.lastonline;

import com.viber.jni.OnlineContactInfo;
import com.viber.jni.controller.ControllerListener;
import com.viber.voip.ViberApplication;
import java.util.Arrays;

public class LastOnlineListener
  extends ControllerListener<LastOnlineDelegate>
  implements LastOnlineDelegate
{
  private static final String TAG = "LastOnlineListener";
  
  private void logout(String paramString)
  {
    ViberApplication.log(4, "LastOnlineListener", paramString);
  }
  
  public void onLastOnline(OnlineContactInfo[] paramArrayOfOnlineContactInfo, int paramInt)
  {
    logout("onLastOnline onlineContactInfo:" + Arrays.toString(paramArrayOfOnlineContactInfo) + " seq:" + paramInt);
    ViberApplication.getInstance().setCachedOnlineContactInfo(paramArrayOfOnlineContactInfo);
    notifyListeners(new LastOnlineListener.1(this, paramArrayOfOnlineContactInfo, paramInt));
  }
  
  public boolean onLastOnlineLocal(OnlineContactInfo[] paramArrayOfOnlineContactInfo, int paramInt)
  {
    logout("onLastOnlineLocal onlineContactInfo:" + Arrays.toString(paramArrayOfOnlineContactInfo) + " seq:" + paramInt);
    notifyListeners(new LastOnlineListener.2(this, paramArrayOfOnlineContactInfo, paramInt));
    return true;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.jni.lastonline.LastOnlineListener
 * JD-Core Version:    0.7.0.1
 */