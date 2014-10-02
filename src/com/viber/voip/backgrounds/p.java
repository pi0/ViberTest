package com.viber.voip.backgrounds;

import android.net.Uri;
import com.viber.voip.util.gj;
import com.viber.voip.w;
import java.io.File;

public class p
  implements r
{
  private Uri a;
  
  public p(Uri paramUri)
  {
    this.a = paramUri;
  }
  
  public Uri a()
  {
    return this.a;
  }
  
  public Uri a(boolean paramBoolean)
  {
    String str1 = gj.a(this.a.getPath());
    StringBuilder localStringBuilder = new StringBuilder().append(w.z).append(j).append(str1).append("_cr");
    if (paramBoolean) {}
    for (String str2 = "_land.jpg";; str2 = "_port.jpg") {
      return Uri.fromFile(new File(str2));
    }
  }
  
  public boolean b()
  {
    return false;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.backgrounds.p
 * JD-Core Version:    0.7.0.1
 */