package com.viber.voip.contacts.c.f.b;

import android.content.ContentProviderOperation;
import android.content.ContentProviderResult;
import com.viber.voip.contacts.c.f.b;
import com.viber.voip.util.ff;
import java.util.List;
import java.util.Set;

class y
  implements ff
{
  y(u paramu, Set paramSet, ab paramab) {}
  
  public void a(int paramInt, Object paramObject, List<ContentProviderOperation> paramList, ContentProviderResult[] paramArrayOfContentProviderResult, Exception paramException)
  {
    b.a(u.b(this.c)).a(this.a);
    if (this.b != null)
    {
      int i = 0;
      if (paramArrayOfContentProviderResult != null)
      {
        int j = paramArrayOfContentProviderResult.length;
        int k = 0;
        while (k < j)
        {
          int m = i + paramArrayOfContentProviderResult[k].count.intValue();
          k++;
          i = m;
        }
      }
      this.b.a(i);
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.contacts.c.f.b.y
 * JD-Core Version:    0.7.0.1
 */