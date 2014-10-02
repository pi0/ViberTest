package com.viber.voip.sound;

import com.viber.voip.ViberApplication;

public abstract class ISoundService$ModeStateListener
  implements ISoundService.ModeStateListenerIntf
{
  public static final String TAG = ModeStateListener.class.getSimpleName();
  
  public void onModeStateChangeDeferred(int paramInt1, int paramInt2, int paramInt3)
  {
    ViberApplication.log(5, TAG, "listener got defer signal for mode state from " + CommonAbstractSoundService.getModeName(paramInt2) + " to " + CommonAbstractSoundService.getModeName(paramInt3) + ", reason " + paramInt1);
    ViberApplication.log(5, TAG, "mode switch deferred for " + toString());
  }
  
  public void onModeStateChangeRejected(int paramInt1, int paramInt2, int paramInt3)
  {
    ViberApplication.log(6, TAG, "listener got reject for mode state from " + CommonAbstractSoundService.getModeName(paramInt2) + " to " + CommonAbstractSoundService.getModeName(paramInt3) + ", reason " + paramInt1);
    ViberApplication.log(6, TAG, "mode switch rejected for " + toString());
  }
  
  public String toString()
  {
    StringBuffer localStringBuffer = new StringBuffer();
    localStringBuffer.append("SoundService:: ModeStateListener creation stack\n");
    StackTraceElement[] arrayOfStackTraceElement = Thread.currentThread().getStackTrace();
    int i = arrayOfStackTraceElement.length;
    int j = 0;
    int k = 0;
    while (j < i)
    {
      StackTraceElement localStackTraceElement = arrayOfStackTraceElement[j];
      localStringBuffer.append("\t");
      if (k > 0) {
        localStringBuffer.append(String.format("%-" + Integer.toString(k) + "s", new Object[] { "" }));
      }
      localStringBuffer.append("at ").append(localStackTraceElement.getClassName()).append(".").append(localStackTraceElement.getMethodName()).append(" [").append(localStackTraceElement.getFileName()).append(":").append(localStackTraceElement.getLineNumber()).append("]\n");
      k++;
      j++;
    }
    return "";
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.sound.ISoundService.ModeStateListener
 * JD-Core Version:    0.7.0.1
 */