package com.viber.voip.a;

public class ac
  extends c
{
  private final x a = new x("Messages", "Open_Menu", "Menu", null, null);
  private final x b = new x("Messages", "Close_Menu", "Menu", null, null);
  private final x c = new x("Messages", "Delete_button", "Menu", null, null);
  private final x d = new x("Messages", "Take_Photo", "Menu", null, null);
  private final x e = new x("Messages", "Photo_gallery", "Menu", null, null);
  private final x f = new x("Messages", "Camcorder", "Menu", null, null);
  private final x g = new x("Messages", "Gallery", "Menu", null, null);
  
  private ac()
  {
    super("Menu", null);
    a("Messages");
  }
  
  public final x b(String paramString)
  {
    return new x(b(), "Send_sticker_" + paramString, "Menu", null, null);
  }
  
  public final x c()
  {
    return new x(b(), "Open_Menu", "Menu", null, null);
  }
  
  public final x c(String paramString)
  {
    return new x(b(), "Add_Emoticon_" + paramString, "Menu", null, null);
  }
  
  public final x d()
  {
    return new x(b(), "Close_Menu", "Menu", null, null);
  }
  
  public final x e()
  {
    return new x(b(), "Delete_button", "Menu", null, null);
  }
  
  public final x f()
  {
    return new x(b(), "Take_Photo", "Menu", null, null);
  }
  
  public final x g()
  {
    return new x(b(), "Photo_gallery", "Menu", null, null);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.a.ac
 * JD-Core Version:    0.7.0.1
 */