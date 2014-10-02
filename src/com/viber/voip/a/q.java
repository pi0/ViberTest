package com.viber.voip.a;

public class q
  extends c
{
  public final k a = new k("ContactInfo");
  private final x b = new x("Messages", "Set_Background", "Personalize", null, null);
  private final x c = new x("Messages", "Change_Background", "Personalize", null, null);
  private final x d = new x("Messages", "Remove_Background", "Personalize", null, null);
  private final x e = new x("Messages", "Add_participants", "", null, null);
  private final x f = new x("Messages", "Set_", "Personalize", null, null);
  
  public q()
  {
    super("1on1_Info", null);
  }
  
  public q(String paramString)
  {
    super(paramString, null);
  }
  
  public final x a(int paramInt)
  {
    return new x("Messages", "Set_" + paramInt, "Personalize", null, null);
  }
  
  public final x a(boolean paramBoolean)
  {
    StringBuilder localStringBuilder = new StringBuilder().append("Smart_");
    if (paramBoolean) {}
    for (String str = "On";; str = "OFF") {
      return new x("Messages", str, "Personalize", null, null);
    }
  }
  
  public final x c()
  {
    return this.b;
  }
  
  public final x d()
  {
    return this.c;
  }
  
  public final x e()
  {
    return this.d;
  }
  
  public final x f()
  {
    return this.e;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.a.q
 * JD-Core Version:    0.7.0.1
 */