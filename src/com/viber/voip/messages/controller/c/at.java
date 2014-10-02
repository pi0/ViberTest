package com.viber.voip.messages.controller.c;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.text.TextUtils;
import com.viber.voip.i.a;
import com.viber.voip.messages.conversation.ConversationLoaderEntity;
import com.viber.voip.messages.conversation.ConversationLoaderPublicGroupEntity;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

public class at
  extends ar
{
  private static final String a = at.class.getSimpleName();
  private static final String b = "SELECT " + a.b(ConversationLoaderEntity.a) + ", MAX(" + "messages.date" + ") AS " + "max_message_date" + " FROM " + "messages" + " LEFT OUTER JOIN " + "conversations" + " ON (" + "messages.conversation_id" + "=" + "conversations._id" + ")" + " LEFT OUTER JOIN " + "participants" + " ON (" + "messages.participant_id" + "=" + "participants._id" + ")" + " LEFT OUTER JOIN " + "participants_info" + " ON (" + "(CASE WHEN (conversations.conversation_type=0) THEN conversations.participant_id_1 ELSE participants.participant_info_id END)" + "=" + "participants_info._id" + ")" + " WHERE " + "((conversations.deleted=0 AND conversations.conversation_type<>0) OR (conversations.last_message_id>0))" + " AND " + "conversations.conversation_type" + "<>" + 2 + " AND " + "messages.extra_mime" + "='" + "text" + "' AND " + "messages.body" + " LIKE ?";
  private static final String c = b + " GROUP BY " + "messages.conversation_id";
  private static final String d = b + " AND " + "conversations" + "." + "flags" + " & " + 1 + " = 0" + " GROUP BY " + "messages.conversation_id";
  private static final String e = "SELECT " + a.b(ConversationLoaderEntity.a) + " FROM " + "conversations" + " LEFT OUTER JOIN " + "messages" + " ON (" + "conversations.last_message_id" + "=" + "messages._id" + ")" + " LEFT OUTER JOIN " + "participants_info" + " ON (" + "conversations.participant_id_1" + "=" + "participants_info._id" + ") " + " WHERE " + "((conversations.deleted=0 AND conversations.conversation_type<>0) OR (conversations.last_message_id>0))" + " AND " + "conversations" + "." + "conversation_type" + "<>" + 2 + " AND " + "conversations._id" + " NOT IN (%s)";
  private static final String f = e + " AND " + "conversations.name" + " LIKE ?";
  private static final String g = e + " AND (" + "conversations.name" + " LIKE ? OR " + "conversations.name" + " = '')";
  private static final String h = "SELECT " + a.b(ConversationLoaderPublicGroupEntity.c) + " FROM " + "conversations" + " LEFT OUTER JOIN " + "messages" + " ON (" + "conversations.last_message_id" + "=" + "messages._id" + ")" + " LEFT OUTER JOIN " + "participants_info" + " ON (" + "conversations.participant_id_1" + "=" + "participants_info._id" + ") " + " LEFT OUTER JOIN " + "group_conversations_extras" + " ON (" + "group_conversations_extras.group_id" + "=" + "conversations.group_id" + ")" + " WHERE " + "((conversations.deleted=0 AND conversations.conversation_type<>0) OR (conversations.last_message_id>0))" + " AND " + "conversations" + "." + "conversation_type" + "=" + 2 + " AND " + "conversations.name" + " LIKE ?";
  
  private void a(String paramString, String[] paramArrayOfString, List<ConversationLoaderPublicGroupEntity> paramList)
  {
    Cursor localCursor = null;
    try
    {
      localCursor = c().rawQuery(paramString, paramArrayOfString);
      if ((localCursor != null) && (localCursor.moveToFirst()))
      {
        boolean bool;
        do
        {
          paramList.add(new ConversationLoaderPublicGroupEntity(localCursor, true));
          bool = localCursor.moveToNext();
        } while (bool);
      }
      return;
    }
    finally
    {
      a(localCursor);
    }
  }
  
  private void a(String paramString, String[] paramArrayOfString, Set<Long> paramSet, List<ConversationLoaderEntity> paramList)
  {
    Cursor localCursor = null;
    try
    {
      localCursor = c().rawQuery(paramString, paramArrayOfString);
      if ((localCursor != null) && (localCursor.moveToFirst()))
      {
        boolean bool;
        do
        {
          ConversationLoaderEntity localConversationLoaderEntity = new ConversationLoaderEntity(localCursor, true);
          paramList.add(localConversationLoaderEntity);
          paramSet.add(Long.valueOf(localConversationLoaderEntity.a()));
          bool = localCursor.moveToNext();
        } while (bool);
      }
      return;
    }
    finally
    {
      a(localCursor);
    }
  }
  
  public ArrayList<ConversationLoaderEntity> a(ao paramao)
  {
    HashSet localHashSet = new HashSet();
    ArrayList localArrayList = new ArrayList();
    if ((paramao == null) || (TextUtils.isEmpty(paramao.a()))) {
      return localArrayList;
    }
    String str1 = '%' + paramao.a().trim() + '%';
    String str3;
    if (paramao.b())
    {
      if (paramao.h())
      {
        str3 = c;
        a(str3, new String[] { str1 }, localHashSet, localArrayList);
      }
    }
    else
    {
      if (paramao.d())
      {
        au localau = new au(this, str1, a.c(localHashSet), paramao.e());
        a(localau.a(), localau.b(), localHashSet, localArrayList);
      }
      if (paramao.c()) {
        if (!paramao.g()) {
          break label242;
        }
      }
    }
    label242:
    for (String str2 = g;; str2 = f)
    {
      if (paramao.e()) {
        str2 = str2 + " AND conversations.conversation_type = 1";
      }
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = a.c(localHashSet);
      a(String.format(str2, arrayOfObject), new String[] { str1 }, localHashSet, localArrayList);
      Collections.sort(localArrayList);
      return localArrayList;
      str3 = d;
      break;
    }
  }
  
  public ArrayList<ConversationLoaderPublicGroupEntity> b(ao paramao)
  {
    ArrayList localArrayList = new ArrayList();
    if ((paramao == null) || (TextUtils.isEmpty(paramao.a()))) {
      return localArrayList;
    }
    String str = '%' + paramao.a().trim() + '%';
    a(h, new String[] { str }, localArrayList);
    Collections.sort(localArrayList);
    return localArrayList;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.controller.c.at
 * JD-Core Version:    0.7.0.1
 */