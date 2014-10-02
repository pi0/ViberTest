package com.viber.voip.contacts.a;

import java.text.Collator;
import java.util.Comparator;
import java.util.Locale;

public class b
  implements Comparator<Character>
{
  private Collator a = Collator.getInstance();
  
  public b(Locale paramLocale)
  {
    this.a.setStrength(0);
  }
  
  public int a(Character paramCharacter1, Character paramCharacter2)
  {
    return this.a.compare(paramCharacter1.toString(), paramCharacter2.toString());
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.contacts.a.b
 * JD-Core Version:    0.7.0.1
 */