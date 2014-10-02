package com.viber.voip.messages.controller;

public abstract interface GroupController
{
  public abstract void a(double paramDouble1, double paramDouble2, long paramLong1, long paramLong2);
  
  public abstract void a(int paramInt1, long paramLong, int paramInt2);
  
  public abstract void a(int paramInt1, long paramLong1, int paramInt2, String paramString1, String paramString2, long paramLong2, String paramString3);
  
  public abstract void a(int paramInt, long paramLong, GroupController.PublicGroupChanger paramPublicGroupChanger);
  
  public abstract void a(int paramInt, long paramLong, GroupController.GroupMember[] paramArrayOfGroupMember);
  
  public abstract void a(int paramInt, GroupController.CreatePublicGroupData paramCreatePublicGroupData);
  
  public abstract void a(int paramInt, GroupController.GroupMember[] paramArrayOfGroupMember);
  
  public abstract void a(long paramLong, int paramInt);
  
  public abstract void a(long paramLong, String paramString);
  
  public abstract void a(long paramLong, String paramString1, String paramString2);
  
  public abstract void a(long paramLong, boolean paramBoolean);
  
  public abstract void b(long paramLong, String paramString);
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.controller.GroupController
 * JD-Core Version:    0.7.0.1
 */