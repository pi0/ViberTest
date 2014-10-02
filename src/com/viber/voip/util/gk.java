package com.viber.voip.util;

import android.content.res.Resources;
import android.text.TextUtils;
import com.viber.voip.ViberApplication;
import com.viber.voip.messages.conversation.ConversationLoaderEntity;
import com.viber.voip.messages.conversation.ConversationLoaderPublicGroupEntity;
import com.viber.voip.messages.conversation.an;
import com.viber.voip.messages.conversation.ar;
import com.viber.voip.messages.conversation.h;
import com.viber.voip.messages.conversation.publicgroup.aq;
import com.viber.voip.messages.conversation.ui.ConversationData;
import com.viber.voip.messages.orm.entity.impl.MessageCallEntityImpl;
import com.viber.voip.user.UserData;

public class gk
{
  public static String a(ConversationLoaderEntity paramConversationLoaderEntity)
  {
    int i = 1;
    if ((paramConversationLoaderEntity instanceof ConversationLoaderPublicGroupEntity)) {
      if (((ConversationLoaderPublicGroupEntity)paramConversationLoaderEntity).B() == i) {}
    }
    for (;;)
    {
      return a(false, paramConversationLoaderEntity.s(), paramConversationLoaderEntity.l(), paramConversationLoaderEntity.k(), paramConversationLoaderEntity.z(), i);
      int j = 0;
      continue;
      j = 0;
    }
  }
  
  public static String a(an paraman)
  {
    return a(paraman.ac(), paraman.aa(), paraman.z(), paraman.y(), paraman.l(), paraman.P());
  }
  
  public static String a(ar paramar)
  {
    return a(paramar, 1);
  }
  
  public static String a(ar paramar, int paramInt)
  {
    boolean bool1 = paramar.o();
    boolean bool2 = paramar.m();
    String str1 = paramar.e();
    String str2 = paramar.d();
    String str3 = paramar.h();
    if (paramInt == 3) {}
    for (boolean bool3 = true;; bool3 = false) {
      return a(bool1, bool2, str1, str2, str3, bool3);
    }
  }
  
  public static String a(h paramh)
  {
    boolean bool;
    if ((paramh instanceof aq)) {
      if (((aq)paramh).u() == 3) {
        bool = true;
      }
    }
    for (;;)
    {
      return a(false, paramh.l(), paramh.i(), paramh.h(), paramh.q(), bool);
      bool = false;
      continue;
      bool = false;
    }
  }
  
  public static String a(ConversationData paramConversationData)
  {
    return a(paramConversationData.a(), paramConversationData.j, paramConversationData.i, paramConversationData.h, paramConversationData.k);
  }
  
  public static String a(MessageCallEntityImpl paramMessageCallEntityImpl)
  {
    return a(paramMessageCallEntityImpl.isTypeViberOut(), paramMessageCallEntityImpl.isMissed(), paramMessageCallEntityImpl.isAnswerredOnAnotherDevice(), paramMessageCallEntityImpl.isTransferredIn(), paramMessageCallEntityImpl.isOutgoing(), 1);
  }
  
  public static String a(String paramString, int paramInt)
  {
    int i;
    if ("vo".equals(paramString)) {
      i = 2131689472;
    }
    while (i > 0)
    {
      return ViberApplication.getInstance().getResources().getQuantityString(i, paramInt);
      if ("missed_call".equals(paramString)) {
        i = 2131689475;
      } else if ("answ_another_dev".equals(paramString)) {
        i = 2131689477;
      } else if ("transferred".equals(paramString)) {
        i = 2131689476;
      } else if ("outgoing_call".equals(paramString)) {
        i = 2131689474;
      } else if ("incoming_call".equals(paramString)) {
        i = 2131689473;
      } else {
        i = 0;
      }
    }
    return "";
  }
  
  private static String a(boolean paramBoolean, String paramString1, String paramString2, String paramString3, String paramString4)
  {
    Resources localResources = ViberApplication.getInstance().getResources();
    if (paramBoolean)
    {
      if (TextUtils.isEmpty(paramString1)) {
        paramString1 = localResources.getString(2131494051);
      }
      return paramString1;
    }
    return a(false, false, paramString2, paramString3, paramString4, false);
  }
  
  private static String a(boolean paramBoolean1, boolean paramBoolean2, String paramString1, String paramString2, String paramString3, boolean paramBoolean3)
  {
    if (paramBoolean1) {
      paramString1 = UserData.getName();
    }
    while ((paramBoolean2) && (!gj.c(paramString1))) {
      return paramString1;
    }
    if ((!paramBoolean2) && (!gj.c(paramString2))) {
      return paramString2;
    }
    if ((!paramBoolean3) && (!gj.c(paramString3))) {
      return paramString3;
    }
    return ViberApplication.getInstance().getResources().getString(2131493744);
  }
  
  public static String a(boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3, boolean paramBoolean4, boolean paramBoolean5, int paramInt)
  {
    int i;
    if (paramBoolean1) {
      i = 2131689472;
    }
    for (;;)
    {
      return ViberApplication.getInstance().getResources().getQuantityString(i, paramInt);
      if (paramBoolean2) {
        i = 2131689475;
      } else if (paramBoolean3) {
        i = 2131689477;
      } else if (paramBoolean4) {
        i = 2131689476;
      } else if (paramBoolean5) {
        i = 2131689474;
      } else {
        i = 2131689473;
      }
    }
  }
  
  public static String b(h paramh)
  {
    return a(paramh.l(), paramh.c(), paramh.i(), paramh.h(), paramh.q());
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.util.gk
 * JD-Core Version:    0.7.0.1
 */