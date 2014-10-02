package com.viber.voip.util.upload;

public class e
  extends Exception
{
  private f a;
  
  public e(f paramf)
  {
    super(paramf.toString());
    this.a = paramf;
  }
  
  public e(f paramf, Throwable paramThrowable)
  {
    super(paramf.toString() + ":" + paramThrowable.getMessage(), paramThrowable);
    this.a = paramf;
  }
  
  public e(Throwable paramThrowable)
  {
    this(f.f, paramThrowable);
  }
  
  public f a()
  {
    return this.a;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.util.upload.e
 * JD-Core Version:    0.7.0.1
 */