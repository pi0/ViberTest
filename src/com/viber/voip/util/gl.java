package com.viber.voip.util;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Build.VERSION;
import android.os.PowerManager;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.Window;
import android.widget.AdapterView;
import android.widget.FrameLayout.LayoutParams;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout.LayoutParams;
import android.widget.ListView;
import android.widget.TextView;
import com.actionbarsherlock.app.ActionBar;
import com.actionbarsherlock.app.SherlockFragmentActivity;
import com.actionbarsherlock.internal.ResourcesCompat;
import com.actionbarsherlock.internal.view.menu.ActionMenuItemView;
import com.actionbarsherlock.internal.view.menu.ActionMenuPresenter;
import com.actionbarsherlock.internal.widget.CapitalizingButton;
import com.actionbarsherlock.view.MenuItem;
import com.viber.voip.ViberApplication;
import com.viber.voip.messages.extras.image.h;
import com.viber.voip.settings.j;
import com.viber.voip.settings.l;

public class gl
{
  public static float a(Resources paramResources)
  {
    TypedValue localTypedValue = new TypedValue();
    paramResources.getValue(2131362400, localTypedValue, true);
    return localTypedValue.getFloat();
  }
  
  public static ActionMenuItemView a(MenuItem paramMenuItem, int paramInt1, int paramInt2, View.OnClickListener paramOnClickListener)
  {
    ActionMenuItemView localActionMenuItemView = (ActionMenuItemView)paramMenuItem.getActionView();
    localActionMenuItemView.setBackgroundResource(2130837536);
    ImageButton localImageButton = (ImageButton)localActionMenuItemView.findViewById(2131165496);
    localImageButton.setVisibility(0);
    localImageButton.setImageResource(paramInt1);
    LinearLayout.LayoutParams localLayoutParams = (LinearLayout.LayoutParams)localImageButton.getLayoutParams();
    localLayoutParams.rightMargin = 0;
    localImageButton.setLayoutParams(localLayoutParams);
    CapitalizingButton localCapitalizingButton = (CapitalizingButton)localActionMenuItemView.findViewById(2131165497);
    localCapitalizingButton.setVisibility(0);
    localCapitalizingButton.setText(paramInt2);
    localCapitalizingButton.setOnClickListener(paramOnClickListener);
    localImageButton.setOnClickListener(paramOnClickListener);
    localActionMenuItemView.setOnClickListener(paramOnClickListener);
    return localActionMenuItemView;
  }
  
  public static CharSequence a(SherlockFragmentActivity paramSherlockFragmentActivity)
  {
    ActionBar localActionBar;
    if (paramSherlockFragmentActivity != null)
    {
      localActionBar = paramSherlockFragmentActivity.getSupportActionBar();
      if (localActionBar != null) {}
    }
    else
    {
      return null;
    }
    if (ViberApplication.isTablet())
    {
      View localView = localActionBar.getCustomView();
      if (localView == null) {
        return "";
      }
      TextView localTextView = (TextView)localView.findViewById(2131165494);
      if (localTextView == null) {
        return "";
      }
      return localTextView.getText();
    }
    return localActionBar.getTitle();
  }
  
  public static void a(Activity paramActivity)
  {
    a(paramActivity, false);
  }
  
  public static void a(Activity paramActivity, boolean paramBoolean)
  {
    DisplayMetrics localDisplayMetrics = paramActivity.getResources().getDisplayMetrics();
    boolean bool = e(paramActivity);
    int i1;
    int m;
    int n;
    if ((paramBoolean) && (bool))
    {
      i1 = h.a(paramActivity, 400.0F);
      int i2 = h.a(paramActivity, 650.0F);
      if (localDisplayMetrics.heightPixels > i1)
      {
        m = i2;
        n = i1;
      }
    }
    for (;;)
    {
      paramActivity.getWindow().setBackgroundDrawableResource(2131296433);
      FrameLayout.LayoutParams localLayoutParams = (FrameLayout.LayoutParams)((View)paramActivity.findViewById(16908290).getParent()).getLayoutParams();
      localLayoutParams.width = m;
      localLayoutParams.height = n;
      localLayoutParams.gravity = 17;
      return;
      i1 = (int)(0.98F * localDisplayMetrics.heightPixels);
      break;
      int i = h.a(paramActivity, 650.0F);
      int j = h.a(paramActivity, 400.0F);
      if (localDisplayMetrics.heightPixels > i)
      {
        m = j;
        n = i;
      }
      else
      {
        int k = (int)(0.98F * localDisplayMetrics.heightPixels);
        m = j;
        n = k;
      }
    }
  }
  
