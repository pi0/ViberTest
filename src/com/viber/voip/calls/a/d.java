package com.viber.voip.calls.a;

import android.text.TextUtils;
import android.util.Pair;
import com.viber.voip.messages.orm.creator.CreatorHelper;
import com.viber.voip.messages.orm.manager.AsyncEntityManager;
import com.viber.voip.messages.orm.manager.AsyncEntityManager.FillCursorCompleteCallback;

public class d
{
  private static Pair<String, String[]> a(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    if (!TextUtils.isEmpty(paramString3))
    {
      StringBuilder localStringBuilder = new StringBuilder();
      if (paramString1 != null) {}
      for (String str1 = paramString1 + " AND ";; str1 = "")
      {
        String str2 = str1 + paramString2;
        String[] arrayOfString = new String[2];
        arrayOfString[0] = ("%" + paramString3 + "%");
        arrayOfString[1] = ("%" + paramString3 + "%");
        return new Pair(str2, arrayOfString);
      }
    }
    return new Pair(paramString1, null);
  }
  
  public static void a(AsyncEntityManager paramAsyncEntityManager, String paramString)
  {
    Pair localPair = a(null, "phonebookcontact.numbers_name LIKE ? OR calls.canonized_number LIKE ?", paramString, paramString);
    paramAsyncEntityManager.fillCursor(0, "calls.date DESC,phonebookcontact.low_display_name ASC, phonebookcontact._id", (String)localPair.first, (String[])localPair.second);
  }
  
  private static AsyncEntityManager b(CreatorHelper paramCreatorHelper, AsyncEntityManager.FillCursorCompleteCallback paramFillCursorCompleteCallback)
  {
    return new AsyncEntityManager(paramCreatorHelper, paramFillCursorCompleteCallback, true);
  }
  
  public static void b(AsyncEntityManager paramAsyncEntityManager, String paramString)
  {
    Pair localPair = a("calls.type=3", "phonebookcontact.numbers_name LIKE ? OR calls.canonized_number LIKE ?", paramString, paramString);
    paramAsyncEntityManager.fillCursor(1, "calls.date DESC,phonebookcontact.low_display_name ASC, phonebookcontact._id", (String)localPair.first, (String[])localPair.second);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.calls.a.d
 * JD-Core Version:    0.7.0.1
 */