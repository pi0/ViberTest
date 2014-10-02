package com.viber.voip.messages.controller.a;

import android.os.Handler;
import com.viber.jni.LocationInfo;
import com.viber.jni.connection.ConnectionDelegate;
import com.viber.jni.ptt.PttControllerDelegate.Receiver;
import com.viber.voip.messages.d;
import com.viber.voip.messages.e;
import com.viber.voip.messages.f;
import com.viber.voip.messages.j;
import com.viber.voip.messages.orm.entity.impl.MessageEntityImpl;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

public class aa
  extends ac
  implements ConnectionDelegate, PttControllerDelegate.Receiver
{
  private static final String c = aa.class.getSimpleName();
  private PttControllerDelegate.Receiver d;
  private Map<String, e> e = new HashMap();
  private Map<Long, e> f = new HashMap();
  private boolean g;
  private Runnable h = new ab(this);
  
  public aa(Handler paramHandler1, Handler paramHandler2, PttControllerDelegate.Receiver paramReceiver, a... paramVarArgs)
  {
    super(paramHandler1, paramHandler2, paramVarArgs);
    this.d = paramReceiver;
  }
  
  private e a(Long paramLong)
  {
    return (e)this.f.get(paramLong);
  }
  
  private e a(Long paramLong, e parame)
  {
    this.f.put(paramLong, parame);
    return parame;
  }
  
  private e a(String paramString)
  {
    return (e)this.e.get(paramString);
  }
  
  private e a(String paramString, e parame)
  {
    this.e.put(paramString, parame);
    return parame;
  }
  
  private boolean a(long paramLong1, String paramString1, String paramString2, String paramString3, long paramLong2, int paramInt1, long paramLong3, int paramInt2, String paramString4, LocationInfo paramLocationInfo, int paramInt3)
  {
    return a(paramLong1, paramString1, paramString2, paramString3, false, paramLong2, paramInt1, paramLong3, paramInt2, paramString4, paramLocationInfo, null, 0, null, null, 0, paramInt3);
  }
  
  private boolean a(long paramLong1, String paramString1, String paramString2, String paramString3, boolean paramBoolean, long paramLong2, int paramInt1, long paramLong3, int paramInt2, String paramString4, LocationInfo paramLocationInfo, byte[] paramArrayOfByte, int paramInt3, String paramString5, String paramString6, int paramInt4, int paramInt5)
  {
    boolean bool;
    if (paramLong1 > 0L) {
      bool = true;
    }
    for (;;)
    {
      e locale3;
      try
      {
        int i = a(bool, paramInt5);
        com.viber.voip.messages.controller.b.a locala;
        if (paramLong1 > 0L)
        {
          locala = new com.viber.voip.messages.controller.b.a(paramLong1, paramString1, paramString2, paramLong2, paramLong3, paramInt2, paramInt1, paramLocationInfo, i);
          if (paramLong1 > 0L)
          {
            locale1 = a(Long.valueOf(paramLong1));
            if (locale1 != null) {
              break label284;
            }
            if (paramLong1 <= 0L) {
              continue;
            }
            locale3 = a(Long.valueOf(paramLong1), locala.a());
            break label291;
            if (!paramBoolean) {
              continue;
            }
            localObject2 = j.a(paramLong1, paramLong2, paramString2, paramArrayOfByte, paramLong3, paramInt2, paramInt1, paramLocationInfo, paramInt3, paramString5, paramString6, paramString3, paramString1, paramString4, paramInt4, paramInt5, i);
            locale2.a((MessageEntityImpl)localObject2);
            locale2.a(new f(paramString2, paramString3));
            a().removeCallbacks(this.h);
            a().postDelayed(this.h, 5000L);
            return false;
            bool = false;
          }
        }
        else
        {
          locala = new com.viber.voip.messages.controller.b.a(paramString2, paramString3, paramLong2, paramLong3, paramInt2, paramInt1, paramLocationInfo);
          continue;
        }
        e locale1 = a(paramString2);
        continue;
        locale3 = a(paramString2, locala.a());
        break label291;
        MessageEntityImpl localMessageEntityImpl = locala.a("text", paramString4, paramInt5);
        Object localObject2 = localMessageEntityImpl;
        continue;
        locale2 = locale1;
      }
      finally {}
      label284:
      continue;
      label291:
      e locale2 = locale3;
    }
  }
  
  private boolean a(String paramString1, String paramString2, long paramLong1, int paramInt1, long paramLong2, int paramInt2, String paramString3, LocationInfo paramLocationInfo)
  {
    return a(0L, null, paramString1, paramString2, false, paramLong1, paramInt1, paramLong2, paramInt2, paramString3, paramLocationInfo, null, 0, null, null, 0, 0);
  }
  
  private boolean a(String paramString1, String paramString2, long paramLong1, int paramInt1, long paramLong2, int paramInt2, String paramString3, LocationInfo paramLocationInfo, byte[] paramArrayOfByte, int paramInt3, String paramString4, String paramString5, int paramInt4)
  {
    return a(0L, null, paramString1, paramString2, true, paramLong1, paramInt1, paramLong2, paramInt2, paramString3, paramLocationInfo, paramArrayOfByte, paramInt3, paramString4, paramString5, paramInt4, 0);
  }
  
  public boolean onAnimatedMessageReceived(long paramLong1, String paramString1, byte[] paramArrayOfByte, long paramLong2, int paramInt1, int paramInt2, LocationInfo paramLocationInfo, String paramString2, String paramString3)
  {
    if (this.g) {
      a(paramString1, paramString3, paramLong1, paramInt2, paramLong2, paramInt1, "", paramLocationInfo, paramArrayOfByte, 6, paramString2, com.viber.voip.k.a.a(paramString2), 0);
    }
    for (;;)
    {
      return false;
      super.onAnimatedMessageReceived(paramLong1, paramString1, paramArrayOfByte, paramLong2, paramInt1, paramInt2, paramLocationInfo, paramString2, paramString3);
    }
  }
  
  public boolean onAnimatedMessageReceivedFromGroup(long paramLong1, String paramString1, long paramLong2, String paramString2, byte[] paramArrayOfByte, long paramLong3, int paramInt1, int paramInt2, LocationInfo paramLocationInfo, String paramString3, String paramString4, int paramInt3)
  {
    if (this.g) {
      a(paramLong1, paramString1, paramString2, paramString4, true, paramLong2, paramInt2, paramLong3, paramInt1, "", paramLocationInfo, paramArrayOfByte, 6, paramString3, com.viber.voip.k.a.a(paramString3), 0, paramInt3);
    }
    for (;;)
    {
      return false;
      super.onAnimatedMessageReceivedFromGroup(paramLong1, paramString1, paramLong2, paramString2, paramArrayOfByte, paramLong3, paramInt1, paramInt2, paramLocationInfo, paramString3, paramString4, paramInt3);
    }
  }
  
  public void onConnect()
  {
    this.g = true;
    a().removeCallbacks(this.h);
    a().postDelayed(this.h, 10000L);
  }
  
  public void onConnectionStateChange(int paramInt) {}
  
  public void onGetRecentMessagesEnded(int paramInt)
  {
    try
    {
      a().removeCallbacks(this.h);
      HashSet localHashSet = new HashSet();
      localHashSet.addAll(this.e.values());
      this.e.clear();
      localHashSet.addAll(this.f.values());
      this.f.clear();
      this.g = false;
      super.a(localHashSet);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public boolean onMediaReceived(long paramLong1, String paramString1, byte[] paramArrayOfByte, long paramLong2, int paramInt1, int paramInt2, LocationInfo paramLocationInfo, int paramInt3, String paramString2, String paramString3, String paramString4, String paramString5)
  {
    if (this.g) {
      a(paramString1, paramString4, paramLong1, paramInt2, paramLong2, paramInt1, paramString5, paramLocationInfo, paramArrayOfByte, paramInt3, paramString2, paramString3, 0);
    }
    for (;;)
    {
      return false;
      super.onMediaReceived(paramLong1, paramString1, paramArrayOfByte, paramLong2, paramInt1, paramInt2, paramLocationInfo, paramInt3, paramString2, paramString3, paramString4, paramString5);
    }
  }
  
  public boolean onMediaReceivedFromGroup(long paramLong1, String paramString1, long paramLong2, String paramString2, byte[] paramArrayOfByte, long paramLong3, int paramInt1, int paramInt2, LocationInfo paramLocationInfo, int paramInt3, String paramString3, String paramString4, String paramString5, String paramString6, int paramInt4)
  {
    if (this.g) {
      a(paramLong1, paramString1, paramString2, paramString5, true, paramLong2, paramInt2, paramLong3, paramInt1, paramString6, paramLocationInfo, paramArrayOfByte, paramInt3, paramString3, paramString4, 0, paramInt4);
    }
    for (;;)
    {
      return false;
      super.onMediaReceivedFromGroup(paramLong1, paramString1, paramLong2, paramString2, paramArrayOfByte, paramLong3, paramInt1, paramInt2, paramLocationInfo, paramInt3, paramString3, paramString4, paramString5, paramString6, paramInt4);
    }
  }
  
  public boolean onPttReceived(long paramLong1, String paramString1, long paramLong2, int paramInt1, int paramInt2, LocationInfo paramLocationInfo, String paramString2, int paramInt3, String paramString3)
  {
    if (this.g) {
      a(paramString1, paramString3, paramLong1, paramInt2, paramLong2, paramInt1, "", paramLocationInfo, null, 2, null, paramString2, 0);
    }
    for (;;)
    {
      return false;
      if (this.d != null) {
        this.d.onPttReceived(paramLong1, paramString1, paramLong2, paramInt1, paramInt2, paramLocationInfo, paramString2, paramInt3, paramString3);
      }
    }
  }
  
  public boolean onPttReceivedFromGroup(long paramLong1, String paramString1, long paramLong2, String paramString2, long paramLong3, int paramInt1, int paramInt2, LocationInfo paramLocationInfo, String paramString3, int paramInt3, String paramString4, int paramInt4)
  {
    if (this.g) {
      a(paramLong1, paramString1, paramString2, paramString4, true, paramLong2, paramInt2, paramLong3, paramInt1, "", paramLocationInfo, null, 2, null, paramString3, 0, paramInt4);
    }
    for (;;)
    {
      return false;
      if (this.d != null) {
        this.d.onPttReceivedFromGroup(paramLong1, paramString1, paramLong2, paramString2, paramLong3, paramInt1, paramInt2, paramLocationInfo, paramString3, paramInt3, paramString4, paramInt4);
      }
    }
  }
  
  public boolean onTextReceived(long paramLong1, String paramString1, String paramString2, long paramLong2, int paramInt1, int paramInt2, LocationInfo paramLocationInfo, String paramString3)
  {
    if (this.g) {
      a(paramString1, paramString3, paramLong1, paramInt2, paramLong2, paramInt1, paramString2, paramLocationInfo);
    }
    for (;;)
    {
      return false;
      super.onTextReceived(paramLong1, paramString1, paramString2, paramLong2, paramInt1, paramInt2, paramLocationInfo, paramString3);
    }
  }
  
  public boolean onTextReceivedFromGroup(long paramLong1, String paramString1, long paramLong2, String paramString2, String paramString3, long paramLong3, int paramInt1, int paramInt2, LocationInfo paramLocationInfo, String paramString4, int paramInt3)
  {
    if (this.g) {
      a(paramLong1, paramString1, paramString2, paramString4, paramLong2, paramInt2, paramLong3, paramInt1, paramString3, paramLocationInfo, paramInt3);
    }
    for (;;)
    {
      return false;
      super.onTextReceivedFromGroup(paramLong1, paramString1, paramLong2, paramString2, paramString3, paramLong3, paramInt1, paramInt2, paramLocationInfo, paramString4, paramInt3);
    }
  }
  
  public boolean onVideoReceived(long paramLong1, String paramString1, byte[] paramArrayOfByte, long paramLong2, int paramInt1, int paramInt2, LocationInfo paramLocationInfo, int paramInt3, String paramString2, String paramString3, String paramString4, String paramString5)
  {
    if (this.g) {
      a(paramString1, paramString5, paramLong1, paramInt2, paramLong2, paramInt1, paramString4, paramLocationInfo, paramArrayOfByte, 3, paramString2, paramString3, paramInt3);
    }
    for (;;)
    {
      return false;
      super.onVideoReceived(paramLong1, paramString1, paramArrayOfByte, paramLong2, paramInt1, paramInt2, paramLocationInfo, paramInt3, paramString2, paramString3, paramString4, paramString5);
    }
  }
  
  public boolean onVideoReceivedFromGroup(long paramLong1, String paramString1, long paramLong2, String paramString2, byte[] paramArrayOfByte, long paramLong3, int paramInt1, int paramInt2, LocationInfo paramLocationInfo, int paramInt3, String paramString3, String paramString4, String paramString5, String paramString6, int paramInt4)
  {
    if (this.g) {
      a(paramLong1, paramString1, paramString2, paramString6, true, paramLong2, paramInt2, paramLong3, paramInt1, paramString5, paramLocationInfo, paramArrayOfByte, 3, paramString3, paramString4, paramInt3, paramInt4);
    }
    for (;;)
    {
      return false;
      super.onVideoReceivedFromGroup(paramLong1, paramString1, paramLong2, paramString2, paramArrayOfByte, paramLong3, paramInt1, paramInt2, paramLocationInfo, paramInt3, paramString3, paramString4, paramString5, paramString6, paramInt4);
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.controller.a.aa
 * JD-Core Version:    0.7.0.1
 */