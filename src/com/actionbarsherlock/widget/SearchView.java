package com.actionbarsherlock.widget;

import android.annotation.TargetApi;
import android.app.PendingIntent;
import android.app.SearchableInfo;
import android.content.ActivityNotFoundException;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.content.res.TypedArray;
import android.database.Cursor;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable.ConstantState;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.ResultReceiver;
import android.support.v4.view.KeyEventCompat;
import android.support.v4.widget.CursorAdapter;
import android.text.Editable;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.text.style.ImageSpan;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.View.OnClickListener;
import android.view.View.OnFocusChangeListener;
import android.view.View.OnKeyListener;
import android.view.ViewTreeObserver;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.inputmethod.InputMethodManager;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.AdapterView.OnItemSelectedListener;
import android.widget.AutoCompleteTextView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView.OnEditorActionListener;
import com.actionbarsherlock.R.attr;
import com.actionbarsherlock.R.dimen;
import com.actionbarsherlock.R.id;
import com.actionbarsherlock.R.layout;
import com.actionbarsherlock.R.styleable;
import com.actionbarsherlock.view.CollapsibleActionView;
import java.lang.reflect.Method;
import java.util.WeakHashMap;

public class SearchView
  extends LinearLayout
  implements CollapsibleActionView
{
  private static final boolean DBG = false;
  private static final String IME_OPTION_NO_MICROPHONE = "nm";
  private static final String LOG_TAG = "SearchView";
  private Bundle mAppSearchData;
  private boolean mClearingFocus;
  private ImageView mCloseButton;
  private int mCollapsedImeOptions;
  private View mDropDownAnchor;
  private boolean mExpandedInActionView;
  private boolean mIconified;
  private boolean mIconifiedByDefault;
  private int mMaxWidth;
  private CharSequence mOldQueryText;
  private final View.OnClickListener mOnClickListener = new SearchView.7(this);
  private SearchView.OnCloseListener mOnCloseListener;
  private final TextView.OnEditorActionListener mOnEditorActionListener = new SearchView.9(this);
  private final AdapterView.OnItemClickListener mOnItemClickListener = new SearchView.10(this);
  private final AdapterView.OnItemSelectedListener mOnItemSelectedListener = new SearchView.11(this);
  private SearchView.OnQueryTextListener mOnQueryChangeListener;
  private View.OnFocusChangeListener mOnQueryTextFocusChangeListener;
  private View.OnClickListener mOnSearchClickListener;
  private SearchView.OnSuggestionListener mOnSuggestionListener;
  private boolean mOpenKeyboardOnExpand = true;
  private final WeakHashMap<String, Drawable.ConstantState> mOutsideDrawablesCache = new WeakHashMap();
  private CharSequence mQueryHint;
  private boolean mQueryRefinement;
  private SearchView.SearchAutoComplete mQueryTextView;
  private Runnable mReleaseCursorRunnable = new SearchView.3(this);
  private View mSearchButton;
  private View mSearchEditFrame;
  private ImageView mSearchHintIcon;
  private View mSearchPlate;
  private SearchableInfoHelper.SearchableInfoWrapper mSearchable;
  private Runnable mShowImeRunnable = new SearchView.1(this);
  private View mSubmitArea;
  private View mSubmitButton;
  private boolean mSubmitButtonEnabled;
  private CursorAdapter mSuggestionsAdapter;
  View.OnKeyListener mTextKeyListener = new SearchView.8(this);
  private TextWatcher mTextWatcher = new SearchView.12(this);
  private Runnable mUpdateDrawableStateRunnable = new SearchView.2(this);
  private CharSequence mUserQuery;
  private final Intent mVoiceAppSearchIntent;
  private View mVoiceButton;
  private boolean mVoiceButtonEnabled;
  private final Intent mVoiceWebSearchIntent;
  
  public SearchView(Context paramContext)
  {
    this(paramContext, null);
  }
  
  @TargetApi(11)
  public SearchView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    ((LayoutInflater)paramContext.getSystemService("layout_inflater")).inflate(R.layout.abs__search_view, this, true);
    this.mSearchButton = findViewById(R.id.abs__search_button);
    this.mQueryTextView = ((SearchView.SearchAutoComplete)findViewById(R.id.abs__search_src_text));
    this.mQueryTextView.setSearchView(this);
    this.mSearchEditFrame = findViewById(R.id.abs__search_edit_frame);
    this.mSearchPlate = findViewById(R.id.abs__search_plate);
    this.mSubmitArea = findViewById(R.id.abs__submit_area);
    this.mSubmitButton = findViewById(R.id.abs__search_go_btn);
    this.mCloseButton = ((ImageView)findViewById(R.id.abs__search_close_btn));
    this.mVoiceButton = findViewById(R.id.abs__search_voice_btn);
    this.mSearchHintIcon = ((ImageView)findViewById(R.id.abs__search_mag_icon));
    this.mSearchButton.setOnClickListener(this.mOnClickListener);
    this.mCloseButton.setOnClickListener(this.mOnClickListener);
    this.mSubmitButton.setOnClickListener(this.mOnClickListener);
    this.mVoiceButton.setOnClickListener(this.mOnClickListener);
    this.mQueryTextView.setOnClickListener(this.mOnClickListener);
    this.mQueryTextView.addTextChangedListener(this.mTextWatcher);
    this.mQueryTextView.setOnEditorActionListener(this.mOnEditorActionListener);
    this.mQueryTextView.setOnItemClickListener(this.mOnItemClickListener);
    this.mQueryTextView.setOnItemSelectedListener(this.mOnItemSelectedListener);
    this.mQueryTextView.setOnKeyListener(this.mTextKeyListener);
    this.mQueryTextView.setOnFocusChangeListener(new SearchView.4(this));
    TypedArray localTypedArray1 = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.SherlockSearchView, 0, 0);
    setIconifiedByDefault(localTypedArray1.getBoolean(3, true));
    int i = localTypedArray1.getDimensionPixelSize(0, -1);
    if (i != -1) {
      setMaxWidth(i);
    }
    CharSequence localCharSequence = localTypedArray1.getText(4);
    if (!TextUtils.isEmpty(localCharSequence)) {
      setQueryHint(localCharSequence);
    }
    int j = localTypedArray1.getInt(2, -1);
    if (j != -1) {
      setImeOptions(j);
    }
    int k = localTypedArray1.getInt(1, -1);
    if (k != -1) {
      setInputType(k);
    }
    localTypedArray1.recycle();
    TypedArray localTypedArray2 = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.SherlockView, 0, 0);
    boolean bool = localTypedArray2.getBoolean(0, true);
    localTypedArray2.recycle();
    setFocusable(bool);
    this.mVoiceWebSearchIntent = new Intent("android.speech.action.WEB_SEARCH");
    this.mVoiceWebSearchIntent.addFlags(268435456);
    this.mVoiceWebSearchIntent.putExtra("android.speech.extra.LANGUAGE_MODEL", "web_search");
    this.mVoiceAppSearchIntent = new Intent("android.speech.action.RECOGNIZE_SPEECH");
    this.mVoiceAppSearchIntent.addFlags(268435456);
    this.mDropDownAnchor = findViewById(this.mQueryTextView.getDropDownAnchor());
    if (this.mDropDownAnchor != null)
    {
      if (Build.VERSION.SDK_INT < 11) {
        break label656;
      }
      this.mDropDownAnchor.addOnLayoutChangeListener(new SearchView.5(this));
    }
    for (;;)
    {
      updateViewsVisibility(this.mIconifiedByDefault);
      updateQueryHint();
      return;
      label656:
      this.mDropDownAnchor.getViewTreeObserver().addOnGlobalLayoutListener(new SearchView.6(this));
    }
  }
  
  private void adjustDropDownSizeAndPosition()
  {
    Resources localResources;
    int i;
    Rect localRect;
    if (this.mDropDownAnchor.getWidth() > 1)
    {
      localResources = getContext().getResources();
      i = this.mSearchPlate.getPaddingLeft();
      localRect = new Rect();
      if (!this.mIconifiedByDefault) {
        break label118;
      }
    }
    label118:
    for (int j = localResources.getDimensionPixelSize(R.dimen.abs__dropdownitem_icon_width) + localResources.getDimensionPixelSize(R.dimen.abs__dropdownitem_text_padding_left);; j = 0)
    {
      this.mQueryTextView.getDropDownBackground().getPadding(localRect);
      this.mQueryTextView.setDropDownHorizontalOffset(i + -(j + localRect.left));
      this.mQueryTextView.setDropDownWidth(j + (this.mDropDownAnchor.getWidth() + localRect.left + localRect.right) - i);
      return;
    }
  }
  
  private Intent createIntent(String paramString1, Uri paramUri, String paramString2, String paramString3, int paramInt, String paramString4)
  {
    Intent localIntent = new Intent(paramString1);
    localIntent.addFlags(268435456);
    if (paramUri != null) {
      localIntent.setData(paramUri);
    }
    localIntent.putExtra("user_query", this.mUserQuery);
    if (paramString3 != null) {
      localIntent.putExtra("query", paramString3);
    }
    if (paramString2 != null) {
      localIntent.putExtra("intent_extra_data_key", paramString2);
    }
    if (this.mAppSearchData != null) {
      localIntent.putExtra("app_data", this.mAppSearchData);
    }
    if (paramInt != 0)
    {
      localIntent.putExtra("action_key", paramInt);
      localIntent.putExtra("action_msg", paramString4);
    }
    localIntent.setComponent(this.mSearchable.getSearchActivity());
    return localIntent;
  }
  
  private Intent createIntentFromSuggestion(Cursor paramCursor, int paramInt, String paramString)
  {
    try
    {
      str1 = SuggestionsAdapter.getColumnString(paramCursor, "suggest_intent_action");
      if (str1 != null) {
        break label208;
      }
      str1 = this.mSearchable.getSuggestIntentAction();
    }
    catch (RuntimeException localRuntimeException1)
    {
      for (;;)
      {
        String str1;
        String str2;
        Object localObject;
        try
        {
          String str3;
          int j = paramCursor.getPosition();
          i = j;
        }
        catch (RuntimeException localRuntimeException2)
        {
          int i = -1;
          continue;
        }
        Log.w("SearchView", "Search suggestions cursor at row " + i + " returned exception.", localRuntimeException1);
        return null;
        label208:
        if (str1 == null)
        {
          str1 = "android.intent.action.SEARCH";
          continue;
          label221:
          if (str2 == null) {
            localObject = null;
          }
        }
      }
    }
    str2 = SuggestionsAdapter.getColumnString(paramCursor, "suggest_intent_data");
    if (str2 == null) {
      str2 = this.mSearchable.getSuggestIntentData();
    }
    if (str2 != null)
    {
      str3 = SuggestionsAdapter.getColumnString(paramCursor, "suggest_intent_data_id");
      if (str3 != null)
      {
        str2 = str2 + "/" + Uri.encode(str3);
        break label221;
        for (;;)
        {
          String str4 = SuggestionsAdapter.getColumnString(paramCursor, "suggest_intent_query");
          return createIntent(str1, (Uri)localObject, SuggestionsAdapter.getColumnString(paramCursor, "suggest_intent_extra_data"), str4, paramInt, paramString);
          Uri localUri = Uri.parse(str2);
          localObject = localUri;
        }
      }
    }
  }
  
  private Intent createVoiceAppSearchIntent(Intent paramIntent, SearchableInfoHelper.SearchableInfoWrapper paramSearchableInfoWrapper)
  {
    ComponentName localComponentName = paramSearchableInfoWrapper.getSearchActivity();
    Intent localIntent1 = new Intent("android.intent.action.SEARCH");
    localIntent1.setComponent(localComponentName);
    PendingIntent localPendingIntent = PendingIntent.getActivity(getContext(), 0, localIntent1, 1073741824);
    Bundle localBundle = new Bundle();
    Intent localIntent2 = new Intent(paramIntent);
    String str1 = "free_form";
    int i = 1;
    Resources localResources = getResources();
    if (paramSearchableInfoWrapper.getVoiceLanguageModeId() != 0) {
      str1 = localResources.getString(paramSearchableInfoWrapper.getVoiceLanguageModeId());
    }
    if (paramSearchableInfoWrapper.getVoicePromptTextId() != 0) {}
    for (String str2 = localResources.getString(paramSearchableInfoWrapper.getVoicePromptTextId());; str2 = null)
    {
      if (paramSearchableInfoWrapper.getVoiceLanguageId() != 0) {}
      for (String str3 = localResources.getString(paramSearchableInfoWrapper.getVoiceLanguageId());; str3 = null)
      {
        if (paramSearchableInfoWrapper.getVoiceMaxResults() != 0) {
          i = paramSearchableInfoWrapper.getVoiceMaxResults();
        }
        localIntent2.putExtra("android.speech.extra.LANGUAGE_MODEL", str1);
        localIntent2.putExtra("android.speech.extra.PROMPT", str2);
        localIntent2.putExtra("android.speech.extra.LANGUAGE", str3);
        localIntent2.putExtra("android.speech.extra.MAX_RESULTS", i);
        String str4 = null;
        if (localComponentName == null) {}
        for (;;)
        {
          localIntent2.putExtra("calling_package", str4);
          localIntent2.putExtra("android.speech.extra.RESULTS_PENDINGINTENT", localPendingIntent);
          localIntent2.putExtra("android.speech.extra.RESULTS_PENDINGINTENT_BUNDLE", localBundle);
          return localIntent2;
          str4 = localComponentName.flattenToShortString();
        }
      }
    }
  }
  
  private Intent createVoiceWebSearchIntent(Intent paramIntent, SearchableInfoHelper.SearchableInfoWrapper paramSearchableInfoWrapper)
  {
    Intent localIntent = new Intent(paramIntent);
    ComponentName localComponentName = paramSearchableInfoWrapper.getSearchActivity();
    if (localComponentName == null) {}
    for (String str = null;; str = localComponentName.flattenToShortString())
    {
      localIntent.putExtra("calling_package", str);
      return localIntent;
    }
  }
  
  private void dismissSuggestions()
  {
    this.mQueryTextView.dismissDropDown();
  }
  
  private static void ensureImeVisible(AutoCompleteTextView paramAutoCompleteTextView, boolean paramBoolean)
  {
    try
    {
      Class[] arrayOfClass = new Class[1];
      arrayOfClass[0] = Boolean.TYPE;
      Method localMethod = AutoCompleteTextView.class.getMethod("ensureImeVisible", arrayOfClass);
      localMethod.setAccessible(true);
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = Boolean.valueOf(paramBoolean);
      localMethod.invoke(paramAutoCompleteTextView, arrayOfObject);
      return;
    }
    catch (Exception localException) {}
  }
  
  private void forceSuggestionQuery()
  {
    try
    {
      Method localMethod1 = SearchView.SearchAutoComplete.class.getMethod("doBeforeTextChanged", new Class[0]);
      Method localMethod2 = SearchView.SearchAutoComplete.class.getMethod("doAfterTextChanged", new Class[0]);
      localMethod1.setAccessible(true);
      localMethod2.setAccessible(true);
      localMethod1.invoke(this.mQueryTextView, new Object[0]);
      localMethod2.invoke(this.mQueryTextView, new Object[0]);
      return;
    }
    catch (Exception localException) {}
  }
  
  private CharSequence getDecoratedHint(CharSequence paramCharSequence)
  {
    if (!this.mIconifiedByDefault) {
      return paramCharSequence;
    }
    SpannableStringBuilder localSpannableStringBuilder = new SpannableStringBuilder("   ");
    localSpannableStringBuilder.append(paramCharSequence);
    Drawable localDrawable = getContext().getResources().getDrawable(getSearchIconId());
    int i = (int)(1.25D * this.mQueryTextView.getTextSize());
    localDrawable.setBounds(0, 0, i, i);
    localSpannableStringBuilder.setSpan(new ImageSpan(localDrawable), 1, 2, 33);
    return localSpannableStringBuilder;
  }
  
  private int getPreferredWidth()
  {
    return getContext().getResources().getDimensionPixelSize(R.dimen.abs__search_view_preferred_width);
  }
  
  private int getSearchIconId()
  {
    TypedValue localTypedValue = new TypedValue();
    getContext().getTheme().resolveAttribute(R.attr.searchViewSearchIcon, localTypedValue, true);
    return localTypedValue.resourceId;
  }
  
  private boolean hasVoiceSearch()
  {
    SearchableInfoHelper.SearchableInfoWrapper localSearchableInfoWrapper = this.mSearchable;
    boolean bool1 = false;
    Intent localIntent;
    if (localSearchableInfoWrapper != null)
    {
      boolean bool2 = this.mSearchable.getVoiceSearchEnabled();
      bool1 = false;
      if (bool2)
      {
        if (!this.mSearchable.getVoiceSearchLaunchWebSearch()) {
          break label80;
        }
        localIntent = this.mVoiceWebSearchIntent;
      }
    }
    for (;;)
    {
      bool1 = false;
      if (localIntent != null)
      {
        ResolveInfo localResolveInfo = getContext().getPackageManager().resolveActivity(localIntent, 65536);
        bool1 = false;
        if (localResolveInfo != null) {
          bool1 = true;
        }
      }
      return bool1;
      label80:
      boolean bool3 = this.mSearchable.getVoiceSearchLaunchRecognizer();
      localIntent = null;
      if (bool3) {
        localIntent = this.mVoiceAppSearchIntent;
      }
    }
  }
  
  static boolean isLandscapeMode(Context paramContext)
  {
    return paramContext.getResources().getConfiguration().orientation == 2;
  }
  
  private boolean isSubmitAreaEnabled()
  {
    return ((this.mSubmitButtonEnabled) || (this.mVoiceButtonEnabled)) && (!isIconified());
  }
  
  private void launchIntent(Intent paramIntent)
  {
    if (paramIntent == null) {
      return;
    }
    try
    {
      getContext().startActivity(paramIntent);
      return;
    }
    catch (RuntimeException localRuntimeException)
    {
      Log.e("SearchView", "Failed launch activity: " + paramIntent, localRuntimeException);
    }
  }
  
  private void launchQuerySearch(int paramInt, String paramString1, String paramString2)
  {
    Intent localIntent = createIntent("android.intent.action.SEARCH", null, null, paramString2, paramInt, paramString1);
    getContext().startActivity(localIntent);
  }
  
  private boolean launchSuggestion(int paramInt1, int paramInt2, String paramString)
  {
    Cursor localCursor = this.mSuggestionsAdapter.getCursor();
    if ((localCursor != null) && (localCursor.moveToPosition(paramInt1)))
    {
      launchIntent(createIntentFromSuggestion(localCursor, paramInt2, paramString));
      return true;
    }
    return false;
  }
  
  private void onCloseClicked()
  {
    if (TextUtils.isEmpty(this.mQueryTextView.getText()))
    {
      if ((this.mIconifiedByDefault) && ((this.mOnCloseListener == null) || (!this.mOnCloseListener.onClose())))
      {
        clearFocus();
        updateViewsVisibility(true);
      }
      return;
    }
    this.mQueryTextView.setText("");
    this.mQueryTextView.requestFocus();
    setImeVisibility(true);
  }
  
  private boolean onItemClicked(int paramInt1, int paramInt2, String paramString)
  {
    boolean bool1;
    if (this.mOnSuggestionListener != null)
    {
      boolean bool2 = this.mOnSuggestionListener.onSuggestionClick(paramInt1);
      bool1 = false;
      if (bool2) {}
    }
    else
    {
      launchSuggestion(paramInt1, 0, null);
      setImeVisibility(false);
      dismissSuggestions();
      bool1 = true;
    }
    return bool1;
  }
  
  private boolean onItemSelected(int paramInt)
  {
    if ((this.mOnSuggestionListener == null) || (!this.mOnSuggestionListener.onSuggestionSelect(paramInt)))
    {
      rewriteQueryFromSuggestion(paramInt);
      return true;
    }
    return false;
  }
  
  private void onSearchClicked()
  {
    updateViewsVisibility(false);
    if (this.mOpenKeyboardOnExpand)
    {
      this.mQueryTextView.requestFocus();
      setImeVisibility(true);
    }
    if (this.mOnSearchClickListener != null) {
      this.mOnSearchClickListener.onClick(this);
    }
  }
  
  private void onSubmitQuery()
  {
    Editable localEditable = this.mQueryTextView.getText();
    if ((localEditable != null) && (TextUtils.getTrimmedLength(localEditable) > 0) && ((this.mOnQueryChangeListener == null) || (!this.mOnQueryChangeListener.onQueryTextSubmit(localEditable.toString()))))
    {
      if (this.mSearchable != null)
      {
        launchQuerySearch(0, null, localEditable.toString());
        setImeVisibility(false);
      }
      dismissSuggestions();
    }
  }
  
  private boolean onSuggestionsKey(View paramView, int paramInt, KeyEvent paramKeyEvent)
  {
    if (this.mSearchable == null) {}
    do
    {
      do
      {
        return false;
      } while ((this.mSuggestionsAdapter == null) || (paramKeyEvent.getAction() != 0) || (!KeyEventCompat.hasNoModifiers(paramKeyEvent)));
      if ((paramInt == 66) || (paramInt == 84) || (paramInt == 61)) {
        return onItemClicked(this.mQueryTextView.getListSelection(), 0, null);
      }
      if ((paramInt == 21) || (paramInt == 22))
      {
        if (paramInt == 21) {}
        for (int i = 0;; i = this.mQueryTextView.length())
        {
          this.mQueryTextView.setSelection(i);
          this.mQueryTextView.setListSelection(0);
          this.mQueryTextView.clearListSelection();
          ensureImeVisible(this.mQueryTextView, true);
          return true;
        }
      }
    } while ((paramInt != 19) || (this.mQueryTextView.getListSelection() != 0));
    return false;
  }
  
  private void onTextChanged(CharSequence paramCharSequence)
  {
    boolean bool1 = true;
    Editable localEditable = this.mQueryTextView.getText();
    this.mUserQuery = localEditable;
    boolean bool2;
    if (!TextUtils.isEmpty(localEditable))
    {
      bool2 = bool1;
      updateSubmitButton(bool2);
      if (bool2) {
        break label96;
      }
    }
    for (;;)
    {
      updateVoiceButton(bool1);
      updateCloseButton();
      updateSubmitArea();
      if ((this.mOnQueryChangeListener != null) && (!TextUtils.equals(paramCharSequence, this.mOldQueryText))) {
        this.mOnQueryChangeListener.onQueryTextChange(paramCharSequence.toString());
      }
      this.mOldQueryText = paramCharSequence.toString();
      return;
      bool2 = false;
      break;
      label96:
      bool1 = false;
    }
  }
  
  private void onVoiceClicked()
  {
    if (this.mSearchable == null) {}
    SearchableInfoHelper.SearchableInfoWrapper localSearchableInfoWrapper;
    do
    {
      return;
      localSearchableInfoWrapper = this.mSearchable;
      try
      {
        if (localSearchableInfoWrapper.getVoiceSearchLaunchWebSearch())
        {
          Intent localIntent2 = createVoiceWebSearchIntent(this.mVoiceWebSearchIntent, localSearchableInfoWrapper);
          getContext().startActivity(localIntent2);
          return;
        }
      }
      catch (ActivityNotFoundException localActivityNotFoundException)
      {
        Log.w("SearchView", "Could not find voice search activity");
        return;
      }
    } while (!localSearchableInfoWrapper.getVoiceSearchLaunchRecognizer());
    Intent localIntent1 = createVoiceAppSearchIntent(this.mVoiceAppSearchIntent, localSearchableInfoWrapper);
    getContext().startActivity(localIntent1);
  }
  
  private void postUpdateFocusedState()
  {
    post(this.mUpdateDrawableStateRunnable);
  }
  
  private void rewriteQueryFromSuggestion(int paramInt)
  {
    Editable localEditable = this.mQueryTextView.getText();
    Cursor localCursor = this.mSuggestionsAdapter.getCursor();
    if (localCursor == null) {
      return;
    }
    if (localCursor.moveToPosition(paramInt))
    {
      CharSequence localCharSequence = this.mSuggestionsAdapter.convertToString(localCursor);
      if (localCharSequence != null)
      {
        setQuery(localCharSequence);
        return;
      }
      setQuery(localEditable);
      return;
    }
    setQuery(localEditable);
  }
  
  private void setImeVisibility(boolean paramBoolean)
  {
    if (paramBoolean) {
      post(this.mShowImeRunnable);
    }
    InputMethodManager localInputMethodManager;
    do
    {
      return;
      removeCallbacks(this.mShowImeRunnable);
      localInputMethodManager = (InputMethodManager)getContext().getSystemService("input_method");
    } while (localInputMethodManager == null);
    localInputMethodManager.hideSoftInputFromWindow(getWindowToken(), 0);
  }
  
  private void setQuery(CharSequence paramCharSequence)
  {
    setText(this.mQueryTextView, paramCharSequence, true);
    SearchView.SearchAutoComplete localSearchAutoComplete = this.mQueryTextView;
    if (TextUtils.isEmpty(paramCharSequence)) {}
    for (int i = 0;; i = paramCharSequence.length())
    {
      localSearchAutoComplete.setSelection(i);
      return;
    }
  }
  
  private static void setText(AutoCompleteTextView paramAutoCompleteTextView, CharSequence paramCharSequence, boolean paramBoolean)
  {
    try
    {
      Class[] arrayOfClass = new Class[2];
      arrayOfClass[0] = CharSequence.class;
      arrayOfClass[1] = Boolean.TYPE;
      Method localMethod = AutoCompleteTextView.class.getMethod("setText", arrayOfClass);
      localMethod.setAccessible(true);
      Object[] arrayOfObject = new Object[2];
      arrayOfObject[0] = paramCharSequence;
      arrayOfObject[1] = Boolean.valueOf(paramBoolean);
      localMethod.invoke(paramAutoCompleteTextView, arrayOfObject);
      return;
    }
    catch (Exception localException)
    {
      paramAutoCompleteTextView.setText(paramCharSequence);
    }
  }
  
  private static void showSoftInputUnchecked(View paramView, InputMethodManager paramInputMethodManager, int paramInt)
  {
    try
    {
      Class localClass = paramInputMethodManager.getClass();
      Class[] arrayOfClass = new Class[2];
      arrayOfClass[0] = Integer.TYPE;
      arrayOfClass[1] = ResultReceiver.class;
      Method localMethod = localClass.getMethod("showSoftInputUnchecked", arrayOfClass);
      localMethod.setAccessible(true);
      Object[] arrayOfObject = new Object[2];
      arrayOfObject[0] = Integer.valueOf(paramInt);
      arrayOfObject[1] = null;
      localMethod.invoke(paramInputMethodManager, arrayOfObject);
      return;
    }
    catch (Exception localException)
    {
      paramInputMethodManager.showSoftInput(paramView, paramInt);
    }
  }
  
  private void updateCloseButton()
  {
    int i = 1;
    int j;
    label35:
    int k;
    label47:
    Drawable localDrawable;
    if (!TextUtils.isEmpty(this.mQueryTextView.getText()))
    {
      j = i;
      if ((j == 0) && ((!this.mIconifiedByDefault) || (this.mExpandedInActionView))) {
        break label85;
      }
      ImageView localImageView = this.mCloseButton;
      k = 0;
      if (i == 0) {
        break label90;
      }
      localImageView.setVisibility(k);
      localDrawable = this.mCloseButton.getDrawable();
      if (j == 0) {
        break label97;
      }
    }
    label85:
    label90:
    label97:
    for (int[] arrayOfInt = ENABLED_STATE_SET;; arrayOfInt = EMPTY_STATE_SET)
    {
      localDrawable.setState(arrayOfInt);
      return;
      j = 0;
      break;
      i = 0;
      break label35;
      k = 8;
      break label47;
    }
  }
  
  private void updateFocusedState()
  {
    boolean bool = this.mQueryTextView.hasFocus();
    Drawable localDrawable1 = this.mSearchPlate.getBackground();
    int[] arrayOfInt1;
    Drawable localDrawable2;
    if (bool)
    {
      arrayOfInt1 = FOCUSED_STATE_SET;
      localDrawable1.setState(arrayOfInt1);
      localDrawable2 = this.mSubmitArea.getBackground();
      if (!bool) {
        break label68;
      }
    }
    label68:
    for (int[] arrayOfInt2 = FOCUSED_STATE_SET;; arrayOfInt2 = EMPTY_STATE_SET)
    {
      localDrawable2.setState(arrayOfInt2);
      invalidate();
      return;
      arrayOfInt1 = EMPTY_STATE_SET;
      break;
    }
  }
  
  private void updateQueryHint()
  {
    if (this.mQueryHint != null) {
      this.mQueryTextView.setHint(getDecoratedHint(this.mQueryHint));
    }
    String str;
    do
    {
      return;
      if (this.mSearchable == null) {
        break;
      }
      int i = this.mSearchable.getHintId();
      str = null;
      if (i != 0) {
        str = getContext().getString(i);
      }
    } while (str == null);
    this.mQueryTextView.setHint(getDecoratedHint(str));
    return;
    this.mQueryTextView.setHint(getDecoratedHint(""));
  }
  
  private void updateSearchAutoComplete()
  {
    int i = 1;
    this.mQueryTextView.setThreshold(this.mSearchable.getSuggestThreshold());
    this.mQueryTextView.setImeOptions(this.mSearchable.getImeOptions());
    int j = this.mSearchable.getInputType();
    if ((j & 0xF) == i)
    {
      j &= 0xFFFEFFFF;
      if (this.mSearchable.getSuggestAuthority() != null) {
        j = 0x80000 | j | 0x10000;
      }
    }
    this.mQueryTextView.setInputType(j);
    if (this.mSuggestionsAdapter != null) {
      this.mSuggestionsAdapter.changeCursor(null);
    }
    if (this.mSearchable.getSuggestAuthority() != null)
    {
      this.mSuggestionsAdapter = new SuggestionsAdapter(getContext(), this, this.mSearchable, this.mOutsideDrawablesCache);
      this.mQueryTextView.setAdapter(this.mSuggestionsAdapter);
      SuggestionsAdapter localSuggestionsAdapter = (SuggestionsAdapter)this.mSuggestionsAdapter;
      if (this.mQueryRefinement) {
        i = 2;
      }
      localSuggestionsAdapter.setQueryRefinement(i);
    }
  }
  
  private void updateSubmitArea()
  {
    int i = 8;
    if ((isSubmitAreaEnabled()) && ((this.mSubmitButton.getVisibility() == 0) || (this.mVoiceButton.getVisibility() == 0))) {
      i = 0;
    }
    this.mSubmitArea.setVisibility(i);
  }
  
  private void updateSubmitButton(boolean paramBoolean)
  {
    int i = 8;
    if ((this.mSubmitButtonEnabled) && (isSubmitAreaEnabled()) && (hasFocus()) && ((paramBoolean) || (!this.mVoiceButtonEnabled))) {
      i = 0;
    }
    this.mSubmitButton.setVisibility(i);
  }
  
  private void updateViewsVisibility(boolean paramBoolean)
  {
    boolean bool1 = true;
    int i = 8;
    this.mIconified = paramBoolean;
    int j;
    boolean bool2;
    label33:
    int k;
    if (paramBoolean)
    {
      j = 0;
      if (TextUtils.isEmpty(this.mQueryTextView.getText())) {
        break label112;
      }
      bool2 = bool1;
      this.mSearchButton.setVisibility(j);
      updateSubmitButton(bool2);
      View localView = this.mSearchEditFrame;
      if (!paramBoolean) {
        break label118;
      }
      k = i;
      label61:
      localView.setVisibility(k);
      ImageView localImageView = this.mSearchHintIcon;
      if (!this.mIconifiedByDefault) {
        break label124;
      }
      label81:
      localImageView.setVisibility(i);
      updateCloseButton();
      if (bool2) {
        break label129;
      }
    }
    for (;;)
    {
      updateVoiceButton(bool1);
      updateSubmitArea();
      return;
      j = i;
      break;
      label112:
      bool2 = false;
      break label33;
      label118:
      k = 0;
      break label61;
      label124:
      i = 0;
      break label81;
      label129:
      bool1 = false;
    }
  }
  
  private void updateVoiceButton(boolean paramBoolean)
  {
    int i;
    if ((this.mVoiceButtonEnabled) && (!isIconified()) && (paramBoolean))
    {
      i = 0;
      this.mSubmitButton.setVisibility(8);
    }
    for (;;)
    {
      this.mVoiceButton.setVisibility(i);
      return;
      i = 8;
    }
  }
  
  public void clearFocus()
  {
    this.mClearingFocus = true;
    setImeVisibility(false);
    super.clearFocus();
    this.mQueryTextView.clearFocus();
    this.mClearingFocus = false;
  }
  
  public int getImeOptions()
  {
    return this.mQueryTextView.getImeOptions();
  }
  
  public int getInputType()
  {
    return this.mQueryTextView.getInputType();
  }
  
  public int getMaxWidth()
  {
    return this.mMaxWidth;
  }
  
  public CharSequence getQuery()
  {
    return this.mQueryTextView.getText();
  }
  
  public CharSequence getQueryHint()
  {
    CharSequence localCharSequence;
    if (this.mQueryHint != null) {
      localCharSequence = this.mQueryHint;
    }
    int i;
    do
    {
      SearchableInfoHelper.SearchableInfoWrapper localSearchableInfoWrapper;
      do
      {
        return localCharSequence;
        localSearchableInfoWrapper = this.mSearchable;
        localCharSequence = null;
      } while (localSearchableInfoWrapper == null);
      i = this.mSearchable.getHintId();
      localCharSequence = null;
    } while (i == 0);
    return getContext().getString(i);
  }
  
  public CursorAdapter getSuggestionsAdapter()
  {
    return this.mSuggestionsAdapter;
  }
  
  public boolean isIconfiedByDefault()
  {
    return this.mIconifiedByDefault;
  }
  
  public boolean isIconified()
  {
    return this.mIconified;
  }
  
  public boolean isQueryRefinementEnabled()
  {
    return this.mQueryRefinement;
  }
  
  public boolean isSubmitButtonEnabled()
  {
    return this.mSubmitButtonEnabled;
  }
  
  public void onActionViewCollapsed()
  {
    clearFocus();
    updateViewsVisibility(true);
    this.mQueryTextView.setImeOptions(this.mCollapsedImeOptions);
    this.mExpandedInActionView = false;
  }
  
  public void onActionViewExpanded()
  {
    if (this.mExpandedInActionView) {
      return;
    }
    this.mExpandedInActionView = true;
    this.mCollapsedImeOptions = this.mQueryTextView.getImeOptions();
    this.mQueryTextView.setImeOptions(0x2000000 | this.mCollapsedImeOptions);
    this.mQueryTextView.setText("");
    setIconified(false);
  }
  
  protected void onDetachedFromWindow()
  {
    removeCallbacks(this.mUpdateDrawableStateRunnable);
    post(this.mReleaseCursorRunnable);
    super.onDetachedFromWindow();
  }
  
  @TargetApi(14)
  public void onInitializeAccessibilityEvent(AccessibilityEvent paramAccessibilityEvent)
  {
    super.onInitializeAccessibilityEvent(paramAccessibilityEvent);
    paramAccessibilityEvent.setClassName(SearchView.class.getName());
  }
  
  @TargetApi(14)
  public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo paramAccessibilityNodeInfo)
  {
    super.onInitializeAccessibilityNodeInfo(paramAccessibilityNodeInfo);
    paramAccessibilityNodeInfo.setClassName(SearchView.class.getName());
  }
  
  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if (this.mSearchable == null) {
      return false;
    }
    return super.onKeyDown(paramInt, paramKeyEvent);
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    if (isIconified())
    {
      super.onMeasure(paramInt1, paramInt2);
      return;
    }
    int i = View.MeasureSpec.getMode(paramInt1);
    int j = View.MeasureSpec.getSize(paramInt1);
    switch (i)
    {
    }
    for (;;)
    {
      super.onMeasure(View.MeasureSpec.makeMeasureSpec(j, 1073741824), paramInt2);
      return;
      if (this.mMaxWidth > 0)
      {
        j = Math.min(this.mMaxWidth, j);
      }
      else
      {
        j = Math.min(getPreferredWidth(), j);
        continue;
        if (this.mMaxWidth > 0)
        {
          j = Math.min(this.mMaxWidth, j);
          continue;
          if (this.mMaxWidth > 0) {
            j = this.mMaxWidth;
          } else {
            j = getPreferredWidth();
          }
        }
      }
    }
  }
  
  void onQueryRefine(CharSequence paramCharSequence)
  {
    setQuery(paramCharSequence);
  }
  
  void onTextFocusChanged()
  {
    updateViewsVisibility(isIconified());
    postUpdateFocusedState();
    if (this.mQueryTextView.hasFocus()) {
      forceSuggestionQuery();
    }
  }
  
  public void onWindowFocusChanged(boolean paramBoolean)
  {
    super.onWindowFocusChanged(paramBoolean);
    postUpdateFocusedState();
  }
  
  public boolean requestFocus(int paramInt, Rect paramRect)
  {
    if (this.mClearingFocus) {}
    while (!isFocusable()) {
      return false;
    }
    if (!isIconified())
    {
      boolean bool = this.mQueryTextView.requestFocus(paramInt, paramRect);
      if (bool) {
        updateViewsVisibility(false);
      }
      return bool;
    }
    return super.requestFocus(paramInt, paramRect);
  }
  
  public void setAppSearchData(Bundle paramBundle)
  {
    this.mAppSearchData = paramBundle;
  }
  
  public void setIconified(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      onCloseClicked();
      return;
    }
    onSearchClicked();
  }
  
  public void setIconifiedByDefault(boolean paramBoolean)
  {
    if (this.mIconifiedByDefault == paramBoolean) {
      return;
    }
    this.mIconifiedByDefault = paramBoolean;
    updateViewsVisibility(paramBoolean);
    updateQueryHint();
  }
  
  public void setImeOptions(int paramInt)
  {
    this.mQueryTextView.setImeOptions(paramInt);
  }
  
  public void setInputType(int paramInt)
  {
    this.mQueryTextView.setInputType(paramInt);
  }
  
  public void setMaxWidth(int paramInt)
  {
    this.mMaxWidth = paramInt;
    requestLayout();
  }
  
  public void setOnCloseListener(SearchView.OnCloseListener paramOnCloseListener)
  {
    this.mOnCloseListener = paramOnCloseListener;
  }
  
  public void setOnQueryTextFocusChangeListener(View.OnFocusChangeListener paramOnFocusChangeListener)
  {
    this.mOnQueryTextFocusChangeListener = paramOnFocusChangeListener;
  }
  
  public void setOnQueryTextListener(SearchView.OnQueryTextListener paramOnQueryTextListener)
  {
    this.mOnQueryChangeListener = paramOnQueryTextListener;
  }
  
  public void setOnSearchClickListener(View.OnClickListener paramOnClickListener)
  {
    this.mOnSearchClickListener = paramOnClickListener;
  }
  
  public void setOnSuggestionListener(SearchView.OnSuggestionListener paramOnSuggestionListener)
  {
    this.mOnSuggestionListener = paramOnSuggestionListener;
  }
  
  public void setOpenKeyboardOnExpand(boolean paramBoolean)
  {
    this.mOpenKeyboardOnExpand = paramBoolean;
  }
  
  public void setQuery(CharSequence paramCharSequence, boolean paramBoolean)
  {
    this.mQueryTextView.setText(paramCharSequence);
    if (paramCharSequence != null)
    {
      this.mQueryTextView.setSelection(this.mQueryTextView.length());
      this.mUserQuery = paramCharSequence;
    }
    if ((paramBoolean) && (!TextUtils.isEmpty(paramCharSequence))) {
      onSubmitQuery();
    }
  }
  
  public void setQueryHint(CharSequence paramCharSequence)
  {
    this.mQueryHint = paramCharSequence;
    updateQueryHint();
  }
  
  public void setQueryHintColor(int paramInt)
  {
    this.mQueryTextView.setHintTextColor(paramInt);
  }
  
  public void setQueryRefinementEnabled(boolean paramBoolean)
  {
    this.mQueryRefinement = paramBoolean;
    SuggestionsAdapter localSuggestionsAdapter;
    if ((this.mSuggestionsAdapter instanceof SuggestionsAdapter))
    {
      localSuggestionsAdapter = (SuggestionsAdapter)this.mSuggestionsAdapter;
      if (!paramBoolean) {
        break label35;
      }
    }
    label35:
    for (int i = 2;; i = 1)
    {
      localSuggestionsAdapter.setQueryRefinement(i);
      return;
    }
  }
  
  @TargetApi(8)
  public void setSearchableInfo(SearchableInfo paramSearchableInfo)
  {
    if (Build.VERSION.SDK_INT < 8) {}
    for (Object localObject = new SearchableInfoHelper.SearchableInfoWrapperLessFroio();; localObject = new SearchableInfoHelper.SearchableInfoWrapperGreatOrEqualFroio(paramSearchableInfo))
    {
      this.mSearchable = ((SearchableInfoHelper.SearchableInfoWrapper)localObject);
      if (this.mSearchable != null)
      {
        updateSearchAutoComplete();
        updateQueryHint();
      }
      this.mVoiceButtonEnabled = hasVoiceSearch();
      if (this.mVoiceButtonEnabled) {
        this.mQueryTextView.setPrivateImeOptions("nm");
      }
      updateViewsVisibility(isIconified());
      return;
    }
  }
  
  public void setSubmitButtonEnabled(boolean paramBoolean)
  {
    this.mSubmitButtonEnabled = paramBoolean;
    updateViewsVisibility(isIconified());
  }
  
  public void setSuggestionsAdapter(CursorAdapter paramCursorAdapter)
  {
    this.mSuggestionsAdapter = paramCursorAdapter;
    this.mQueryTextView.setAdapter(this.mSuggestionsAdapter);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.actionbarsherlock.widget.SearchView
 * JD-Core Version:    0.7.0.1
 */