  public static void a(View paramView)
  {
    if (paramView == null) {}
    do
    {
      do
      {
        return;
        if (paramView.getBackground() != null) {
          paramView.getBackground().setCallback(null);
        }
      } while (!(paramView instanceof ViewGroup));
      for (int i = 0; i < ((ViewGroup)paramView).getChildCount(); i++) {
        a(((ViewGroup)paramView).getChildAt(i));
      }
    } while ((paramView instanceof AdapterView));
    ((ViewGroup)paramView).removeAllViews();
  }
  
  @SuppressLint({"NewApi"})
  public static void a(View paramView, Drawable paramDrawable)
  {
    if (Build.VERSION.SDK_INT >= 16)
    {
      paramView.setBackground(paramDrawable);
      return;
    }
    paramView.setBackgroundDrawable(paramDrawable);
  }
  
  public static void a(View paramView, Runnable paramRunnable)
  {
    paramView.getViewTreeObserver().addOnGlobalLayoutListener(new gm(paramView, paramRunnable));
  }
  
  public static void a(Window paramWindow)
  {
    View localView = paramWindow.findViewById(2131165313);
    if (localView != null)
    {
      a(localView.getRootView());
      System.gc();
    }
  }
  
  @SuppressLint({"NewApi"})
  public static void a(ImageView paramImageView, int paramInt)
  {
    if (Build.VERSION.SDK_INT >= 16)
    {
      paramImageView.setImageAlpha(paramInt);
      return;
    }
    paramImageView.setAlpha(paramInt);
  }
  
  @TargetApi(11)
  public static void a(ListView paramListView, int paramInt)
  {
    paramListView.setVerticalScrollbarPosition(paramInt);
  }
  
  @TargetApi(11)
  public static void a(ListView paramListView, boolean paramBoolean)
  {
    paramListView.setFastScrollAlwaysVisible(paramBoolean);
  }
  
  public static void a(SherlockFragmentActivity paramSherlockFragmentActivity, String paramString)
  {
    ActionBar localActionBar;
    if (paramSherlockFragmentActivity != null)
    {
      localActionBar = paramSherlockFragmentActivity.getSupportActionBar();
      if (localActionBar != null) {}
    }
    else
    {
      return;
    }
    View localView = localActionBar.getCustomView();
    if ((ViberApplication.isTablet()) && (localView != null))
    {
      TextView localTextView = (TextView)localView.findViewById(2131165494);
      if (TextUtils.isEmpty(paramString))
      {
        localTextView.setVisibility(8);
        return;
      }
      localTextView.setVisibility(0);
      localTextView.setText(paramString);
      return;
    }
    localActionBar.setTitle(paramString);
  }
  
  public static void a(SherlockFragmentActivity paramSherlockFragmentActivity, String paramString, boolean paramBoolean)
  {
    ActionBar localActionBar;
    if (paramSherlockFragmentActivity != null)
    {
      localActionBar = paramSherlockFragmentActivity.getSupportActionBar();
      if (localActionBar != null) {
        break label14;
      }
    }
    label14:
    TextView localTextView;
    do
    {
      View localView;
      do
      {
        return;
        if ((!ViberApplication.isTablet()) || (paramBoolean)) {
          break;
        }
        localView = localActionBar.getCustomView();
      } while (localView == null);
      localTextView = (TextView)localView.findViewById(2131165495);
    } while (localTextView == null);
    if (TextUtils.isEmpty(paramString))
    {
      localTextView.setVisibility(8);
      localTextView.setText("");
      return;
    }
    localTextView.setVisibility(0);
    localTextView.setText(paramString);
    return;
    localActionBar.setSubtitle(paramString);
  }
  
