package com.viber.voip.a;

public class ao
  extends c
{
  private ao()
  {
    super("Social", null);
  }
  
  public final x a(aq paramaq)
  {
    return new x("Messages", "Share_" + paramaq.a(), "Social", null, null);
  }
  
  public final x a(aq paramaq, ap paramap)
  {
    StringBuilder localStringBuilder = new StringBuilder().append(paramaq.a()).append("_Connect_");
    if (paramap == ap.b) {
      paramap = paramaq.a() + "_" + paramap;
    }
    return new x("Messages", paramap, "Social", null, null);
  }
  
  public final x a(aq paramaq, String paramString)
  {
    return new x("Messages", "Share_" + paramaq.a() + "_Fail_" + paramString, "Errors", null, null);
  }
  
  public final x b(aq paramaq)
  {
    return new x("Messages", paramaq.a() + "_Connect_Success", "Social", null, null);
  }
  
  public final x b(aq paramaq, String paramString)
  {
    return new x("Messages", paramaq.a() + "_Connect__Fail_" + paramString, "Errors", null, null);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.a.ao
 * JD-Core Version:    0.7.0.1
 */