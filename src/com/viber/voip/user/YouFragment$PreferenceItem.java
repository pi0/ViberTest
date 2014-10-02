package com.viber.voip.user;

public class YouFragment$PreferenceItem
{
  public int barIcon;
  public int icon;
  public int id;
  public boolean stickerItem;
  public int title;
  
  public YouFragment$PreferenceItem(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    this.id = paramInt1;
    this.icon = paramInt2;
    this.title = paramInt4;
    this.barIcon = paramInt3;
  }
  
  public YouFragment$PreferenceItem(int paramInt1, int paramInt2, int paramInt3, int paramInt4, boolean paramBoolean)
  {
    this(paramInt1, paramInt2, paramInt3, paramInt4);
    this.stickerItem = paramBoolean;
  }
  
  public int getId()
  {
    return this.id;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.user.YouFragment.PreferenceItem
 * JD-Core Version:    0.7.0.1
 */