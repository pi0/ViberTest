package com.viber.voip.market.a;

import android.content.ContentResolver;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcelable;
import com.viber.voip.ViberApplication;
import com.viber.voip.i.a;
import com.viber.voip.market.MarketApi.UserPublicGroupInfo;
import com.viber.voip.market.s;
import com.viber.voip.messages.conversation.ConversationLoaderPublicGroupEntity;
import com.viber.voip.process.b;
import java.util.ArrayList;

public class k
  extends com.viber.voip.process.c
{
  private s a;
  
  public void a(s params)
  {
    this.a = params;
    execute(ViberApplication.getInstance(), k.class, null);
  }
  
  public void doInTargetProcess(Bundle paramBundle, b paramb)
  {
    ContentResolver localContentResolver = ViberApplication.getInstance().getContentResolver();
    Uri localUri = com.viber.provider.messages.b.c.a;
    String[] arrayOfString = ConversationLoaderPublicGroupEntity.c;
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = a.c(new ArrayList(0));
    Cursor localCursor = localContentResolver.query(localUri, arrayOfString, String.format("(conversations.deleted=0 AND conversations.conversation_type=2) OR conversations._id IN (%s) GROUP BY conversations._id", arrayOfObject), null, null);
    ArrayList localArrayList = new ArrayList();
    if (localCursor != null)
    {
      while (localCursor.moveToNext()) {
        localArrayList.add(new MarketApi.UserPublicGroupInfo(new ConversationLoaderPublicGroupEntity(localCursor)));
      }
      localCursor.close();
    }
    Bundle localBundle = new Bundle();
    localBundle.putParcelableArray("groups", (Parcelable[])localArrayList.toArray(new MarketApi.UserPublicGroupInfo[localArrayList.size()]));
    paramb.a(localBundle);
  }
  
  public void processResult(Bundle paramBundle)
  {
    Parcelable[] arrayOfParcelable = paramBundle.getParcelableArray("groups");
    MarketApi.UserPublicGroupInfo[] arrayOfUserPublicGroupInfo = new MarketApi.UserPublicGroupInfo[arrayOfParcelable.length];
    for (int i = 0; i < arrayOfParcelable.length; i++) {
      arrayOfUserPublicGroupInfo[i] = ((MarketApi.UserPublicGroupInfo)arrayOfParcelable[i]);
    }
    this.a.a(arrayOfUserPublicGroupInfo);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.market.a.k
 * JD-Core Version:    0.7.0.1
 */