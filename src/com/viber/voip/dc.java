package com.viber.voip;

import android.os.Handler;
import android.os.Looper;
import android.os.Process;
import android.util.Log;
import com.viber.jni.PhoneControllerListener;
import com.viber.jni.PhoneControllerWrapper;
import com.viber.jni.dialer.DialerControllerDelegate.DialerPhoneState;
import com.viber.jni.dialer.DialerPhoneStateListener;
import com.viber.jni.ptt.PttControllerDelegate.Recorder;
import com.viber.jni.ptt.PttRecorderListener;
import com.viber.voip.util.b.w;

public class dc
{
  private static final di[] a;
  private static final Handler[] b;
  private static DialerControllerDelegate.DialerPhoneState c = new dd();
  private static PttRecorderListener d = new de();
  
  static
  {
    di[] arrayOfdi1 = new di[11];
    arrayOfdi1[0] = new di(dk.a, 10, "ThreadManager::UIHandler");
    arrayOfdi1[1] = new di(dk.b, 5, -1, 1, "ThreadManager::serviceDispatcherHandler", true, true);
    arrayOfdi1[2] = new di(dk.c, 5, 0, 10, "ThreadManager::contactsHandler", true, true);
    arrayOfdi1[3] = new di(dk.d, 10, 0, 10, "ThreadManager::messagesHandler", true, true);
    arrayOfdi1[4] = new di(dk.e, 10, 0, 10, "ThreadManager::sendHandler", true, true);
    arrayOfdi1[5] = new di(dk.f, 5, 19, 10, "ThreadManager::inCallTasksHandler", true, true);
    arrayOfdi1[6] = new di(dk.g, 5, 1, 19, "ThreadManager::idleTasksHandler", true, true);
    arrayOfdi1[7] = new di(dk.h, 1, 19, 19, "ThreadManager::lowPriorityHandler", true, true);
    arrayOfdi1[8] = new di(dk.i, 5, 1, 10, "ThreadManager::AsyncQueryWorker", true, true);
    arrayOfdi1[9] = new di(dk.j, 5, 10, 19, "ThreadManager::longTaskHandler", true, true);
    arrayOfdi1[10] = new di(dk.k, 5, 10, 19, "ThreadManager::backgroundsTaskHandler", true, true);
    a = arrayOfdi1;
    b = new Handler[a.length];
    for (di localdi : a) {
      b[localdi.a.ordinal()] = b(localdi.a);
    }
  }
  
  public static Handler a(dk paramdk)
  {
    try
    {
      Handler localHandler = b[paramdk.ordinal()];
      return localHandler;
    }
    catch (Exception localException)
    {
      ViberApplication.log("invalid handler type");
      localException.printStackTrace();
    }
    return null;
  }
  
  public static void a()
  {
    for (int i = 0; i < b.length; i++) {
      if ((b[i] != null) && (b[i].getLooper() != null) && (Looper.getMainLooper() != b[i].getLooper()))
      {
        b[i].removeCallbacksAndMessages(null);
        b[i].getLooper().quit();
        b[i] = null;
      }
    }
  }
  
  public static void a(ViberApplication paramViberApplication)
  {
    if (ViberApplication.isActivated())
    {
      b(dh.b);
      w.a(paramViberApplication.getApplicationContext()).a(true);
    }
    DialerPhoneStateListener localDialerPhoneStateListener = paramViberApplication.getPhoneController(false).getDelegatesManager().getDialerPhoneStateListener();
    DialerControllerDelegate.DialerPhoneState[] arrayOfDialerPhoneState = new DialerControllerDelegate.DialerPhoneState[1];
    arrayOfDialerPhoneState[0] = c;
    localDialerPhoneStateListener.registerDelegate(arrayOfDialerPhoneState);
    PttRecorderListener localPttRecorderListener = paramViberApplication.getPhoneController(false).getDelegatesManager().getPttRecorderListener();
    PttControllerDelegate.Recorder[] arrayOfRecorder = new PttControllerDelegate.Recorder[1];
    arrayOfRecorder[0] = d;
    localPttRecorderListener.registerDelegate(arrayOfRecorder);
    paramViberApplication.getPhoneController(false).addReadyListener(new df());
  }
  
  private static Handler b(dk paramdk)
  {
    di[] arrayOfdi = a;
    int i = arrayOfdi.length;
    int j = 0;
    di localdi;
    if (j < i)
    {
      localdi = arrayOfdi[j];
      if (localdi.a != paramdk) {}
    }
    for (;;)
    {
      int k = 0;
      if (localdi != null)
      {
        boolean bool = localdi.d;
        k = 0;
        if (bool) {
          k = 1;
        }
      }
      if (k != 0)
      {
        dj localdj = new dj(localdi);
        localdj.start();
        Looper localLooper = localdj.getLooper();
        switch (dg.a[paramdk.ordinal()])
        {
        default: 
          return new az(paramdk, localLooper);
          j++;
          break;
        case 1: 
        case 2: 
        case 3: 
        case 4: 
        case 5: 
          return new Handler(localLooper);
        case 6: 
        case 7: 
          return new ao(paramdk, localLooper).a(true);
        case 8: 
          return new az(paramdk, localLooper).a(true);
        }
      }
      return new Handler(Looper.getMainLooper());
      localdi = null;
    }
  }
  
  private static void b(dh paramdh)
  {
    Log.d("PausedHandler", "setHandlersState: " + paramdh);
    int i = 0;
    if (i < b.length)
    {
      Handler localHandler = b[i];
      int j;
      label62:
      di localdi;
      int n;
      if ((localHandler != null) && (localHandler.getLooper() != null))
      {
        if (paramdh == dh.a) {
          break label150;
        }
        j = 1;
        if ((localHandler.getLooper().getThread() instanceof dj))
        {
          localdi = ((dj)localHandler.getLooper().getThread()).a();
          if ((localdi != null) && (localdi.d))
          {
            int m = ((dj)localHandler.getLooper().getThread()).b();
            if (j == 0) {
              break label156;
            }
            n = localdi.g;
            label130:
            Process.setThreadPriority(m, n);
          }
        }
        if ((localHandler instanceof az)) {
          break label166;
        }
      }
      label262:
      for (;;)
      {
        i++;
        break;
        label150:
        j = 0;
        break label62;
        label156:
        n = localdi.f;
        break label130;
        label166:
        if ((localHandler != null) && (localHandler.getLooper() != null))
        {
          int k;
          switch (dg.b[paramdh.ordinal()])
          {
          default: 
            k = 0;
          }
          for (;;)
          {
            if (k == 0) {
              break label262;
            }
            ((az)localHandler).a();
            break;
            k = 1;
            continue;
            if (a[i].a != dk.h) {
              k = 1;
            } else {
              k = 0;
            }
          }
          ((az)localHandler).b();
        }
      }
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.dc
 * JD-Core Version:    0.7.0.1
 */