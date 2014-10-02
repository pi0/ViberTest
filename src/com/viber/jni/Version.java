package com.viber.jni;

import com.viber.voip.ViberApplication;
import com.viber.voip.util.fq;
import java.util.StringTokenizer;
import java.util.regex.Pattern;

public class Version
{
  public final long Build;
  public final int Major;
  public final int Minor;
  public final int MinorMinor;
  
  private Version(String paramString)
  {
    ViberApplication.log(4, "--trace--", "version = " + paramString);
    StringTokenizer localStringTokenizer = new StringTokenizer(paramString, ".");
    this.Major = Integer.parseInt(localStringTokenizer.nextToken());
    this.Minor = Integer.parseInt(localStringTokenizer.nextToken());
    this.MinorMinor = Integer.parseInt(localStringTokenizer.nextToken());
    this.Build = Long.parseLong(localStringTokenizer.nextToken());
  }
  
  public static Version parseVersionString(String paramString)
  {
    ViberApplication.log(4, "--trace--", "version = " + paramString);
    if (paramString == null)
    {
      ViberApplication.log(6, "--trace--", "version == null ");
      return null;
    }
    if (!paramString.matches(fq.l.pattern()))
    {
      ViberApplication.log(6, "--trace--", "pattern not match version = " + paramString);
      return null;
    }
    ViberApplication.log(6, "--trace--", "pattern match OK, version = " + paramString);
    try
    {
      localVersion = new Version(paramString);
      return localVersion;
    }
    catch (Exception localException)
    {
      for (;;)
      {
        localException.printStackTrace();
        Version localVersion = null;
      }
    }
  }
  
  public boolean isNewerThen(Version paramVersion)
  {
    if (this.Major != paramVersion.Major) {
      if (this.Major <= paramVersion.Major) {}
    }
    do
    {
      do
      {
        return true;
        return false;
        if (this.Minor == paramVersion.Minor) {
          break;
        }
      } while (this.Minor > paramVersion.Minor);
      return false;
    } while (this.MinorMinor > paramVersion.MinorMinor);
    return false;
  }
  
  public String toString()
  {
    return "Major = " + this.Major + "Minor = " + this.Minor + "MinorMinor = " + this.MinorMinor + "Build = " + this.Build;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.jni.Version
 * JD-Core Version:    0.7.0.1
 */