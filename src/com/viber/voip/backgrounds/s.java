package com.viber.voip.backgrounds;

import android.net.Uri;
import com.viber.voip.w;
import java.io.File;

public class s
  extends q
{
  public s(int paramInt)
  {
    super(paramInt);
  }
  
  public Uri a(boolean paramBoolean)
  {
    StringBuilder localStringBuilder = new StringBuilder().append(w.z).append(j).append(this.f).append("_pg");
    String str;
    if (this.e) {
      str = "_tail.jpg";
    }
    for (;;)
    {
      return Uri.fromFile(new File(str));
      if (paramBoolean) {
        str = "_land.jpg";
      } else {
        str = "_port.jpg";
      }
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.backgrounds.s
 * JD-Core Version:    0.7.0.1
 */