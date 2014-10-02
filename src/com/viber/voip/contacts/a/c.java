package com.viber.voip.contacts.a;

import android.widget.AlphabetIndexer;
import android.widget.SectionIndexer;
import com.viber.provider.a;
import com.viber.voip.ViberApplication;
import com.viber.voip.messages.orm.entity.Entity;

public abstract class c<T extends Entity>
  implements SectionIndexer
{
  private static final String a = c.class.getSimpleName();
  private final SectionIndexer b;
  private final String[] c;
  
  public c(a parama, CharSequence paramCharSequence, String[] paramArrayOfString)
  {
    this.b = new AlphabetIndexer(new d(this, parama), 0, paramCharSequence);
    this.c = paramArrayOfString;
    b("CREATE");
  }
  
  public static Character a(char paramChar)
  {
    if (Character.isLetter(paramChar)) {}
    for (char c1 = Character.toUpperCase(paramChar);; c1 = ' ') {
      return Character.valueOf(c1);
    }
  }
  
  public static Character a(String paramString)
  {
    char c1 = ' ';
    if ((paramString != null) && (paramString.length() > 0)) {}
    for (char c2 = paramString.charAt(0);; c2 = c1)
    {
      if (Character.isLetter(c2)) {
        c1 = Character.toUpperCase(c2);
      }
      return Character.valueOf(c1);
    }
  }
  
  private void b(String paramString)
  {
    ViberApplication.log(3, a, paramString);
  }
  
  protected abstract String a(T paramT);
  
  public int getPositionForSection(int paramInt)
  {
    return this.b.getPositionForSection(paramInt);
  }
  
  public int getSectionForPosition(int paramInt)
  {
    return this.b.getSectionForPosition(paramInt);
  }
  
  public Object[] getSections()
  {
    if (this.c != null) {
      return this.c;
    }
    return this.b.getSections();
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.contacts.a.c
 * JD-Core Version:    0.7.0.1
 */