package com.viber.jni;

public class CountryNameInfo
{
  public final String countryName;
  public final String countryShortName;
  
  private CountryNameInfo(String paramString1, String paramString2)
  {
    this.countryName = paramString1;
    this.countryShortName = paramString2;
  }
  
  public String toString()
  {
    return "CountryNameInfo [countryName=" + this.countryName + ", countryShortName=" + this.countryShortName + "]";
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.jni.CountryNameInfo
 * JD-Core Version:    0.7.0.1
 */