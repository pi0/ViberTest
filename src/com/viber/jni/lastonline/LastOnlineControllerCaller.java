package com.viber.jni.lastonline;

import com.viber.jni.OnlineContactInfo;
import com.viber.jni.PhoneControllerHelper;
import com.viber.voip.ViberApplication;
import com.viber.voip.util.bg;
import com.viber.voip.util.ft;
import java.util.Arrays;

public class LastOnlineControllerCaller
  implements LastOnlineController
{
  private static final String TAG = "LastOnlineControllerCaller";
  private bg<String, Integer> lastOnlineRequest = new bg();
  private LastOnlineListener mLastOnlineListener;
  private PhoneControllerHelper mPhoneController;
  
  public LastOnlineControllerCaller(PhoneControllerHelper paramPhoneControllerHelper, LastOnlineListener paramLastOnlineListener)
  {
    this.mPhoneController = paramPhoneControllerHelper;
    this.mLastOnlineListener = paramLastOnlineListener;
  }
  
  private void log(String paramString)
  {
    ViberApplication.log(3, "LastOnlineControllerCaller", paramString);
  }
  
  public boolean handleGetLastOnline(String[] paramArrayOfString, int paramInt1, int paramInt2, long paramLong)
  {
    OnlineContactInfo[] arrayOfOnlineContactInfo = ViberApplication.getInstance().getCachedOnlineContactInfo(paramArrayOfString);
    if ((arrayOfOnlineContactInfo != null) && (arrayOfOnlineContactInfo.length > 0) && (arrayOfOnlineContactInfo.length == paramArrayOfString.length)) {
      return this.mLastOnlineListener.onLastOnlineLocal(arrayOfOnlineContactInfo, paramInt1);
    }
    if ((this.lastOnlineRequest.get(Arrays.toString(paramArrayOfString)) == null) && (ft.b(ViberApplication.getInstance())))
    {
      this.lastOnlineRequest.put(Arrays.toString(paramArrayOfString), Integer.valueOf(paramInt1));
      return this.mPhoneController.handleGetLastOnline(paramArrayOfString, paramInt1, paramInt2, paramLong);
    }
    log("handleGetLastOnline number:" + Arrays.toString(paramArrayOfString) + " - to much requests ignore!");
    return false;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.jni.lastonline.LastOnlineControllerCaller
 * JD-Core Version:    0.7.0.1
 */