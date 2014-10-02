package com.viber.voip.messages.controller.c;

import com.viber.voip.i.a;
import com.viber.voip.messages.conversation.ConversationLoaderEntity;
import java.util.ArrayList;

class au
{
  ArrayList<String> a = new ArrayList();
  StringBuilder b = new StringBuilder();
  
  au(at paramat, String paramString1, String paramString2, boolean paramBoolean)
  {
    this.b.append("SELECT " + a.b(ConversationLoaderEntity.a) + " FROM " + "participants" + " LEFT OUTER JOIN " + "conversations" + " ON (" + "participants.conversation_id" + "=" + "conversations._id" + ")" + " LEFT OUTER JOIN " + "messages" + " ON (" + "(CASE WHEN ( conversations.conversation_type=0) THEN conversations.last_message_id ELSE participants.last_message_id END)" + "=" + "messages._id" + ")" + " LEFT OUTER JOIN " + "participants_info" + " ON (" + "participants.participant_info_id" + "=" + "participants_info._id" + ")" + " WHERE " + "((conversations.deleted=0 AND conversations.conversation_type<>0) OR (conversations.last_message_id>0))" + " AND " + "participants.conversation_id" + " NOT IN (").append(paramString2).append(')');
    if (paramBoolean)
    {
      this.b.append(" AND (conversations.conversation_type=1 AND participants_info.display_name LIKE ?)");
      this.a.add(paramString1);
    }
    for (;;)
    {
      this.b.append(" GROUP BY conversations._id");
      return;
      this.b.append(" AND ((conversations.conversation_type=1 AND participants_info.display_name LIKE ?) OR (conversations.conversation_type=0 AND participants_info.contact_name LIKE ?)  OR ((participants_info.display_name='' OR participants_info.display_name IS NULL)  AND (participants_info.contact_name='' OR participants_info.contact_name IS NULL)  AND participants_info.number LIKE ?)) ");
      this.a.add(paramString1);
      this.a.add(paramString1);
      this.a.add(paramString1);
    }
  }
  
  String a()
  {
    return this.b.toString();
  }
  
  String[] b()
  {
    return (String[])this.a.toArray(new String[this.a.size()]);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.controller.c.au
 * JD-Core Version:    0.7.0.1
 */