package com.viber.voip.contacts.e;

import android.text.TextUtils;
import android.util.Pair;
import com.viber.voip.messages.orm.creator.CreatorHelper;
import com.viber.voip.messages.orm.manager.AsyncEntityManager;
import com.viber.voip.messages.orm.manager.AsyncEntityManager.FillCursorCompleteCallback;
import com.viber.voip.messages.orm.manager.EntityManager;

public class j
{
  private static final String a = "phonebookcontact.has_number=1";
  
  private static Pair<String, String[]> a(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    if (!TextUtils.isEmpty(paramString3))
    {
      StringBuilder localStringBuilder1 = new StringBuilder();
      String str1;
      String str2;
      String[] arrayOfString;
      StringBuilder localStringBuilder2;
      if (paramString1 != null)
      {
        str1 = paramString1 + " AND ";
        str2 = str1 + paramString2;
        arrayOfString = new String[4];
        arrayOfString[0] = ("%" + paramString3 + "%");
        arrayOfString[1] = ("%" + paramString3 + "%");
        arrayOfString[2] = ("%" + paramString3 + "%");
        localStringBuilder2 = new StringBuilder().append("%");
        if (TextUtils.isEmpty(paramString4)) {
          break label205;
        }
      }
      for (;;)
      {
        arrayOfString[3] = (paramString4 + "%");
        return new Pair(str2, arrayOfString);
        str1 = "";
        break;
        label205:
        paramString4 = paramString3;
      }
    }
    return new Pair(paramString1, null);
  }
  
  public static void a(AsyncEntityManager paramAsyncEntityManager, int paramInt, String paramString1, String paramString2, String paramString3, String paramString4, String paramString5)
  {
    Pair localPair = a(paramString2, paramString3, paramString4, paramString5);
    paramAsyncEntityManager.fillCursor(paramInt, paramString1, (String)localPair.first, (String[])localPair.second);
  }
  
  public static void a(AsyncEntityManager paramAsyncEntityManager, String paramString1, String paramString2)
  {
    a(paramAsyncEntityManager, 1, "low_display_name ASC", "phonebookcontact.has_number=1 AND phonebookcontact.viber=1", "(phonebookcontact.low_display_name LIKE ? OR phonebookcontact._id IN (SELECT phonebookdata.contact_id FROM phonebookdata WHERE phonebookdata.mime_type=0 AND (phonebookdata.data1 LIKE ? OR phonebookdata.data2 LIKE ? OR phonebookdata.data2 LIKE ?)))", paramString1, paramString2);
  }
  
  public static void a(EntityManager paramEntityManager, int paramInt, String paramString1, String paramString2, String paramString3, String paramString4, String paramString5)
  {
    Pair localPair = a(paramString2, paramString3, paramString4, paramString5);
    paramEntityManager.fillCursor(paramString1, (String)localPair.first, (String[])localPair.second);
  }
  
  public static void a(EntityManager paramEntityManager, String paramString1, String paramString2)
  {
    a(paramEntityManager, 4, "recently_joined_date DESC, low_display_name ASC", "recently_joined_date<>0 AND phonebookcontact.has_number=1 AND phonebookcontact.viber=1", "(phonebookcontact.low_display_name LIKE ? OR phonebookcontact._id IN (SELECT phonebookdata.contact_id FROM phonebookdata WHERE phonebookdata.mime_type=0 AND (phonebookdata.data1 LIKE ? OR phonebookdata.data2 LIKE ? OR phonebookdata.data2 LIKE ?)))", paramString1, paramString2);
  }
  
  public static void a(EntityManager paramEntityManager, boolean paramBoolean, String paramString1, String paramString2)
  {
    if (paramBoolean) {}
    for (String str = "phonebookcontact.has_number=1 AND phonebookcontact.starred=1 AND phonebookcontact.viber=1";; str = "phonebookcontact.has_number=1 AND phonebookcontact.starred=1")
    {
      a(paramEntityManager, 5, "low_display_name ASC", str, "(phonebookcontact.low_display_name LIKE ? OR phonebookcontact._id IN (SELECT phonebookdata.contact_id FROM phonebookdata WHERE phonebookdata.mime_type=0 AND (phonebookdata.data1 LIKE ? OR phonebookdata.data2 LIKE ? OR phonebookdata.data2 LIKE ?)))", paramString1, paramString2);
      return;
    }
  }
  
  private static AsyncEntityManager b(CreatorHelper paramCreatorHelper, AsyncEntityManager.FillCursorCompleteCallback paramFillCursorCompleteCallback)
  {
    return new AsyncEntityManager(paramCreatorHelper, paramFillCursorCompleteCallback, true);
  }
  
  public static void b(AsyncEntityManager paramAsyncEntityManager, String paramString1, String paramString2)
  {
    a(paramAsyncEntityManager, 1, "low_display_name ASC, phonebookcontact._id", "phonebookcontact.has_number=1 AND phonebookcontact.viber=1 AND vibernumbers.canonized_number IS NOT NULL", "(phonebookcontact.low_display_name LIKE ? OR phonebookcontact._id IN (SELECT phonebookdata.contact_id FROM phonebookdata WHERE phonebookdata.mime_type=0 AND (phonebookdata.data1 LIKE ? OR phonebookdata.data2 LIKE ? OR phonebookdata.data2 LIKE ?)))", paramString1, paramString2);
  }
  
  public static void c(AsyncEntityManager paramAsyncEntityManager, String paramString1, String paramString2)
  {
    a(paramAsyncEntityManager, 0, "low_display_name ASC", a, "(phonebookcontact.low_display_name LIKE ? OR phonebookcontact._id IN (SELECT phonebookdata.contact_id FROM phonebookdata WHERE phonebookdata.mime_type=0 AND (phonebookdata.data1 LIKE ? OR phonebookdata.data2 LIKE ? OR phonebookdata.data2 LIKE ?)))", paramString1, paramString2);
  }
  
  public static void d(AsyncEntityManager paramAsyncEntityManager, String paramString1, String paramString2)
  {
    a(paramAsyncEntityManager, 2, "low_display_name ASC", a, "(phonebookcontact.numbers_name LIKE ? OR phonebookcontact._id IN (SELECT phonebookdata.contact_id FROM phonebookdata WHERE phonebookdata.mime_type=0 AND (phonebookdata.data1 LIKE ? OR phonebookdata.data2 LIKE ? OR phonebookdata.data2 LIKE ?)))", paramString1, paramString2);
  }
  
  public static void e(AsyncEntityManager paramAsyncEntityManager, String paramString1, String paramString2)
  {
    a(paramAsyncEntityManager, 2, "low_display_name ASC", a, "(phonebookcontact._id NOT IN (SELECT phonebookdata.contact_id FROM calls LEFT OUTER JOIN phonebookdata ON (calls.canonized_number=phonebookdata.data2) WHERE phonebookdata.contact_id NOT NULL )) AND (phonebookcontact.numbers_name LIKE ? OR phonebookcontact._id IN (SELECT phonebookdata.contact_id FROM phonebookdata WHERE phonebookdata.mime_type=0 AND (phonebookdata.data1 LIKE ? OR phonebookdata.data2 LIKE ? OR phonebookdata.data2 LIKE ?))) AND mime_type=0", paramString1, paramString2);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.contacts.e.j
 * JD-Core Version:    0.7.0.1
 */