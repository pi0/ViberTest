package com.viber.voip.util.upload;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class j
{
  private static final int a = "--xxxxxxxxxxxxx\n".length() + (-2 + "Content-Disposition: form-data; name=\"%s\";".length()) + "\n\n".length() + "\n--xxxxxxxxxxxxx--\n".length();
  private static final int b = a + " filename=\"filename\"".length();
  private static final Pattern c = Pattern.compile("^bytes ([0-9]+)-(([0-9]+)/([0-9]+))?");
  
  public static k a(String paramString)
  {
    int i = -1;
    Matcher localMatcher = c.matcher(paramString);
    int j;
    int k;
    if (localMatcher.matches())
    {
      j = Integer.parseInt(localMatcher.group(1));
      if ((localMatcher.group(3) == null) || (localMatcher.group(3).length() == 0)) {
        break label78;
      }
      k = Integer.parseInt(localMatcher.group(3));
      i = Integer.parseInt(localMatcher.group(4));
    }
    for (;;)
    {
      return new k(j, k, i);
      return null;
      label78:
      k = i;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.util.upload.j
 * JD-Core Version:    0.7.0.1
 */