package com.viber.jni;

import com.viber.voip.ViberApplication;

public class GroupAddedMember
{
  private int role;
  private GroupUserInfo user;
  
  public GroupAddedMember(GroupUserInfo paramGroupUserInfo, int paramInt)
  {
    log("GroupAddedMember ctor user:" + paramGroupUserInfo + " role:" + this.role);
    this.user = paramGroupUserInfo;
    this.role = paramInt;
  }
  
  private void log(String paramString)
  {
    ViberApplication.log(3, "GroupAddedMember", paramString);
  }
  
  public int getRole()
  {
    return this.role;
  }
  
  public GroupUserInfo getUser()
  {
    return this.user;
  }
  
  public String toString()
  {
    return "GroupAddedMember{user='" + this.user + '\'' + ", role='" + this.role + '}';
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.jni.GroupAddedMember
 * JD-Core Version:    0.7.0.1
 */