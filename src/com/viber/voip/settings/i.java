package com.viber.voip.settings;

import android.database.AbstractCursor;

class i
  extends AbstractCursor
{
  private String a;
  
  i(String paramString)
  {
    this.a = paramString;
  }
  
  public String[] getColumnNames()
  {
    return new String[] { "value" };
  }
  
  public int getCount()
  {
    return 1;
  }
  
  public double getDouble(int paramInt)
  {
    return 0.0D;
  }
  
  public float getFloat(int paramInt)
  {
    return 0.0F;
  }
  
  public int getInt(int paramInt)
  {
    return 0;
  }
  
  public long getLong(int paramInt)
  {
    return 0L;
  }
  
  public short getShort(int paramInt)
  {
    return 0;
  }
  
  public String getString(int paramInt)
  {
    return this.a;
  }
  
  public boolean isNull(int paramInt)
  {
    return false;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.settings.i
 * JD-Core Version:    0.7.0.1
 */