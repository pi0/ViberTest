package com.viber.voip.messages.orm.annotation;

public enum ViberEntityType
{
  static
  {
    ViberEntityType[] arrayOfViberEntityType = new ViberEntityType[2];
    arrayOfViberEntityType[0] = ContentValues;
    arrayOfViberEntityType[1] = Standard;
    $VALUES = arrayOfViberEntityType;
  }
  
  private ViberEntityType() {}
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.orm.annotation.ViberEntityType
 * JD-Core Version:    0.7.0.1
 */