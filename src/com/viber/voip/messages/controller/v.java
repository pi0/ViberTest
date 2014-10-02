package com.viber.voip.messages.controller;

class v
{
  public long a;
  public int b;
  
  private v(r paramr, long paramLong, int paramInt)
  {
    this.a = paramLong;
    this.b = paramInt;
  }
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == null) {
      return false;
    }
    if (getClass() != paramObject.getClass()) {
      return false;
    }
    if (this.a != ((v)paramObject).a) {
      return false;
    }
    return this.b == ((v)paramObject).b;
  }
  
  public int hashCode()
  {
    return (int)(this.a << 16) ^ this.b;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.controller.v
 * JD-Core Version:    0.7.0.1
 */