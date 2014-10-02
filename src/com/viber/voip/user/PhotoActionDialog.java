package com.viber.voip.user;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.content.Context;
import android.content.res.Resources;
import android.text.TextUtils;
import android.view.View;
import android.view.Window;
import android.view.WindowManager.LayoutParams;
import java.util.ArrayList;
import java.util.List;

public class PhotoActionDialog
{
  protected static int MENU_ITEM_EDIT_NAME = 4;
  protected static int MENU_ITEM_IMPORT_FROM_FB = 0;
  protected static int MENU_ITEM_REMOVE_PIC = 0;
  protected static int MENU_ITEM_SELECT_PIC = 0;
  protected static int MENU_ITEM_TAKE_PIC = 0;
  public static final String TAG = "PhotoActionDialog";
  
  static
  {
    MENU_ITEM_SELECT_PIC = 1;
    MENU_ITEM_REMOVE_PIC = 2;
    MENU_ITEM_IMPORT_FROM_FB = 3;
  }
  
  public static Dialog createPopupMenu(Context paramContext, View paramView, PhotoActionPopup.Listener paramListener, int paramInt)
  {
    PhotoActionDialog.1 local1 = new PhotoActionDialog.1(paramListener);
    ArrayList localArrayList = new ArrayList();
    if (TextUtils.isEmpty(UserData.getName())) {}
    for (int i = 2131493711;; i = 2131493712)
    {
      localArrayList.add(paramContext.getString(i));
      MENU_ITEM_EDIT_NAME = -1 + localArrayList.size();
      localArrayList.add(paramContext.getString(2131494406));
      MENU_ITEM_IMPORT_FROM_FB = -1 + localArrayList.size();
      if ((paramInt & 0x4) > 0)
      {
        if ((paramInt & 0x8) > 0) {}
        String str1 = paramContext.getString(2131494015);
        String str2 = paramContext.getString(2131494016);
        localArrayList.add(str1);
        MENU_ITEM_TAKE_PIC = -1 + localArrayList.size();
        localArrayList.add(str2);
        MENU_ITEM_SELECT_PIC = -1 + localArrayList.size();
      }
      if ((paramInt & 0x2) > 0)
      {
        localArrayList.add(paramContext.getString(2131494022));
        MENU_ITEM_REMOVE_PIC = -1 + localArrayList.size();
      }
      AlertDialog localAlertDialog = new AlertDialog.Builder(paramContext).setItems((CharSequence[])localArrayList.toArray(new String[0]), local1).create();
      localAlertDialog.requestWindowFeature(1);
      WindowManager.LayoutParams localLayoutParams = localAlertDialog.getWindow().getAttributes();
      localLayoutParams.gravity = 51;
      localLayoutParams.x = paramView.getLeft();
      localLayoutParams.y = paramView.getBottom();
      int j = paramContext.getResources().getDimensionPixelSize(2131362060);
      if (paramView.getWidth() < j) {
        localLayoutParams.width = j;
      }
      localAlertDialog.getWindow().setAttributes(localLayoutParams);
      return localAlertDialog;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.user.PhotoActionDialog
 * JD-Core Version:    0.7.0.1
 */