  public static void a(boolean paramBoolean, ActionMenuItemView paramActionMenuItemView)
  {
    if (paramActionMenuItemView != null)
    {
      ImageButton localImageButton = (ImageButton)paramActionMenuItemView.findViewById(2131165496);
      CapitalizingButton localCapitalizingButton = (CapitalizingButton)paramActionMenuItemView.findViewById(2131165497);
      if ((localImageButton != null) && (localCapitalizingButton != null))
      {
        localImageButton.setEnabled(paramBoolean);
        localCapitalizingButton.setEnabled(paramBoolean);
        paramActionMenuItemView.setClickable(paramBoolean);
      }
    }
  }
  
  public static boolean a()
  {
    return Build.VERSION.SDK_INT >= 9;
  }
  
  public static boolean a(Context paramContext)
  {
    return paramContext.getResources().getBoolean(2131230732);
  }
  
  @TargetApi(11)
  public static boolean a(View paramView, boolean paramBoolean)
  {
    if (b())
    {
      paramView.setActivated(paramBoolean);
      return true;
    }
    return false;
  }
  
  public static void b(Activity paramActivity)
  {
    boolean bool1 = ViberApplication.preferences().b(j.q(), j.r());
    boolean bool2 = ViberApplication.preferences().b(j.o(), j.p());
    if ((bool1) && (bool2))
    {
      Window localWindow = paramActivity.getWindow();
      localWindow.addFlags(4718592);
      if (!((PowerManager)paramActivity.getSystemService("power")).isScreenOn()) {
        localWindow.addFlags(2097152);
      }
    }
  }
  
  public static void b(SherlockFragmentActivity paramSherlockFragmentActivity, String paramString)
  {
    a(paramSherlockFragmentActivity, paramString, false);
  }
  
  public static boolean b()
  {
    return Build.VERSION.SDK_INT >= 11;
  }
  
  public static boolean b(Context paramContext)
  {
    DisplayMetrics localDisplayMetrics = paramContext.getResources().getDisplayMetrics();
    return localDisplayMetrics.widthPixels / localDisplayMetrics.density <= 480.0F;
  }
  
  public static boolean c()
  {
    return Build.VERSION.SDK_INT >= 12;
  }
  
  public static boolean c(Context paramContext)
  {
    if (Build.VERSION.SDK_INT >= 13)
    {
      int i = paramContext.getResources().getIdentifier("split_action_bar_is_narrow", "bool", "android");
      if (i > 0) {
        return paramContext.getResources().getBoolean(i);
      }
      return false;
    }
    return ResourcesCompat.getResources_getBoolean(paramContext, 2131230721);
  }
  
  public static boolean d()
  {
    return Build.VERSION.SDK_INT >= 13;
  }
  
  public static boolean d(Context paramContext)
  {
    return !ActionMenuPresenter.reserveOverflow(paramContext);
  }
  
  public static boolean e()
  {
    return Build.VERSION.SDK_INT >= 14;
  }
  
  public static boolean e(Context paramContext)
  {
    return (paramContext != null) && (paramContext.getResources().getBoolean(2131230734));
  }
  
  public static int f(Context paramContext)
  {
    Resources localResources = paramContext.getResources();
    int i = localResources.getIdentifier("status_bar_height", "dimen", "android");
    if (i > 0) {
      return localResources.getDimensionPixelSize(i);
    }
    return 0;
  }
  
  public static boolean f()
  {
    return Build.VERSION.SDK_INT >= 15;
  }
  
  public static float g(Context paramContext)
  {
    Resources localResources = paramContext.getResources();
    TypedValue localTypedValue = new TypedValue();
    localResources.getValue(2131362402, localTypedValue, true);
    return localTypedValue.getFloat();
  }
  
  public static boolean g()
  {
    return Build.VERSION.SDK_INT >= 16;
  }
  
  public static int h()
  {
    if ((Build.MODEL.equals("Kindle Fire")) || (Build.MODEL.equals("KFOT"))) {
      return 60;
    }
    if ((Build.MODEL.equals("KFTT")) || (Build.MODEL.equals("KFSOWI"))) {
      return 78;
    }
    if ((Build.MODEL.equals("KFJWA")) || (Build.MODEL.equals("KFJWI"))) {
      return 90;
    }
    if ((Build.MODEL.equals("KFTHWA")) || (Build.MODEL.equals("KFTHWI"))) {
      return 117;
    }
    if ((Build.MODEL.equals("KFAPWA")) || (Build.MODEL.equals("KFAPWI"))) {
      return 122;
    }
    return 0;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.util.gl
 * JD-Core Version:    0.7.0.1
 */