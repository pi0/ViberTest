package com.viber.voip.widget;

import android.content.ContentResolver;
import android.database.Cursor;
import com.viber.voip.ViberApplication;
import com.viber.voip.util.al;
import com.viber.voip.util.fe;

class p
  extends fe
{
  public final int c = 1591;
  public final String[] d = { "display_name" };
  public final String e = "_id IN (SELECT contact_id FROM phonebookdata WHERE data2=? OR data1=? )";
  public final String f = "display_name ASC";
  
  public p(PhoneTypeField paramPhoneTypeField, ContentResolver paramContentResolver)
  {
    super(paramContentResolver);
  }
  
  protected void a(int paramInt, Object paramObject, Cursor paramCursor)
  {
    if ((paramInt == 1591) && (paramCursor != null) && (paramCursor.moveToFirst()))
    {
      StringBuilder localStringBuilder = new StringBuilder();
      do
      {
        if (localStringBuilder.length() > 0) {
          localStringBuilder.append(',').append(' ');
        }
        localStringBuilder.append(paramCursor.getString(paramCursor.getColumnIndex("display_name")));
      } while (paramCursor.moveToNext());
      PhoneTypeField.a(this.g, localStringBuilder.toString());
      ViberApplication.log(3, "PhoneTypeField", "Query finish: name=" + PhoneTypeField.a(this.g));
      if (PhoneTypeField.b(this.g) != null) {
        PhoneTypeField.b(this.g).a(localStringBuilder.toString());
      }
    }
    for (;;)
    {
      al.a(paramCursor);
      return;
      PhoneTypeField.a(this.g, "");
      if (PhoneTypeField.b(this.g) != null) {
        PhoneTypeField.b(this.g).a_();
      }
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.widget.p
 * JD-Core Version:    0.7.0.1
 */