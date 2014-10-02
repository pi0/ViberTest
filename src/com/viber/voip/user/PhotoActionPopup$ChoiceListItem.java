package com.viber.voip.user;

final class PhotoActionPopup$ChoiceListItem
{
  public static final int ID_EDIT_NAME = 4;
  public static final int ID_IMPORT_FROM_FACEBOOK = 5;
  public static final int ID_PICK_PHOTO = 2;
  public static final int ID_REMOVE = 3;
  public static final int ID_TAKE_PHOTO = 1;
  public static final int ID_USE_AS_PRIMARY;
  private final String mCaption;
  private final int mId;
  
  public PhotoActionPopup$ChoiceListItem(int paramInt, String paramString)
  {
    this.mId = paramInt;
    this.mCaption = paramString;
  }
  
  public int getId()
  {
    return this.mId;
  }
  
  public String toString()
  {
    return this.mCaption;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.user.PhotoActionPopup.ChoiceListItem
 * JD-Core Version:    0.7.0.1
 */