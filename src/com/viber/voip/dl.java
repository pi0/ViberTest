package com.viber.voip;

@Deprecated
public final class dl
{
  static
  {
    if (!dl.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      a = bool;
      return;
    }
  }
  
  private dl()
  {
    if (!a) {
      throw new AssertionError();
    }
  }
  
  public static boolean a(String paramString, String... paramVarArgs)
  {
    int i = paramVarArgs.length;
    for (int j = 0;; j++)
    {
      boolean bool = false;
      if (j < i)
      {
        if (paramVarArgs[j].equals(paramString)) {
          bool = true;
        }
      }
      else {
        return bool;
      }
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.dl
 * JD-Core Version:    0.7.0.1
 */