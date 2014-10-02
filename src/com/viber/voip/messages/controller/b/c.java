package com.viber.voip.messages.controller.b;

import android.content.Context;
import com.viber.voip.ViberApplication;
import com.viber.voip.messages.h;
import com.viber.voip.messages.orm.entity.impl.ConversationEntityImpl;
import com.viber.voip.messages.orm.entity.impl.MessageEntityImpl;
import com.viber.voip.util.hd;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class c
{
  public MessageEntityImpl a(long paramLong1, int paramInt1, long paramLong2, String paramString1, int paramInt2, long paramLong3, String paramString2)
  {
    return a(paramLong1, paramInt1, paramLong2, paramString1, paramInt2, paramLong3, paramString2, 0);
  }
  
  public MessageEntityImpl a(long paramLong1, int paramInt1, long paramLong2, String paramString1, int paramInt2, long paramLong3, String paramString2, int paramInt3)
  {
    int i = 1;
    int j;
    MessageEntityImpl localMessageEntityImpl;
    if ((paramInt2 & 0x10) != 0)
    {
      j = i;
      localMessageEntityImpl = new MessageEntityImpl();
      localMessageEntityImpl.setGroupId(paramLong1);
      localMessageEntityImpl.setConversationType(paramInt1);
      localMessageEntityImpl.setDate(paramLong2);
      if (j == 0) {
        break label130;
      }
      localMessageEntityImpl.setType(i);
      localMessageEntityImpl.setStatus(2);
      localMessageEntityImpl.setUnread(0);
    }
    for (;;)
    {
      localMessageEntityImpl.setRecipientNumber(paramString1);
      localMessageEntityImpl.setMessageToken(paramLong3);
      localMessageEntityImpl.setLat(0);
      localMessageEntityImpl.setLng(0);
      localMessageEntityImpl.setFlag(paramInt2);
      localMessageEntityImpl.setBody(paramString2);
      localMessageEntityImpl.setMessageGlobalId(paramInt3);
      localMessageEntityImpl.setMimeType("notif");
      return localMessageEntityImpl;
      j = 0;
      break;
      label130:
      localMessageEntityImpl.setType(0);
      if ((paramInt2 & 0x40) != 0) {
        i = 0;
      }
      localMessageEntityImpl.setUnread(i);
    }
  }
  
  public MessageEntityImpl a(Context paramContext, int paramInt1, ConversationEntityImpl paramConversationEntityImpl, String paramString1, int paramInt2, long paramLong1, long paramLong2, String paramString2, String paramString3, int paramInt3)
  {
    if ((paramConversationEntityImpl != null) && (paramInt1 > 0))
    {
      int i = paramInt1 & 0x7;
      int j;
      ArrayList localArrayList;
      StringBuilder localStringBuilder;
      Iterator localIterator;
      if ((i & i - 1) != 0)
      {
        j = 1;
        localArrayList = new ArrayList();
        if ((i & 0x4) != 0)
        {
          if (j == 0) {
            break label220;
          }
          localArrayList.add(paramContext.getString(2131494601));
        }
        if ((i & 0x2) != 0)
        {
          if (j == 0) {
            break label248;
          }
          localArrayList.add(paramContext.getString(2131494602));
        }
        if ((i & 0x1) != 0)
        {
          if (j == 0) {
            break label276;
          }
          localArrayList.add(paramContext.getString(2131494603));
        }
        if (j == 0) {
          break label391;
        }
        localStringBuilder = new StringBuilder();
        localIterator = localArrayList.iterator();
      }
      for (;;)
      {
        if (!localIterator.hasNext()) {
          break label356;
        }
        String str1 = (String)localIterator.next();
        localStringBuilder.append(str1);
        if (localArrayList.indexOf(str1) == -2 + localArrayList.size())
        {
          localStringBuilder.append(' ').append(paramContext.getString(2131494600)).append(' ');
          continue;
          j = 0;
          break;
          label220:
          return a(paramConversationEntityImpl.getGroupId(), paramConversationEntityImpl.getConversationType(), paramLong1, paramString1, paramInt2, paramLong2, h.c(paramString1), paramInt3);
          label248:
          return a(paramConversationEntityImpl.getGroupId(), paramConversationEntityImpl.getConversationType(), paramLong1, paramString1, paramInt2, paramLong2, h.b(paramString1), paramInt3);
          label276:
          String str2 = hd.a((ViberApplication)paramContext.getApplicationContext(), paramString1, paramString1);
          return a(paramConversationEntityImpl.getGroupId(), paramConversationEntityImpl.getConversationType(), paramLong1, paramString1, paramInt2, paramLong2, h.a(str2, paramString3, paramString2), paramInt3);
        }
        if (localArrayList.indexOf(str1) != -1 + localArrayList.size()) {
          localStringBuilder.append(", ");
        }
      }
      label356:
      return a(paramConversationEntityImpl.getGroupId(), paramConversationEntityImpl.getConversationType(), paramLong1, paramString1, paramInt2, paramLong2, h.b(paramString1, localStringBuilder.toString(), paramString3), paramInt3);
    }
    label391:
    return null;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.controller.b.c
 * JD-Core Version:    0.7.0.1
 */