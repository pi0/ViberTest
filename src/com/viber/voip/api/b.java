package com.viber.voip.api;

import android.content.Intent;
import android.text.TextUtils;
import com.viber.voip.messages.controller.c.as;
import com.viber.voip.messages.controller.c.e;
import com.viber.voip.messages.controller.de;
import com.viber.voip.messages.orm.entity.impl.MessageEntityImpl;
import java.util.Set;

class b
  implements de
{
  b(ViberApi paramViberApi, long paramLong, boolean paramBoolean, String paramString1, String paramString2) {}
  
  public void a(long paramLong1, long paramLong2, long paramLong3, boolean paramBoolean) {}
  
  public void a(long paramLong1, long paramLong2, boolean paramBoolean)
  {
    String str1;
    if (this.a == paramLong2)
    {
      MessageEntityImpl localMessageEntityImpl = as.a().k(paramLong2);
      if (localMessageEntityImpl != null)
      {
        str1 = localMessageEntityImpl.getMediaUri();
        if (str1 != null) {
          if (!this.b) {
            break label118;
          }
        }
      }
    }
    label118:
    for (String str2 = "com.viber.voip.action.API_PHOTO_RECEIVED";; str2 = "com.viber.voip.action.API_VIDEO_RECEIVED")
    {
      Intent localIntent = new Intent(str2);
      localIntent.putExtra("phone_number", this.c);
      localIntent.putExtra("uri", str1);
      if (!TextUtils.isEmpty(this.d)) {
        localIntent.putExtra("description", this.d);
      }
      ViberApi.a(this.e, localIntent);
      e.a().b(this);
      return;
    }
  }
  
  public void a(String paramString, boolean paramBoolean) {}
  
  public void a(Set<Long> paramSet, boolean paramBoolean) {}
  
  public void b(Set<Long> paramSet, boolean paramBoolean) {}
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.api.b
 * JD-Core Version:    0.7.0.1
 */