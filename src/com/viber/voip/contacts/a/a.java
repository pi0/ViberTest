package com.viber.voip.contacts.a;

import android.text.TextUtils;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Locale;
import java.util.Set;
import java.util.TreeSet;

public class a
{
  public static final Character a = Character.valueOf('他');
  public static final Character b = Character.valueOf('一');
  public static final Character c = Character.valueOf('#');
  public static final Character d = Character.valueOf(' ');
  public static final Character[] e;
  private Set<Character> f = new HashSet();
  private CharSequence g = new StringBuilder();
  private Character[] h;
  private String[] i;
  
  static
  {
    Character[] arrayOfCharacter = new Character[2];
    arrayOfCharacter[0] = d;
    arrayOfCharacter[1] = c;
    e = arrayOfCharacter;
  }
  
  public static String a(String paramString)
  {
    if (paramString == null) {
      paramString = "";
    }
    while ((TextUtils.isEmpty(paramString)) || (!Character.isDigit(paramString.charAt(0)))) {
      return paramString;
    }
    return String.valueOf(c);
  }
  
  private void d()
  {
    int j = 0;
    try
    {
      StringBuilder localStringBuilder = new StringBuilder();
      this.f.remove(d);
      Character[] arrayOfCharacter1 = new Character[this.f.size() + e.length];
      String[] arrayOfString = new String[this.f.size() + e.length];
      Character[] arrayOfCharacter2 = e;
      int k = arrayOfCharacter2.length;
      int m = 0;
      while (m < k)
      {
        Character localCharacter1 = arrayOfCharacter2[m];
        localStringBuilder.append(localCharacter1);
        arrayOfCharacter1[j] = localCharacter1;
        arrayOfString[j] = String.valueOf(localCharacter1);
        int n = j + 1;
        m++;
        j = n;
      }
      Iterator localIterator = this.f.iterator();
      int i1 = j;
      if (localIterator.hasNext())
      {
        Character localCharacter2 = (Character)localIterator.next();
        localStringBuilder.append(localCharacter2);
        if (localCharacter2.equals(b)) {
          localCharacter2 = Character.valueOf(' ');
        }
        arrayOfCharacter1[i1] = localCharacter2;
        char c1 = Character.toUpperCase(localCharacter2.charValue());
        char c2 = Character.toLowerCase(localCharacter2.charValue());
        if (c1 != c2) {}
        for (String str = "" + c1 + c2;; str = String.valueOf(c1))
        {
          arrayOfString[i1] = str;
          i1++;
          break;
        }
      }
      this.h = arrayOfCharacter1;
      this.i = arrayOfString;
      this.g = localStringBuilder;
      return;
    }
    finally {}
  }
  
  public CharSequence a()
  {
    return this.g;
  }
  
  public void a(Collection<Character> paramCollection, Locale paramLocale)
  {
    try
    {
      this.f = new TreeSet(new b(paramLocale));
      this.f.addAll(paramCollection);
      d();
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  /* Error */
  public boolean a(Character paramCharacter)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 45	com/viber/voip/contacts/a/a:f	Ljava/util/Set;
    //   6: aload_1
    //   7: invokeinterface 153 2 0
    //   12: istore_3
    //   13: iload_3
    //   14: ifeq +11 -> 25
    //   17: iconst_0
    //   18: istore 5
    //   20: aload_0
    //   21: monitorexit
    //   22: iload 5
    //   24: ireturn
    //   25: aload_0
    //   26: getfield 45	com/viber/voip/contacts/a/a:f	Ljava/util/Set;
    //   29: aload_1
    //   30: invokeinterface 156 2 0
    //   35: pop
    //   36: aload_0
    //   37: invokespecial 149	com/viber/voip/contacts/a/a:d	()V
    //   40: iconst_1
    //   41: istore 5
    //   43: goto -23 -> 20
    //   46: astore_2
    //   47: aload_0
    //   48: monitorexit
    //   49: aload_2
    //   50: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	51	0	this	a
    //   0	51	1	paramCharacter	Character
    //   46	4	2	localObject	Object
    //   12	2	3	bool1	boolean
    //   18	24	5	bool2	boolean
    // Exception table:
    //   from	to	target	type
    //   2	13	46	finally
    //   25	40	46	finally
  }
  
  public Character[] b()
  {
    return this.h;
  }
  
  public String[] c()
  {
    return this.i;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.contacts.a.a
 * JD-Core Version:    0.7.0.1
 */