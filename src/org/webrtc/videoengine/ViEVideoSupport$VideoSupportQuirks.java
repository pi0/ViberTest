package org.webrtc.videoengine;

import android.util.JsonReader;
import java.util.Map;

class ViEVideoSupport$VideoSupportQuirks
{
  public final String ident;
  public final String vendor;
  
  public ViEVideoSupport$VideoSupportQuirks(String paramString1, String paramString2)
  {
    this.vendor = paramString1;
    this.ident = paramString2;
  }
  
  public static VideoSupportQuirks fromJSON(JsonReader paramJsonReader, Map<String, VideoSupportQuirks> paramMap)
  {
    String str1;
    Object localObject2;
    try
    {
      paramJsonReader.beginObject();
      str1 = null;
      localObject2 = null;
      while (paramJsonReader.hasNext())
      {
        String str2 = paramJsonReader.nextName();
        if (str2 != null)
        {
          String str3 = str2.toLowerCase();
          try
          {
            if ("device".equals(str3))
            {
              str1 = paramJsonReader.nextString();
            }
            else if ("vendor".equals(str3))
            {
              String str4 = paramJsonReader.nextString();
              localObject2 = str4;
            }
          }
          catch (Exception localException)
          {
            return null;
          }
        }
      }
      paramJsonReader.endObject();
      if ((localObject2 == null) && (str1 == null)) {
        return null;
      }
    }
    finally
    {
      paramJsonReader.endObject();
    }
    return new VideoSupportQuirks(localObject2, str1);
  }
  
  public static final String magic(VideoSupportQuirks paramVideoSupportQuirks)
  {
    if (paramVideoSupportQuirks != null) {
      return paramVideoSupportQuirks.ident;
    }
    return null;
  }
  
  public boolean equals(Object paramObject)
  {
    return ((paramObject instanceof VideoSupportQuirks)) && (toString().equals(paramObject.toString()));
  }
  
  public int hashCode()
  {
    return toString().hashCode();
  }
  
  public String toString()
  {
    return this.ident;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     org.webrtc.videoengine.ViEVideoSupport.VideoSupportQuirks
 * JD-Core Version:    0.7.0.1
 */