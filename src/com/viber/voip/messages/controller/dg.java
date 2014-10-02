package com.viber.voip.messages.controller;

import java.util.Set;

public abstract interface dg
{
  public abstract void onChange(Set<Long> paramSet, boolean paramBoolean);
  
  public abstract void onChangeOwner();
  
  public abstract void onInitCache();
  
  public abstract void onNewInfo(Set<Long> paramSet, boolean paramBoolean);
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.controller.dg
 * JD-Core Version:    0.7.0.1
 */