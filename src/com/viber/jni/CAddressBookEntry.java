package com.viber.jni;

public class CAddressBookEntry
{
  private String clientCanonizedPhone;
  private String clientName;
  private String clientOriginalPhone;
  private String clientPhotoID;
  private String clientSortName;
  private boolean isRegistered;
  
  private CAddressBookEntry(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, boolean paramBoolean)
  {
    this.clientName = paramString1;
    this.clientOriginalPhone = paramString2;
    if ((paramString3 == null) || (paramString3.startsWith("+"))) {}
    for (;;)
    {
      this.clientCanonizedPhone = paramString3;
      this.clientSortName = paramString4;
      this.clientPhotoID = paramString5;
      this.isRegistered = paramBoolean;
      return;
      paramString3 = "+" + paramString3;
    }
  }
  
  public String getClientCanonizedPhone()
  {
    return this.clientCanonizedPhone;
  }
  
  public String getClientName()
  {
    return this.clientName;
  }
  
  public String getClientOriginalPhone()
  {
    return this.clientOriginalPhone;
  }
  
  public String getClientPhotoID()
  {
    return this.clientPhotoID;
  }
  
  public String getClientSortName()
  {
    return this.clientSortName;
  }
  
  public boolean isRegistered()
  {
    return this.isRegistered;
  }
  
  public String toString()
  {
    return "CAddressBookEntry{clientName='" + this.clientName + '\'' + ", clientOriginalPhone='" + this.clientOriginalPhone + '\'' + ", clientCanonizedPhone='" + this.clientCanonizedPhone + '\'' + ", clientSortName='" + this.clientSortName + '\'' + ", clientPhotoID='" + this.clientPhotoID + '\'' + ", isRegistered='" + this.isRegistered + '\'' + '}';
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.jni.CAddressBookEntry
 * JD-Core Version:    0.7.0.1
 */