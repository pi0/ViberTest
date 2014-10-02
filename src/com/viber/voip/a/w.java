package com.viber.voip.a;

public class w
  extends c
{
  private final x a = new x("Activation", "Get_facebook_Details", "", null, null);
  private final x b = new x("Activation", "Select_existing_photo", "", null, null);
  private final x c = new x("Activation", "Take_photo", "", null, null);
  
  private w()
  {
    super("Enter_details", null);
  }
  
  public final x b(String paramString)
  {
    return new x("Activation", "Continue", paramString, null, null);
  }
  
  public final x c()
  {
    return this.a;
  }
  
  public final x d()
  {
    return this.b;
  }
  
  public final x e()
  {
    return this.c;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.a.w
 * JD-Core Version:    0.7.0.1
 */