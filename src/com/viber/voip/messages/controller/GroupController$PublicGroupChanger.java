package com.viber.voip.messages.controller;

import com.viber.jni.LocationInfo;

public class GroupController$PublicGroupChanger
  extends GroupController.CreatePublicGroupData
{
  public int e;
  
  public GroupController$PublicGroupChanger(LocationInfo paramLocationInfo, String paramString1, String paramString2, String[] paramArrayOfString, String paramString3, long paramLong1, long paramLong2, int paramInt1, int paramInt2, long paramLong3)
  {
    super(paramLong3, paramString2, paramInt1, "", "", "", paramLocationInfo, paramString1, 0, paramString3, paramArrayOfString, null, null, paramLong1, paramLong2);
    this.e = paramInt2;
  }
  
  public GroupController$PublicGroupChanger(LocationInfo paramLocationInfo, String paramString1, String paramString2, String[] paramArrayOfString, String paramString3, String paramString4, String paramString5, int paramInt1, int paramInt2, long paramLong)
  {
    super(paramLong, paramString2, paramInt1, "", paramString4, paramString5, paramLocationInfo, paramString1, 0, paramString3, paramArrayOfString, null, null, 0L, 0L);
    this.e = paramInt2;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.controller.GroupController.PublicGroupChanger
 * JD-Core Version:    0.7.0.1
 */