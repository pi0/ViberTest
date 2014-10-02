package com.viber.voip.e.a.a;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.support.v4.app.NotificationCompat.Builder;
import android.text.TextUtils;
import com.viber.voip.ViberApplication;
import com.viber.voip.WelcomeActivity;
import com.viber.voip.messages.controller.c.as;
import com.viber.voip.messages.extras.a.e;
import com.viber.voip.messages.extras.image.h;
import com.viber.voip.messages.orm.entity.impl.ConversationEntityImpl;
import com.viber.voip.messages.orm.entity.impl.MessageEntityImpl;
import com.viber.voip.messages.orm.entity.impl.ParticipantInfoEntityImpl;
import com.viber.voip.util.b.w;
import com.viber.voip.util.l;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

abstract class g
  extends b
  implements com.viber.voip.e.a.a
{
  protected l d = ViberApplication.getInstance().getBiDiAwareFormatter();
  private e e = new e();
  
  protected g(Context paramContext)
  {
    super(paramContext);
  }
  
  private void a(String paramString)
  {
    ViberApplication.log(3, "ViberNotificationFactory", paramString);
  }
  
  protected PendingIntent a(Intent paramIntent, int paramInt)
  {
    return PendingIntent.getActivity(this.a, paramInt, paramIntent, 134217728);
  }
  
  protected Bitmap a(int paramInt, Uri... paramVarArgs)
  {
    return h.a(0, this.a, paramInt, this.c, this.b, paramVarArgs);
  }
  
  protected Bitmap a(long paramLong, ParticipantInfoEntityImpl paramParticipantInfoEntityImpl)
  {
    return com.viber.voip.messages.a.b.d().a(this.a, 0, this.c, this.b, paramLong, paramParticipantInfoEntityImpl);
  }
  
  protected Bitmap a(Uri paramUri, int paramInt)
  {
    a("getBitmapFromUri photoUri = " + paramUri);
    Bitmap localBitmap;
    if ((paramUri == null) && (paramInt <= 0)) {
      localBitmap = null;
    }
    do
    {
      return localBitmap;
      if (paramUri == null) {
        BitmapFactory.decodeResource(this.a.getResources(), paramInt);
      }
      localBitmap = w.a(this.a, paramUri, false);
    } while (localBitmap != null);
    return BitmapFactory.decodeResource(this.a.getResources(), paramInt);
  }
  
  public NotificationCompat.Builder a()
  {
    a("createNewVersionNotification");
    String str1 = this.a.getString(2131493611);
    String str2 = this.a.getString(2131493612);
    Intent localIntent = new Intent("android.intent.action.VIEW");
    localIntent.setFlags(268435456);
    localIntent.setData(Uri.parse("market://details?id=com.viber.voip"));
    PendingIntent localPendingIntent = PendingIntent.getActivity(this.a, 0, localIntent, 268435456);
    return a(str2, str1, 2130838327, str1, System.currentTimeMillis(), localPendingIntent).setAutoCancel(true);
  }
  
  public NotificationCompat.Builder a(CharSequence paramCharSequence, int paramInt)
  {
    a("createServiceStatusNotification contentText = " + paramCharSequence);
    Intent localIntent = new Intent(this.a, WelcomeActivity.class);
    PendingIntent localPendingIntent = PendingIntent.getActivity(this.a, 0, localIntent, 0);
    return a(paramCharSequence, this.a.getText(2131494822), paramInt, this.a.getText(2131494822), System.currentTimeMillis(), localPendingIntent).setLights(0, 0, 0);
  }
  
  public NotificationCompat.Builder a(CharSequence paramCharSequence1, CharSequence paramCharSequence2, int paramInt, Intent paramIntent)
  {
    a("createSmsNotification contentText = " + paramCharSequence1 + " contentTitle = " + paramCharSequence2);
    CharSequence localCharSequence = this.a.getText(2131494822);
    PendingIntent localPendingIntent = PendingIntent.getActivity(this.a, 0, paramIntent, 0);
    return a(paramCharSequence1, paramCharSequence2, paramInt, localCharSequence, System.currentTimeMillis(), localPendingIntent);
  }
  
  public NotificationCompat.Builder a(CharSequence paramCharSequence1, CharSequence paramCharSequence2, int paramInt, boolean paramBoolean)
  {
    a("createSmsNotification contentText = " + paramCharSequence1 + " contentTitle = " + paramCharSequence2);
    return b(paramCharSequence1, paramCharSequence2, paramInt, paramBoolean);
  }
  
  protected String a(int paramInt1, int paramInt2)
  {
    String str = this.e.a(com.viber.voip.messages.extras.map.d.a(paramInt1 / 10), com.viber.voip.messages.extras.map.d.a(paramInt2 / 10)).b;
    if (str != null) {
      return str;
    }
    return "";
  }
  
  protected CharSequence[] a(long paramLong, CharSequence paramCharSequence1, CharSequence paramCharSequence2, String paramString)
  {
    List localList = as.a().o(paramLong);
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = localList.iterator();
    MessageEntityImpl localMessageEntityImpl;
    do
    {
      do
      {
        if (!localIterator.hasNext()) {
          break;
        }
        localMessageEntityImpl = (MessageEntityImpl)localIterator.next();
      } while (!"group_rename".equals(localMessageEntityImpl.getBody().split("/")[0]));
      localArrayList.add(localMessageEntityImpl);
    } while (!localMessageEntityImpl.isPublicGroup());
    for (int i = 1;; i = 0)
    {
      int j = localArrayList.size();
      if ((j > 1) && (i == 0))
      {
        paramCharSequence1 = ((MessageEntityImpl)localArrayList.get(0)).getBody().split("/")[2];
        Resources localResources = this.a.getResources();
        Object[] arrayOfObject = new Object[3];
        arrayOfObject[0] = paramCharSequence1;
        arrayOfObject[1] = ((MessageEntityImpl)localArrayList.get(j - 1)).getBody().split("/")[3];
        arrayOfObject[2] = paramString;
        paramCharSequence2 = localResources.getString(2131493575, arrayOfObject);
      }
      return new CharSequence[] { paramCharSequence1, paramCharSequence2 };
    }
  }
  
  protected Bitmap b(Uri paramUri, int paramInt)
  {
    return h.b(this.a, paramUri, paramInt);
  }
  
  protected d b()
  {
    LinkedList localLinkedList = new LinkedList();
    as localas = as.a();
    List localList = localas.l();
    int i;
    StringBuilder localStringBuilder1;
    int j;
    label42:
    ConversationEntityImpl localConversationEntityImpl;
    ParticipantInfoEntityImpl localParticipantInfoEntityImpl;
    boolean bool1;
    boolean bool2;
    label129:
    boolean bool3;
    if (localList.size() > 4)
    {
      i = 4;
      localStringBuilder1 = new StringBuilder();
      j = 0;
      if (j >= i) {
        break label385;
      }
      localConversationEntityImpl = localas.c(((MessageEntityImpl)localList.get(j)).getConversationId());
      localParticipantInfoEntityImpl = localas.j(((MessageEntityImpl)localList.get(j)).getParticipantId());
      bool1 = localConversationEntityImpl.isConversationGroup();
      if ((localConversationEntityImpl != null) && (localParticipantInfoEntityImpl != null)) {
        break label201;
      }
      StringBuilder localStringBuilder2 = new StringBuilder().append("getAggregatedConversationsContentData: messageConversation is null - ");
      if (localConversationEntityImpl != null) {
        break label189;
      }
      bool2 = true;
      StringBuilder localStringBuilder3 = localStringBuilder2.append(bool2).append("pInfo is null - ");
      if (localParticipantInfoEntityImpl != null) {
        break label195;
      }
      bool3 = true;
      label152:
      a(bool3 + ". Skip");
    }
    label189:
    label195:
    label201:
    long l1;
    label218:
    long l2;
    do
    {
      j++;
      break label42;
      i = localList.size();
      break;
      bool2 = false;
      break label129;
      bool3 = false;
      break label152;
      if (!bool1) {
        break label370;
      }
      if (localConversationEntityImpl.getUnreadMessagesCount() != 1) {
        break label350;
      }
      l1 = 0L;
      l2 = ((MessageEntityImpl)localList.get(j)).getDate();
    } while (((!localConversationEntityImpl.isSmartNotificationOn()) || (l1 != 0L) || (l2 - l1 < 300000L) || (l1 > l2)) && (localConversationEntityImpl.isSmartNotificationOn()));
    String str2;
    if (TextUtils.isEmpty(localConversationEntityImpl.getGroupName()))
    {
      str2 = this.a.getResources().getString(2131494051);
      label303:
      localStringBuilder1.append(str2);
    }
    for (;;)
    {
      localStringBuilder1.append(", ");
      if ((j != 0) && (localParticipantInfoEntityImpl.getCommonContactImage(bool1) == null)) {
        break;
      }
      localLinkedList.add(localParticipantInfoEntityImpl.getCommonContactImage());
      break;
      label350:
      l1 = localConversationEntityImpl.getSmartEventDate();
      break label218;
      str2 = localConversationEntityImpl.getGroupName();
      break label303;
      label370:
      localStringBuilder1.append(localParticipantInfoEntityImpl.getCommonContactName(false));
    }
    label385:
    Context localContext = this.a;
    Object[] arrayOfObject = new Object[1];
    if (localStringBuilder1.length() > 0) {}
    for (String str1 = localStringBuilder1.substring(0, -2 + localStringBuilder1.length());; str1 = "")
    {
      arrayOfObject[0] = str1;
      return new d(localLinkedList, localContext.getString(2131493571, arrayOfObject));
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.e.a.a.g
 * JD-Core Version:    0.7.0.1
 */