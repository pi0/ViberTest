package com.viber.jni;

import java.util.Arrays;

public class RecoveryGroupInfo
{
  public static final String TAG = RecoveryGroupInfo.class.getSimpleName();
  public final int flags;
  public final long groupId;
  public final String groupName;
  public GroupUserInfo[] groupUserInfo;
  
  public RecoveryGroupInfo(long paramLong, String paramString, GroupUserInfo[] paramArrayOfGroupUserInfo, int paramInt)
  {
    this.groupId = paramLong;
    this.groupName = paramString;
    this.groupUserInfo = paramArrayOfGroupUserInfo;
    this.flags = paramInt;
  }
  
  public String toString()
  {
    return "RecoveryGroupInfo{groupId='" + this.groupId + '\'' + ", groupName='" + this.groupName + '\'' + ", Members:'" + Arrays.toString(this.groupUserInfo) + '\'' + ", flags='" + this.flags + '\'' + '}';
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.jni.RecoveryGroupInfo
 * JD-Core Version:    0.7.0.1
 */