package com.viber.voip.messages.controller;

import com.viber.jni.PublicGroupInfo;
import com.viber.voip.messages.controller.c.ao;
import com.viber.voip.messages.conversation.ConversationLoaderPublicGroupEntity;
import java.util.ArrayList;
import java.util.Iterator;

class cc
  extends aj
{
  cc(by paramby, ArrayList paramArrayList, ah paramah, ao paramao) {}
  
  public void a(ArrayList<PublicGroupInfo> paramArrayList)
  {
    Iterator localIterator = paramArrayList.iterator();
    while (localIterator.hasNext())
    {
      PublicGroupInfo localPublicGroupInfo = (PublicGroupInfo)localIterator.next();
      ConversationLoaderPublicGroupEntity localConversationLoaderPublicGroupEntity = new ConversationLoaderPublicGroupEntity(localPublicGroupInfo.groupName, localPublicGroupInfo.groupID, localPublicGroupInfo.watchersCount, localPublicGroupInfo.groupRole, localPublicGroupInfo.iconId, localPublicGroupInfo.groupUri);
      this.a.add(localConversationLoaderPublicGroupEntity);
    }
    this.b.a(this.c, this.a);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.controller.cc
 * JD-Core Version:    0.7.0.1
 */