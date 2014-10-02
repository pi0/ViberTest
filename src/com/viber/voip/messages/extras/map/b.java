package com.viber.voip.messages.extras.map;

public class b
{
  private int a;
  private int b;
  
  public b(int paramInt1, int paramInt2)
  {
    this.a = paramInt1;
    this.b = paramInt2;
  }
  
  public int a()
  {
    return this.a;
  }
  
  public int b()
  {
    return this.b;
  }
  
  public int hashCode()
  {
    return toString().hashCode();
  }
  
  public String toString()
  {
    return "GeoPoint: Latitude: " + this.a + ", Longitude: " + this.b;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.extras.map.b
 * JD-Core Version:    0.7.0.1
 */