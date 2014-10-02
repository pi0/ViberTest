package com.viber.voip.a;

public class l
  extends c
{
  public final k a = new k("Contact_info_Viber");
  public final k b = new k("Contact_info_nonViber");
  public final k c = new k("Contact_info_with_logs");
  public final c d = new c("Contacts_Viber", null);
  public final c e = new c("Contacts_All", null);
  private final x f = new x("Contacts", "Tap_On_favorite", "", null, null);
  private final x g = new x("Contacts", "Tap_On_me", "", null, null);
  private final x h = new x("Contacts", "Tap_On_contact", "", null, null);
  private final x i = new x("Contacts", "Update_contacts", "", null, null);
  private final x j = new x("Contacts", "Add_new_contact", "", null, null);
  
  private l()
  {
    super("Contacts", null);
  }
  
  public final x a(long paramLong)
  {
    return new x("Contacts", "Sync_contacts_finished", "", Long.valueOf(paramLong), null);
  }
  
  public final x b(long paramLong)
  {
    return new x("Contacts", "Sync_failed", "Errors", Long.valueOf(paramLong), null);
  }
  
  public final x c()
  {
    return this.f;
  }
  
  public final x d()
  {
    return this.g;
  }
  
  public final x e()
  {
    return this.h;
  }
  
  public final x f()
  {
    return this.j;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.a.l
 * JD-Core Version:    0.7.0.1
 */