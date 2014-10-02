.class public Lcom/actionbarsherlock/widget/SearchView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Lcom/actionbarsherlock/view/CollapsibleActionView;


# static fields
.field private static final DBG:Z = false

.field private static final IME_OPTION_NO_MICROPHONE:Ljava/lang/String; = "nm"

.field private static final LOG_TAG:Ljava/lang/String; = "SearchView"


# instance fields
.field private mAppSearchData:Landroid/os/Bundle;

.field private mClearingFocus:Z

.field private mCloseButton:Landroid/widget/ImageView;

.field private mCollapsedImeOptions:I

.field private mDropDownAnchor:Landroid/view/View;

.field private mExpandedInActionView:Z

.field private mIconified:Z

.field private mIconifiedByDefault:Z

.field private mMaxWidth:I

.field private mOldQueryText:Ljava/lang/CharSequence;

.field private final mOnClickListener:Landroid/view/View$OnClickListener;

.field private mOnCloseListener:Lcom/actionbarsherlock/widget/SearchView$OnCloseListener;

.field private final mOnEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

.field private final mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private final mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mOnQueryChangeListener:Lcom/actionbarsherlock/widget/SearchView$OnQueryTextListener;

.field private mOnQueryTextFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field private mOnSearchClickListener:Landroid/view/View$OnClickListener;

.field private mOnSuggestionListener:Lcom/actionbarsherlock/widget/SearchView$OnSuggestionListener;

.field private mOpenKeyboardOnExpand:Z

.field private final mOutsideDrawablesCache:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;"
        }
    .end annotation
.end field

.field private mQueryHint:Ljava/lang/CharSequence;

.field private mQueryRefinement:Z

.field private mQueryTextView:Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;

.field private mReleaseCursorRunnable:Ljava/lang/Runnable;

.field private mSearchButton:Landroid/view/View;

.field private mSearchEditFrame:Landroid/view/View;

.field private mSearchHintIcon:Landroid/widget/ImageView;

.field private mSearchPlate:Landroid/view/View;

.field private mSearchable:Lcom/actionbarsherlock/widget/SearchableInfoHelper$SearchableInfoWrapper;

.field private mShowImeRunnable:Ljava/lang/Runnable;

.field private mSubmitArea:Landroid/view/View;

.field private mSubmitButton:Landroid/view/View;

.field private mSubmitButtonEnabled:Z

.field private mSuggestionsAdapter:Landroid/support/v4/widget/CursorAdapter;

.field mTextKeyListener:Landroid/view/View$OnKeyListener;

.field private mTextWatcher:Landroid/text/TextWatcher;

.field private mUpdateDrawableStateRunnable:Ljava/lang/Runnable;

.field private mUserQuery:Ljava/lang/CharSequence;

.field private final mVoiceAppSearchIntent:Landroid/content/Intent;

.field private mVoiceButton:Landroid/view/View;

.field private mVoiceButtonEnabled:Z

.field private final mVoiceWebSearchIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 257
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/actionbarsherlock/widget/SearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 258
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .parameter
    .parameter
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    const/high16 v6, 0x1000

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 262
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 125
    iput-boolean v5, p0, Lcom/actionbarsherlock/widget/SearchView;->mOpenKeyboardOnExpand:Z

    .line 155
    new-instance v0, Lcom/actionbarsherlock/widget/SearchView$1;

    invoke-direct {v0, p0}, Lcom/actionbarsherlock/widget/SearchView$1;-><init>(Lcom/actionbarsherlock/widget/SearchView;)V

    iput-object v0, p0, Lcom/actionbarsherlock/widget/SearchView;->mShowImeRunnable:Ljava/lang/Runnable;

    .line 166
    new-instance v0, Lcom/actionbarsherlock/widget/SearchView$2;

    invoke-direct {v0, p0}, Lcom/actionbarsherlock/widget/SearchView$2;-><init>(Lcom/actionbarsherlock/widget/SearchView;)V

    iput-object v0, p0, Lcom/actionbarsherlock/widget/SearchView;->mUpdateDrawableStateRunnable:Ljava/lang/Runnable;

    .line 172
    new-instance v0, Lcom/actionbarsherlock/widget/SearchView$3;

    invoke-direct {v0, p0}, Lcom/actionbarsherlock/widget/SearchView$3;-><init>(Lcom/actionbarsherlock/widget/SearchView;)V

    iput-object v0, p0, Lcom/actionbarsherlock/widget/SearchView;->mReleaseCursorRunnable:Ljava/lang/Runnable;

    .line 186
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/actionbarsherlock/widget/SearchView;->mOutsideDrawablesCache:Ljava/util/WeakHashMap;

    .line 880
    new-instance v0, Lcom/actionbarsherlock/widget/SearchView$7;

    invoke-direct {v0, p0}, Lcom/actionbarsherlock/widget/SearchView$7;-><init>(Lcom/actionbarsherlock/widget/SearchView;)V

    iput-object v0, p0, Lcom/actionbarsherlock/widget/SearchView;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 929
    new-instance v0, Lcom/actionbarsherlock/widget/SearchView$8;

    invoke-direct {v0, p0}, Lcom/actionbarsherlock/widget/SearchView$8;-><init>(Lcom/actionbarsherlock/widget/SearchView;)V

    iput-object v0, p0, Lcom/actionbarsherlock/widget/SearchView;->mTextKeyListener:Landroid/view/View$OnKeyListener;

    .line 1161
    new-instance v0, Lcom/actionbarsherlock/widget/SearchView$9;

    invoke-direct {v0, p0}, Lcom/actionbarsherlock/widget/SearchView$9;-><init>(Lcom/actionbarsherlock/widget/SearchView;)V

    iput-object v0, p0, Lcom/actionbarsherlock/widget/SearchView;->mOnEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    .line 1351
    new-instance v0, Lcom/actionbarsherlock/widget/SearchView$10;

    invoke-direct {v0, p0}, Lcom/actionbarsherlock/widget/SearchView$10;-><init>(Lcom/actionbarsherlock/widget/SearchView;)V

    iput-object v0, p0, Lcom/actionbarsherlock/widget/SearchView;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 1362
    new-instance v0, Lcom/actionbarsherlock/widget/SearchView$11;

    invoke-direct {v0, p0}, Lcom/actionbarsherlock/widget/SearchView$11;-><init>(Lcom/actionbarsherlock/widget/SearchView;)V

    iput-object v0, p0, Lcom/actionbarsherlock/widget/SearchView;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 1654
    new-instance v0, Lcom/actionbarsherlock/widget/SearchView$12;

    invoke-direct {v0, p0}, Lcom/actionbarsherlock/widget/SearchView$12;-><init>(Lcom/actionbarsherlock/widget/SearchView;)V

    iput-object v0, p0, Lcom/actionbarsherlock/widget/SearchView;->mTextWatcher:Landroid/text/TextWatcher;

    .line 264
    const-string/jumbo v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 266
    sget v1, Lcom/actionbarsherlock/R$layout;->abs__search_view:I

    invoke-virtual {v0, v1, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 268
    sget v0, Lcom/actionbarsherlock/R$id;->abs__search_button:I

    invoke-virtual {p0, v0}, Lcom/actionbarsherlock/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/actionbarsherlock/widget/SearchView;->mSearchButton:Landroid/view/View;

    .line 269
    sget v0, Lcom/actionbarsherlock/R$id;->abs__search_src_text:I

    invoke-virtual {p0, v0}, Lcom/actionbarsherlock/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;

    iput-object v0, p0, Lcom/actionbarsherlock/widget/SearchView;->mQueryTextView:Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;

    .line 270
    iget-object v0, p0, Lcom/actionbarsherlock/widget/SearchView;->mQueryTextView:Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, p0}, Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;->setSearchView(Lcom/actionbarsherlock/widget/SearchView;)V

    .line 272
    sget v0, Lcom/actionbarsherlock/R$id;->abs__search_edit_frame:I

    invoke-virtual {p0, v0}, Lcom/actionbarsherlock/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/actionbarsherlock/widget/SearchView;->mSearchEditFrame:Landroid/view/View;

    .line 273
    sget v0, Lcom/actionbarsherlock/R$id;->abs__search_plate:I

    invoke-virtual {p0, v0}, Lcom/actionbarsherlock/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/actionbarsherlock/widget/SearchView;->mSearchPlate:Landroid/view/View;

    .line 274
    sget v0, Lcom/actionbarsherlock/R$id;->abs__submit_area:I

    invoke-virtual {p0, v0}, Lcom/actionbarsherlock/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/actionbarsherlock/widget/SearchView;->mSubmitArea:Landroid/view/View;

    .line 275
    sget v0, Lcom/actionbarsherlock/R$id;->abs__search_go_btn:I

    invoke-virtual {p0, v0}, Lcom/actionbarsherlock/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/actionbarsherlock/widget/SearchView;->mSubmitButton:Landroid/view/View;

    .line 276
    sget v0, Lcom/actionbarsherlock/R$id;->abs__search_close_btn:I

    invoke-virtual {p0, v0}, Lcom/actionbarsherlock/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/actionbarsherlock/widget/SearchView;->mCloseButton:Landroid/widget/ImageView;

    .line 277
    sget v0, Lcom/actionbarsherlock/R$id;->abs__search_voice_btn:I

    invoke-virtual {p0, v0}, Lcom/actionbarsherlock/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/actionbarsherlock/widget/SearchView;->mVoiceButton:Landroid/view/View;

    .line 278
    sget v0, Lcom/actionbarsherlock/R$id;->abs__search_mag_icon:I

    invoke-virtual {p0, v0}, Lcom/actionbarsherlock/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/actionbarsherlock/widget/SearchView;->mSearchHintIcon:Landroid/widget/ImageView;

    .line 280
    iget-object v0, p0, Lcom/actionbarsherlock/widget/SearchView;->mSearchButton:Landroid/view/View;

    iget-object v1, p0, Lcom/actionbarsherlock/widget/SearchView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 281
    iget-object v0, p0, Lcom/actionbarsherlock/widget/SearchView;->mCloseButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/actionbarsherlock/widget/SearchView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 282
    iget-object v0, p0, Lcom/actionbarsherlock/widget/SearchView;->mSubmitButton:Landroid/view/View;

    iget-object v1, p0, Lcom/actionbarsherlock/widget/SearchView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 283
    iget-object v0, p0, Lcom/actionbarsherlock/widget/SearchView;->mVoiceButton:Landroid/view/View;

    iget-object v1, p0, Lcom/actionbarsherlock/widget/SearchView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 284
    iget-object v0, p0, Lcom/actionbarsherlock/widget/SearchView;->mQueryTextView:Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;

    iget-object v1, p0, Lcom/actionbarsherlock/widget/SearchView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 286
    iget-object v0, p0, Lcom/actionbarsherlock/widget/SearchView;->mQueryTextView:Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;

    iget-object v1, p0, Lcom/actionbarsherlock/widget/SearchView;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 287
    iget-object v0, p0, Lcom/actionbarsherlock/widget/SearchView;->mQueryTextView:Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;

    iget-object v1, p0, Lcom/actionbarsherlock/widget/SearchView;->mOnEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 288
    iget-object v0, p0, Lcom/actionbarsherlock/widget/SearchView;->mQueryTextView:Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;

    iget-object v1, p0, Lcom/actionbarsherlock/widget/SearchView;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 289
    iget-object v0, p0, Lcom/actionbarsherlock/widget/SearchView;->mQueryTextView:Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;

    iget-object v1, p0, Lcom/actionbarsherlock/widget/SearchView;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 290
    iget-object v0, p0, Lcom/actionbarsherlock/widget/SearchView;->mQueryTextView:Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;

    iget-object v1, p0, Lcom/actionbarsherlock/widget/SearchView;->mTextKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 292
    iget-object v0, p0, Lcom/actionbarsherlock/widget/SearchView;->mQueryTextView:Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;

    new-instance v1, Lcom/actionbarsherlock/widget/SearchView$4;

    invoke-direct {v1, p0}, Lcom/actionbarsherlock/widget/SearchView$4;-><init>(Lcom/actionbarsherlock/widget/SearchView;)V

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 301
    sget-object v0, Lcom/actionbarsherlock/R$styleable;->SherlockSearchView:[I

    invoke-virtual {p1, p2, v0, v4, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 302
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/actionbarsherlock/widget/SearchView;->setIconifiedByDefault(Z)V

    .line 303
    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    .line 304
    if-eq v1, v3, :cond_0

    .line 305
    invoke-virtual {p0, v1}, Lcom/actionbarsherlock/widget/SearchView;->setMaxWidth(I)V

    .line 307
    :cond_0
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 308
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 309
    invoke-virtual {p0, v1}, Lcom/actionbarsherlock/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 311
    :cond_1
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 312
    if-eq v1, v3, :cond_2

    .line 313
    invoke-virtual {p0, v1}, Lcom/actionbarsherlock/widget/SearchView;->setImeOptions(I)V

    .line 315
    :cond_2
    invoke-virtual {v0, v5, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 316
    if-eq v1, v3, :cond_3

    .line 317
    invoke-virtual {p0, v1}, Lcom/actionbarsherlock/widget/SearchView;->setInputType(I)V

    .line 320
    :cond_3
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 324
    sget-object v0, Lcom/actionbarsherlock/R$styleable;->SherlockView:[I

    invoke-virtual {p1, p2, v0, v4, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 325
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 326
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 327
    invoke-virtual {p0, v1}, Lcom/actionbarsherlock/widget/SearchView;->setFocusable(Z)V

    .line 330
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.speech.action.WEB_SEARCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/actionbarsherlock/widget/SearchView;->mVoiceWebSearchIntent:Landroid/content/Intent;

    .line 331
    iget-object v0, p0, Lcom/actionbarsherlock/widget/SearchView;->mVoiceWebSearchIntent:Landroid/content/Intent;

    invoke-virtual {v0, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 332
    iget-object v0, p0, Lcom/actionbarsherlock/widget/SearchView;->mVoiceWebSearchIntent:Landroid/content/Intent;

    const-string/jumbo v1, "android.speech.extra.LANGUAGE_MODEL"

    const-string/jumbo v2, "web_search"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 335
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/actionbarsherlock/widget/SearchView;->mVoiceAppSearchIntent:Landroid/content/Intent;

    .line 336
    iget-object v0, p0, Lcom/actionbarsherlock/widget/SearchView;->mVoiceAppSearchIntent:Landroid/content/Intent;

    invoke-virtual {v0, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 338
    iget-object v0, p0, Lcom/actionbarsherlock/widget/SearchView;->mQueryTextView:Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;->getDropDownAnchor()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/actionbarsherlock/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/actionbarsherlock/widget/SearchView;->mDropDownAnchor:Landroid/view/View;

    .line 339
    iget-object v0, p0, Lcom/actionbarsherlock/widget/SearchView;->mDropDownAnchor:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 340
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_5

    .line 341
    iget-object v0, p0, Lcom/actionbarsherlock/widget/SearchView;->mDropDownAnchor:Landroid/view/View;

    new-instance v1, Lcom/actionbarsherlock/widget/SearchView$5;

    invoke-direct {v1, p0}, Lcom/actionbarsherlock/widget/SearchView$5;-><init>(Lcom/actionbarsherlock/widget/SearchView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 357
    :cond_4
    :goto_0
    iget-boolean v0, p0, Lcom/actionbarsherlock/widget/SearchView;->mIconifiedByDefault:Z

    invoke-direct {p0, v0}, Lcom/actionbarsherlock/widget/SearchView;->updateViewsVisibility(Z)V

    .line 358
    invoke-direct {p0}, Lcom/actionbarsherlock/widget/SearchView;->updateQueryHint()V

    .line 359
    return-void

    .line 349
    :cond_5
    iget-object v0, p0, Lcom/actionbarsherlock/widget/SearchView;->mDropDownAnchor:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/actionbarsherlock/widget/SearchView$6;

    invoke-direct {v1, p0}, Lcom/actionbarsherlock/widget/SearchView$6;-><init>(Lcom/actionbarsherlock/widget/SearchView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0
.end method

.method static synthetic access$000(Landroid/view/View;Landroid/view/inputmethod/InputMethodManager;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 107
    invoke-static {p0, p1, p2}, Lcom/actionbarsherlock/widget/SearchView;->showSoftInputUnchecked(Landroid/view/View;Landroid/view/inputmethod/InputMethodManager;I)V

    return-void
.end method

.method static synthetic access$100(Lcom/actionbarsherlock/widget/SearchView;)V
    .locals 0
    .parameter

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/actionbarsherlock/widget/SearchView;->updateFocusedState()V

    return-void
.end method

.method static synthetic access$1000(Lcom/actionbarsherlock/widget/SearchView;)V
    .locals 0
    .parameter

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/actionbarsherlock/widget/SearchView;->onSubmitQuery()V

    return-void
.end method

.method static synthetic access$1100(Lcom/actionbarsherlock/widget/SearchView;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 107
    iget-object v0, p0, Lcom/actionbarsherlock/widget/SearchView;->mVoiceButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/actionbarsherlock/widget/SearchView;)V
    .locals 0
    .parameter

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/actionbarsherlock/widget/SearchView;->onVoiceClicked()V

    return-void
.end method

.method static synthetic access$1300(Lcom/actionbarsherlock/widget/SearchView;)Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;
    .locals 1
    .parameter

    .prologue
    .line 107
    iget-object v0, p0, Lcom/actionbarsherlock/widget/SearchView;->mQueryTextView:Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/actionbarsherlock/widget/SearchView;)V
    .locals 0
    .parameter

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/actionbarsherlock/widget/SearchView;->forceSuggestionQuery()V

    return-void
.end method

.method static synthetic access$1500(Lcom/actionbarsherlock/widget/SearchView;)Lcom/actionbarsherlock/widget/SearchableInfoHelper$SearchableInfoWrapper;
    .locals 1
    .parameter

    .prologue
    .line 107
    iget-object v0, p0, Lcom/actionbarsherlock/widget/SearchView;->mSearchable:Lcom/actionbarsherlock/widget/SearchableInfoHelper$SearchableInfoWrapper;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/actionbarsherlock/widget/SearchView;Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 107
    invoke-direct {p0, p1, p2, p3}, Lcom/actionbarsherlock/widget/SearchView;->onSuggestionsKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/actionbarsherlock/widget/SearchView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 107
    invoke-direct {p0, p1, p2, p3}, Lcom/actionbarsherlock/widget/SearchView;->launchQuerySearch(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/actionbarsherlock/widget/SearchView;IILjava/lang/String;)Z
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 107
    invoke-direct {p0, p1, p2, p3}, Lcom/actionbarsherlock/widget/SearchView;->onItemClicked(IILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/actionbarsherlock/widget/SearchView;)Landroid/support/v4/widget/CursorAdapter;
    .locals 1
    .parameter

    .prologue
    .line 107
    iget-object v0, p0, Lcom/actionbarsherlock/widget/SearchView;->mSuggestionsAdapter:Landroid/support/v4/widget/CursorAdapter;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/actionbarsherlock/widget/SearchView;I)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/actionbarsherlock/widget/SearchView;->onItemSelected(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Lcom/actionbarsherlock/widget/SearchView;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/actionbarsherlock/widget/SearchView;->onTextChanged(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$2200(Landroid/widget/AutoCompleteTextView;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 107
    invoke-static {p0, p1}, Lcom/actionbarsherlock/widget/SearchView;->ensureImeVisible(Landroid/widget/AutoCompleteTextView;Z)V

    return-void
.end method

.method static synthetic access$2300(Lcom/actionbarsherlock/widget/SearchView;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/actionbarsherlock/widget/SearchView;->setImeVisibility(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/actionbarsherlock/widget/SearchView;)Landroid/view/View$OnFocusChangeListener;
    .locals 1
    .parameter

    .prologue
    .line 107
    iget-object v0, p0, Lcom/actionbarsherlock/widget/SearchView;->mOnQueryTextFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/actionbarsherlock/widget/SearchView;)V
    .locals 0
    .parameter

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/actionbarsherlock/widget/SearchView;->adjustDropDownSizeAndPosition()V

    return-void
.end method

.method static synthetic access$500(Lcom/actionbarsherlock/widget/SearchView;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 107
    iget-object v0, p0, Lcom/actionbarsherlock/widget/SearchView;->mSearchButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$600(Lcom/actionbarsherlock/widget/SearchView;)V
    .locals 0
    .parameter

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/actionbarsherlock/widget/SearchView;->onSearchClicked()V

    return-void
.end method

.method static synthetic access$700(Lcom/actionbarsherlock/widget/SearchView;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 107
    iget-object v0, p0, Lcom/actionbarsherlock/widget/SearchView;->mCloseButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/actionbarsherlock/widget/SearchView;)V
    .locals 0
    .parameter

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/actionbarsherlock/widget/SearchView;->onCloseClicked()V

    return-void
.end method

.method static synthetic access$900(Lcom/actionbarsherlock/widget/SearchView;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 107
    iget-object v0, p0, Lcom/actionbarsherlock/widget/SearchView;->mSubmitButton:Landroid/view/View;

    return-object v0
.end method

.method private adjustDropDownSizeAndPosition()V
    .locals 6

    .prologue
    .line 1315
    iget-object v0, p0, Lcom/actionbarsherlock/widget/SearchView;->mDropDownAnchor:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 1316
    invoke-virtual {p0}, Lcom/actionbarsherlock/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1317
    iget-object v1, p0, Lcom/actionbarsherlock/widget/SearchView;->mSearchPlate:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    .line 1318
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 1319
    iget-boolean v3, p0, Lcom/actionbarsherlock/widget/SearchView;->mIconifiedByDefault:Z

    if-eqz v3, :cond_1

    sget v3, Lcom/actionbarsherlock/R$dimen;->abs__dropdownitem_icon_width:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sget v4, Lcom/actionbarsherlock/R$dimen;->abs__dropdownitem_text_padding_left:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    add-int/2addr v0, v3

    .line 1323
    :goto_0
    iget-object v3, p0, Lcom/actionbarsherlock/widget/SearchView;->mQueryTextView:Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v3}, Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;->getDropDownBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1324
    iget-object v3, p0, Lcom/actionbarsherlock/widget/SearchView;->mQueryTextView:Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;

    iget v4, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v0

    neg-int v4, v4

    add-int/2addr v4, v1

    invoke-virtual {v3, v4}, Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;->setDropDownHorizontalOffset(I)V

    .line 1326
    iget-object v3, p0, Lcom/actionbarsherlock/widget/SearchView;->mQueryTextView:Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;

    iget-object v4, p0, Lcom/actionbarsherlock/widget/SearchView;->mDropDownAnchor:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    iget v5, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v5

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v4

    add-int/2addr v0, v2

    sub-int/2addr v0, v1

    invoke-virtual {v3, v0}, Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;->setDropDownWidth(I)V

    .line 1329
    :cond_0
    return-void

    .line 1319
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private createIntent(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/content/Intent;
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1478
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1479
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1483
    if-eqz p2, :cond_0

    .line 1484
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1486
    :cond_0
    const-string/jumbo v1, "user_query"

    iget-object v2, p0, Lcom/actionbarsherlock/widget/SearchView;->mUserQuery:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 1487
    if-eqz p4, :cond_1

    .line 1488
    const-string/jumbo v1, "query"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1490
    :cond_1
    if-eqz p3, :cond_2

    .line 1491
    const-string/jumbo v1, "intent_extra_data_key"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1493
    :cond_2
    iget-object v1, p0, Lcom/actionbarsherlock/widget/SearchView;->mAppSearchData:Landroid/os/Bundle;

    if-eqz v1, :cond_3

    .line 1494
    const-string/jumbo v1, "app_data"

    iget-object v2, p0, Lcom/actionbarsherlock/widget/SearchView;->mAppSearchData:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1496
    :cond_3
    if-eqz p5, :cond_4

    .line 1497
    const-string/jumbo v1, "action_key"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1498
    const-string/jumbo v1, "action_msg"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1500
    :cond_4
    iget-object v1, p0, Lcom/actionbarsherlock/widget/SearchView;->mSearchable:Lcom/actionbarsherlock/widget/SearchableInfoHelper$SearchableInfoWrapper;

    invoke-interface {v1}, Lcom/actionbarsherlock/widget/SearchableInfoHelper$SearchableInfoWrapper;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1501
    return-object v0
.end method

.method private createIntentFromSuggestion(Landroid/database/Cursor;ILjava/lang/String;)Landroid/content/Intent;
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    .line 1593
    :try_start_0
    const-string/jumbo v0, "suggest_intent_action"

    invoke-static {p1, v0}, Lcom/actionbarsherlock/widget/SuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1595
    if-nez v1, :cond_0

    .line 1596
    iget-object v0, p0, Lcom/actionbarsherlock/widget/SearchView;->mSearchable:Lcom/actionbarsherlock/widget/SearchableInfoHelper$SearchableInfoWrapper;

    invoke-interface {v0}, Lcom/actionbarsherlock/widget/SearchableInfoHelper$SearchableInfoWrapper;->getSuggestIntentAction()Ljava/lang/String;

    move-result-object v1

    .line 1598
    :cond_0
    if-nez v1, :cond_1

    .line 1599
    const-string/jumbo v1, "android.intent.action.SEARCH"

    .line 1603
    :cond_1
    const-string/jumbo v0, "suggest_intent_data"

    invoke-static {p1, v0}, Lcom/actionbarsherlock/widget/SuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1604
    if-nez v0, :cond_2

    .line 1605
    iget-object v0, p0, Lcom/actionbarsherlock/widget/SearchView;->mSearchable:Lcom/actionbarsherlock/widget/SearchableInfoHelper$SearchableInfoWrapper;

    invoke-interface {v0}, Lcom/actionbarsherlock/widget/SearchableInfoHelper$SearchableInfoWrapper;->getSuggestIntentData()Ljava/lang/String;

    move-result-object v0

    .line 1608
    :cond_2
    if-eqz v0, :cond_3

    .line 1609
    const-string/jumbo v2, "suggest_intent_data_id"

    invoke-static {p1, v2}, Lcom/actionbarsherlock/widget/SuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1610
    if-eqz v2, :cond_3

    .line 1611
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1614
    :cond_3
    if-nez v0, :cond_4

    move-object v2, v7

    .line 1616
    :goto_0
    const-string/jumbo v0, "suggest_intent_query"

    invoke-static {p1, v0}, Lcom/actionbarsherlock/widget/SuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1617
    const-string/jumbo v0, "suggest_intent_extra_data"

    invoke-static {p1, v0}, Lcom/actionbarsherlock/widget/SuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move v5, p2

    move-object v6, p3

    .line 1619
    invoke-direct/range {v0 .. v6}, Lcom/actionbarsherlock/widget/SearchView;->createIntent(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1629
    :goto_1
    return-object v0

    .line 1614
    :cond_4
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 1620
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 1623
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    .line 1627
    :goto_2
    const-string/jumbo v2, "SearchView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Search suggestions cursor at row "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, " returned exception."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v7

    .line 1629
    goto :goto_1

    .line 1624
    :catch_1
    move-exception v0

    .line 1625
    const/4 v0, -0x1

    goto :goto_2
.end method

.method private createVoiceAppSearchIntent(Landroid/content/Intent;Lcom/actionbarsherlock/widget/SearchableInfoHelper$SearchableInfoWrapper;)Landroid/content/Intent;
    .locals 10
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1523
    invoke-interface {p2}, Lcom/actionbarsherlock/widget/SearchableInfoHelper$SearchableInfoWrapper;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object v5

    .line 1528
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.SEARCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1529
    invoke-virtual {v0, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1530
    invoke-virtual {p0}, Lcom/actionbarsherlock/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v3, 0x0

    const/high16 v4, 0x4000

    invoke-static {v1, v3, v0, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 1537
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 1542
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1545
    const-string/jumbo v0, "free_form"

    .line 1548
    const/4 v4, 0x1

    .line 1550
    invoke-virtual {p0}, Lcom/actionbarsherlock/widget/SearchView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 1551
    invoke-interface {p2}, Lcom/actionbarsherlock/widget/SearchableInfoHelper$SearchableInfoWrapper;->getVoiceLanguageModeId()I

    move-result v1

    if-eqz v1, :cond_0

    .line 1552
    invoke-interface {p2}, Lcom/actionbarsherlock/widget/SearchableInfoHelper$SearchableInfoWrapper;->getVoiceLanguageModeId()I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1554
    :cond_0
    invoke-interface {p2}, Lcom/actionbarsherlock/widget/SearchableInfoHelper$SearchableInfoWrapper;->getVoicePromptTextId()I

    move-result v1

    if-eqz v1, :cond_4

    .line 1555
    invoke-interface {p2}, Lcom/actionbarsherlock/widget/SearchableInfoHelper$SearchableInfoWrapper;->getVoicePromptTextId()I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1557
    :goto_0
    invoke-interface {p2}, Lcom/actionbarsherlock/widget/SearchableInfoHelper$SearchableInfoWrapper;->getVoiceLanguageId()I

    move-result v9

    if-eqz v9, :cond_3

    .line 1558
    invoke-interface {p2}, Lcom/actionbarsherlock/widget/SearchableInfoHelper$SearchableInfoWrapper;->getVoiceLanguageId()I

    move-result v9

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1560
    :goto_1
    invoke-interface {p2}, Lcom/actionbarsherlock/widget/SearchableInfoHelper$SearchableInfoWrapper;->getVoiceMaxResults()I

    move-result v9

    if-eqz v9, :cond_1

    .line 1561
    invoke-interface {p2}, Lcom/actionbarsherlock/widget/SearchableInfoHelper$SearchableInfoWrapper;->getVoiceMaxResults()I

    move-result v4

    .line 1563
    :cond_1
    const-string/jumbo v9, "android.speech.extra.LANGUAGE_MODEL"

    invoke-virtual {v8, v9, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1564
    const-string/jumbo v0, "android.speech.extra.PROMPT"

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1565
    const-string/jumbo v0, "android.speech.extra.LANGUAGE"

    invoke-virtual {v8, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1566
    const-string/jumbo v0, "android.speech.extra.MAX_RESULTS"

    invoke-virtual {v8, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1567
    const-string/jumbo v0, "calling_package"

    if-nez v5, :cond_2

    :goto_2
    invoke-virtual {v8, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1571
    const-string/jumbo v0, "android.speech.extra.RESULTS_PENDINGINTENT"

    invoke-virtual {v8, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1572
    const-string/jumbo v0, "android.speech.extra.RESULTS_PENDINGINTENT_BUNDLE"

    invoke-virtual {v8, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1574
    return-object v8

    .line 1567
    :cond_2
    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_3
    move-object v3, v2

    goto :goto_1

    :cond_4
    move-object v1, v2

    goto :goto_0
.end method

.method private createVoiceWebSearchIntent(Landroid/content/Intent;Lcom/actionbarsherlock/widget/SearchableInfoHelper$SearchableInfoWrapper;)Landroid/content/Intent;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1508
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1509
    invoke-interface {p2}, Lcom/actionbarsherlock/widget/SearchableInfoHelper$SearchableInfoWrapper;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object v0

    .line 1510
    const-string/jumbo v2, "calling_package"

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1512
    return-object v1

    .line 1510
    :cond_0
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private dismissSuggestions()V
    .locals 1

    .prologue
    .line 1201
    iget-object v0, p0, Lcom/actionbarsherlock/widget/SearchView;->mQueryTextView:Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;->dismissDropDown()V

    .line 1202
    return-void
.end method

.method private static ensureImeVisible(Landroid/widget/AutoCompleteTextView;Z)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 1791
    :try_start_0
    const-class v0, Landroid/widget/AutoCompleteTextView;

    const-string/jumbo v1, "ensureImeVisible"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1792
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 1793
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1797
    :goto_0
    return-void

    .line 1794
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private forceSuggestionQuery()V
    .locals 4

    .prologue
    .line 1635
    :try_start_0
    const-class v0, Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;

    const-string/jumbo v1, "doBeforeTextChanged"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1636
    const-class v1, Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;

    const-string/jumbo v2, "doAfterTextChanged"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1637
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 1638
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 1639
    iget-object v2, p0, Lcom/actionbarsherlock/widget/SearchView;->mQueryTextView:Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1640
    iget-object v0, p0, Lcom/actionbarsherlock/widget/SearchView;->mQueryTextView:Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1644
    :goto_0
    return-void

    .line 1641
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private getDecoratedHint(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 1077
    iget-boolean v0, p0, Lcom/actionbarsherlock/widget/SearchView;->mIconifiedByDefault:Z

    if-nez v0, :cond_0

    .line 1085
    :goto_0
    return-object p1

    .line 1079
    :cond_0
    new-instance v0, Landroid/text/SpannableStringBuilder;

    const-string/jumbo v1, "   "

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1080
    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1081
    invoke-virtual {p0}, Lcom/actionbarsherlock/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {p0}, Lcom/actionbarsherlock/widget/SearchView;->getSearchIconId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1082
    iget-object v2, p0, Lcom/actionbarsherlock/widget/SearchView;->mQueryTextView:Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v2}, Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;->getTextSize()F

    move-result v2

    float-to-double v2, v2

    const-wide/high16 v4, 0x3ff4

    mul-double/2addr v2, v4

    double-to-int v2, v2

    .line 1083
    invoke-virtual {v1, v6, v6, v2, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1084
    new-instance v2, Landroid/text/style/ImageSpan;

    invoke-direct {v2, v1}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    const/4 v1, 0x1

    const/4 v3, 0x2

    const/16 v4, 0x21

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    move-object p1, v0

    .line 1085
    goto :goto_0
.end method

.method private getPreferredWidth()I
    .locals 2

    .prologue
    .line 771
    invoke-virtual {p0}, Lcom/actionbarsherlock/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/actionbarsherlock/R$dimen;->abs__search_view_preferred_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method private getSearchIconId()I
    .locals 4

    .prologue
    .line 1069
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 1070
    invoke-virtual {p0}, Lcom/actionbarsherlock/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v2, Lcom/actionbarsherlock/R$attr;->searchViewSearchIcon:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1072
    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    return v0
.end method

.method private hasVoiceSearch()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 792
    iget-object v1, p0, Lcom/actionbarsherlock/widget/SearchView;->mSearchable:Lcom/actionbarsherlock/widget/SearchableInfoHelper$SearchableInfoWrapper;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/actionbarsherlock/widget/SearchView;->mSearchable:Lcom/actionbarsherlock/widget/SearchableInfoHelper$SearchableInfoWrapper;

    invoke-interface {v1}, Lcom/actionbarsherlock/widget/SearchableInfoHelper$SearchableInfoWrapper;->getVoiceSearchEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 793
    const/4 v1, 0x0

    .line 794
    iget-object v2, p0, Lcom/actionbarsherlock/widget/SearchView;->mSearchable:Lcom/actionbarsherlock/widget/SearchableInfoHelper$SearchableInfoWrapper;

    invoke-interface {v2}, Lcom/actionbarsherlock/widget/SearchableInfoHelper$SearchableInfoWrapper;->getVoiceSearchLaunchWebSearch()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 795
    iget-object v1, p0, Lcom/actionbarsherlock/widget/SearchView;->mVoiceWebSearchIntent:Landroid/content/Intent;

    .line 799
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 800
    invoke-virtual {p0}, Lcom/actionbarsherlock/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/high16 v3, 0x1

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 802
    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 805
    :cond_1
    return v0

    .line 796
    :cond_2
    iget-object v2, p0, Lcom/actionbarsherlock/widget/SearchView;->mSearchable:Lcom/actionbarsherlock/widget/SearchableInfoHelper$SearchableInfoWrapper;

    invoke-interface {v2}, Lcom/actionbarsherlock/widget/SearchableInfoHelper$SearchableInfoWrapper;->getVoiceSearchLaunchRecognizer()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 797
    iget-object v1, p0, Lcom/actionbarsherlock/widget/SearchView;->mVoiceAppSearchIntent:Landroid/content/Intent;

    goto :goto_0
.end method

.method static isLandscapeMode(Landroid/content/Context;)Z
    .locals 2
    .parameter

    .prologue
    .line 1647
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSubmitAreaEnabled()Z
    .locals 1

    .prologue
    .line 809
    iget-boolean v0, p0, Lcom/actionbarsherlock/widget/SearchView;->mSubmitButtonEnabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/actionbarsherlock/widget/SearchView;->mVoiceButtonEnabled:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/actionbarsherlock/widget/SearchView;->isIconified()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private launchIntent(Landroid/content/Intent;)V
    .locals 4
    .parameter

    .prologue
    .line 1435
    if-nez p1, :cond_0

    .line 1445
    :goto_0
    return-void

    .line 1441
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/actionbarsherlock/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1442
    :catch_0
    move-exception v0

    .line 1443
    const-string/jumbo v1, "SearchView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed launch activity: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private launchQuerySearch(ILjava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1457
    const-string/jumbo v1, "android.intent.action.SEARCH"

    move-object v0, p0

    move-object v3, v2

    move-object v4, p3

    move v5, p1

    move-object v6, p2

    .line 1458
    invoke-direct/range {v0 .. v6}, Lcom/actionbarsherlock/widget/SearchView;->createIntent(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1459
    invoke-virtual {p0}, Lcom/actionbarsherlock/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1460
    return-void
.end method

.method private launchSuggestion(IILjava/lang/String;)Z
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1418
    iget-object v0, p0, Lcom/actionbarsherlock/widget/SearchView;->mSuggestionsAdapter:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v0}, Landroid/support/v4/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 1419
    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1421
    invoke-direct {p0, v0, p2, p3}, Lcom/actionbarsherlock/widget/SearchView;->createIntentFromSuggestion(Landroid/database/Cursor;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1424
    invoke-direct {p0, v0}, Lcom/actionbarsherlock/widget/SearchView;->launchIntent(Landroid/content/Intent;)V

    .line 1426
    const/4 v0, 0x1

    .line 1428
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onCloseClicked()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1205
    iget-object v0, p0, Lcom/actionbarsherlock/widget/SearchView;->mQueryTextView:Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 1206
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1207
    iget-boolean v0, p0, Lcom/actionbarsherlock/widget/SearchView;->mIconifiedByDefault:Z

    if-eqz v0, :cond_1

    .line 1209
    iget-object v0, p0, Lcom/actionbarsherlock/widget/SearchView;->mOnCloseListener:Lcom/actionbarsherlock/widget/SearchView$OnCloseListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/actionbarsherlock/widget/SearchView;->mOnCloseListener:Lcom/actionbarsherlock/widget/SearchView$OnCloseListener;

    invoke-interface {v0}, Lcom/actionbarsherlock/widget/SearchView$OnCloseListener;->onClose()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1211
    :cond_0
    invoke-virtual {p0}, Lcom/actionbarsherlock/widget/SearchView;->clearFocus()V

    .line 1213
    invoke-direct {p0, v2}, Lcom/actionbarsherlock/widget/SearchView;->updateViewsVisibility(Z)V

    .line 1222
    :cond_1
    :goto_0
    return-void

    .line 1217
    :cond_2
    iget-object v0, p0, Lcom/actionbarsherlock/widget/SearchView;->mQueryTextView:Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;->setText(Ljava/lang/CharSequence;)V

    .line 1218
    iget-object v0, p0, Lcom/actionbarsherlock/widget/SearchView;->mQueryTextView:Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;->requestFocus()Z

    .line 1219
    invoke-direct {p0, v2}, Lcom/actionbarsherlock/widget/SearchView;->setImeVisibility(Z)V

    goto :goto_0
.end method

.method private onItemClicked(IILjava/lang/String;)Z
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1332
    iget-object v1, p0, Lcom/actionbarsherlock/widget/SearchView;->mOnSuggestionListener:Lcom/actionbarsherlock/widget/SearchView$OnSuggestionListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/actionbarsherlock/widget/SearchView;->mOnSuggestionListener:Lcom/actionbarsherlock/widget/SearchView$OnSuggestionListener;

    invoke-interface {v1, p1}, Lcom/actionbarsherlock/widget/SearchView$OnSuggestionListener;->onSuggestionClick(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1334
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/actionbarsherlock/widget/SearchView;->launchSuggestion(IILjava/lang/String;)Z

    .line 1335
    invoke-direct {p0, v0}, Lcom/actionbarsherlock/widget/SearchView;->setImeVisibility(Z)V

    .line 1336
    invoke-direct {p0}, Lcom/actionbarsherlock/widget/SearchView;->dismissSuggestions()V

    .line 1337
    const/4 v0, 0x1

    .line 1339
    :cond_1
    return v0
.end method

.method private onItemSelected(I)Z
    .locals 1
    .parameter

    .prologue
    .line 1343
    iget-object v0, p0, Lcom/actionbarsherlock/widget/SearchView;->mOnSuggestionListener:Lcom/actionbarsherlock/widget/SearchView$OnSuggestionListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/actionbarsherlock/widget/SearchView;->mOnSuggestionListener:Lcom/actionbarsherlock/widget/SearchView$OnSuggestionListener;

    invoke-interface {v0, p1}, Lcom/actionbarsherlock/widget/SearchView$OnSuggestionListener;->onSuggestionSelect(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1345
    :cond_0
    invoke-direct {p0, p1}, Lcom/actionbarsherlock/widget/SearchView;->rewriteQueryFromSuggestion(I)V

    .line 1346
    const/4 v0, 0x1

    .line 1348
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onSearchClicked()V
    .locals 1

    .prologue
    .line 1225
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/actionbarsherlock/widget/SearchView;->updateViewsVisibility(Z)V

    .line 1226
    iget-boolean v0, p0, Lcom/actionbarsherlock/widget/SearchView;->mOpenKeyboardOnExpand:Z

    if-eqz v0, :cond_0

    .line 1227
    iget-object v0, p0, Lcom/actionbarsherlock/widget/SearchView;->mQueryTextView:Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;->requestFocus()Z

    .line 1228
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/actionbarsherlock/widget/SearchView;->setImeVisibility(Z)V

    .line 1230
    :cond_0
    iget-object v0, p0, Lcom/actionbarsherlock/widget/SearchView;->mOnSearchClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_1

    .line 1231
    iget-object v0, p0, Lcom/actionbarsherlock/widget/SearchView;->mOnSearchClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 1233
    :cond_1
    return-void
.end method

.method private onSubmitQuery()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1187
    iget-object v0, p0, Lcom/actionbarsherlock/widget/SearchView;->mQueryTextView:Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 1188
    if-eqz v0, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v1

    if-lez v1, :cond_2

    .line 1189
    iget-object v1, p0, Lcom/actionbarsherlock/widget/SearchView;->mOnQueryChangeListener:Lcom/actionbarsherlock/widget/SearchView$OnQueryTextListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/actionbarsherlock/widget/SearchView;->mOnQueryChangeListener:Lcom/actionbarsherlock/widget/SearchView$OnQueryTextListener;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/actionbarsherlock/widget/SearchView$OnQueryTextListener;->onQueryTextSubmit(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1191
    :cond_0
    iget-object v1, p0, Lcom/actionbarsherlock/widget/SearchView;->mSearchable:Lcom/actionbarsherlock/widget/SearchableInfoHelper$SearchableInfoWrapper;

    if-eqz v1, :cond_1

    .line 1192
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v3, v1, v0}, Lcom/actionbarsherlock/widget/SearchView;->launchQuerySearch(ILjava/lang/String;Ljava/lang/String;)V

    .line 1193
    invoke-direct {p0, v3}, Lcom/actionbarsherlock/widget/SearchView;->setImeVisibility(Z)V

    .line 1195
    :cond_1
    invoke-direct {p0}, Lcom/actionbarsherlock/widget/SearchView;->dismissSuggestions()V

    .line 1198
    :cond_2
    return-void
.end method

.method private onSuggestionsKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v3, 0x15

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 981
    iget-object v0, p0, Lcom/actionbarsherlock/widget/SearchView;->mSearchable:Lcom/actionbarsherlock/widget/SearchableInfoHelper$SearchableInfoWrapper;

    if-nez v0, :cond_1

    .line 1038
    :cond_0
    :goto_0
    return v1

    .line 984
    :cond_1
    iget-object v0, p0, Lcom/actionbarsherlock/widget/SearchView;->mSuggestionsAdapter:Landroid/support/v4/widget/CursorAdapter;

    if-eqz v0, :cond_0

    .line 987
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p3}, Landroid/support/v4/view/KeyEventCompat;->hasNoModifiers(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 990
    const/16 v0, 0x42

    if-eq p2, v0, :cond_2

    const/16 v0, 0x54

    if-eq p2, v0, :cond_2

    const/16 v0, 0x3d

    if-ne p2, v0, :cond_3

    .line 992
    :cond_2
    iget-object v0, p0, Lcom/actionbarsherlock/widget/SearchView;->mQueryTextView:Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;->getListSelection()I

    move-result v0

    .line 993
    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/actionbarsherlock/widget/SearchView;->onItemClicked(IILjava/lang/String;)Z

    move-result v1

    goto :goto_0

    .line 998
    :cond_3
    if-eq p2, v3, :cond_4

    const/16 v0, 0x16

    if-ne p2, v0, :cond_6

    .line 1003
    :cond_4
    if-ne p2, v3, :cond_5

    move v0, v1

    .line 1005
    :goto_1
    iget-object v3, p0, Lcom/actionbarsherlock/widget/SearchView;->mQueryTextView:Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v3, v0}, Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;->setSelection(I)V

    .line 1006
    iget-object v0, p0, Lcom/actionbarsherlock/widget/SearchView;->mQueryTextView:Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;->setListSelection(I)V

    .line 1007
    iget-object v0, p0, Lcom/actionbarsherlock/widget/SearchView;->mQueryTextView:Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;->clearListSelection()V

    .line 1008
    iget-object v0, p0, Lcom/actionbarsherlock/widget/SearchView;->mQueryTextView:Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;

    invoke-static {v0, v2}, Lcom/actionbarsherlock/widget/SearchView;->ensureImeVisible(Landroid/widget/AutoCompleteTextView;Z)V

    move v1, v2

    .line 1010
    goto :goto_0

    .line 1003
    :cond_5
    iget-object v0, p0, Lcom/actionbarsherlock/widget/SearchView;->mQueryTextView:Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;->length()I

    move-result v0

    goto :goto_1

    .line 1014
    :cond_6
    const/16 v0, 0x13

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/actionbarsherlock/widget/SearchView;->mQueryTextView:Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;->getListSelection()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0
.end method

.method private onTextChanged(Ljava/lang/CharSequence;)V
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1173
    iget-object v0, p0, Lcom/actionbarsherlock/widget/SearchView;->mQueryTextView:Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 1174
    iput-object v0, p0, Lcom/actionbarsherlock/widget/SearchView;->mUserQuery:Ljava/lang/CharSequence;

    .line 1175
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 1176
    :goto_0
    invoke-direct {p0, v0}, Lcom/actionbarsherlock/widget/SearchView;->updateSubmitButton(Z)V

    .line 1177
    if-nez v0, :cond_2

    :goto_1
    invoke-direct {p0, v1}, Lcom/actionbarsherlock/widget/SearchView;->updateVoiceButton(Z)V

    .line 1178
    invoke-direct {p0}, Lcom/actionbarsherlock/widget/SearchView;->updateCloseButton()V

    .line 1179
    invoke-direct {p0}, Lcom/actionbarsherlock/widget/SearchView;->updateSubmitArea()V

    .line 1180
    iget-object v0, p0, Lcom/actionbarsherlock/widget/SearchView;->mOnQueryChangeListener:Lcom/actionbarsherlock/widget/SearchView$OnQueryTextListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/actionbarsherlock/widget/SearchView;->mOldQueryText:Ljava/lang/CharSequence;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1181
    iget-object v0, p0, Lcom/actionbarsherlock/widget/SearchView;->mOnQueryChangeListener:Lcom/actionbarsherlock/widget/SearchView$OnQueryTextListener;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/actionbarsherlock/widget/SearchView$OnQueryTextListener;->onQueryTextChange(Ljava/lang/String;)Z

    .line 1183
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/actionbarsherlock/widget/SearchView;->mOldQueryText:Ljava/lang/CharSequence;

    .line 1184
    return-void

    :cond_1
    move v0, v2

    .line 1175
    goto :goto_0

    :cond_2
    move v1, v2

    .line 1177
    goto :goto_1
.end method

.method private onVoiceClicked()V
    .locals 2

    .prologue
    .line 1237
    iget-object v0, p0, Lcom/actionbarsherlock/widget/SearchView;->mSearchable:Lcom/actionbarsherlock/widget/SearchableInfoHelper$SearchableInfoWrapper;

    if-nez v0, :cond_1

    .line 1256
    :cond_0
    :goto_0
    return-void

    .line 1240
    :cond_1
    iget-object v0, p0, Lcom/actionbarsherlock/widget/SearchView;->mSearchable:Lcom/actionbarsherlock/widget/SearchableInfoHelper$SearchableInfoWrapper;

    .line 1242
    :try_start_0
    invoke-interface {v0}, Lcom/actionbarsherlock/widget/SearchableInfoHelper$SearchableInfoWrapper;->getVoiceSearchLaunchWebSearch()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1243
    iget-object v1, p0, Lcom/actionbarsherlock/widget/SearchView;->mVoiceWebSearchIntent:Landroid/content/Intent;

    invoke-direct {p0, v1, v0}, Lcom/actionbarsherlock/widget/SearchView;->createVoiceWebSearchIntent(Landroid/content/Intent;Lcom/actionbarsherlock/widget/SearchableInfoHelper$SearchableInfoWrapper;)Landroid/content/Intent;

    move-result-object v0

    .line 1245
    invoke-virtual {p0}, Lcom/actionbarsherlock/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1251
    :catch_0
    move-exception v0

    .line 1254
    const-string/jumbo v0, "SearchView"

    const-string/jumbo v1, "Could not find voice search activity"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1246
    :cond_2
    :try_start_1
    invoke-interface {v0}, Lcom/actionbarsherlock/widget/SearchableInfoHelper$SearchableInfoWrapper;->getVoiceSearchLaunchRecognizer()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1247
    iget-object v1, p0, Lcom/actionbarsherlock/widget/SearchView;->mVoiceAppSearchIntent:Landroid/content/Intent;

    invoke-direct {p0, v1, v0}, Lcom/actionbarsherlock/widget/SearchView;->createVoiceAppSearchIntent(Landroid/content/Intent;Lcom/actionbarsherlock/widget/SearchableInfoHelper$SearchableInfoWrapper;)Landroid/content/Intent;

    move-result-object v0

    .line 1249
    invoke-virtual {p0}, Lcom/actionbarsherlock/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private postUpdateFocusedState()V
    .locals 1

    .prologue
    .line 841
    iget-object v0, p0, Lcom/actionbarsherlock/widget/SearchView;->mUpdateDrawableStateRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/actionbarsherlock/widget/SearchView;->post(Ljava/lang/Runnable;)Z

    .line 842
    return-void
.end method

.method private rewriteQueryFromSuggestion(I)V
    .locals 3
    .parameter

    .prologue
    .line 1385
    iget-object v0, p0, Lcom/actionbarsherlock/widget/SearchView;->mQueryTextView:Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 1386
    iget-object v1, p0, Lcom/actionbarsherlock/widget/SearchView;->mSuggestionsAdapter:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v1}, Landroid/support/v4/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    .line 1387
    if-nez v1, :cond_0

    .line 1405
    :goto_0
    return-void

    .line 1390
    :cond_0
    invoke-interface {v1, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1392
    iget-object v2, p0, Lcom/actionbarsherlock/widget/SearchView;->mSuggestionsAdapter:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v2, v1}, Landroid/support/v4/widget/CursorAdapter;->convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1393
    if-eqz v1, :cond_1

    .line 1396
    invoke-direct {p0, v1}, Lcom/actionbarsherlock/widget/SearchView;->setQuery(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1399
    :cond_1
    invoke-direct {p0, v0}, Lcom/actionbarsherlock/widget/SearchView;->setQuery(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1403
    :cond_2
    invoke-direct {p0, v0}, Lcom/actionbarsherlock/widget/SearchView;->setQuery(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setImeVisibility(Z)V
    .locals 3
    .parameter

    .prologue
    .line 859
    if-eqz p1, :cond_1

    .line 860
    iget-object v0, p0, Lcom/actionbarsherlock/widget/SearchView;->mShowImeRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/actionbarsherlock/widget/SearchView;->post(Ljava/lang/Runnable;)Z

    .line 870
    :cond_0
    :goto_0
    return-void

    .line 862
    :cond_1
    iget-object v0, p0, Lcom/actionbarsherlock/widget/SearchView;->mShowImeRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/actionbarsherlock/widget/SearchView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 863
    invoke-virtual {p0}, Lcom/actionbarsherlock/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 866
    if-eqz v0, :cond_0

    .line 867
    invoke-virtual {p0}, Lcom/actionbarsherlock/widget/SearchView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method

.method private setQuery(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter

    .prologue
    .line 1451
    iget-object v0, p0, Lcom/actionbarsherlock/widget/SearchView;->mQueryTextView:Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/actionbarsherlock/widget/SearchView;->setText(Landroid/widget/AutoCompleteTextView;Ljava/lang/CharSequence;Z)V

    .line 1453
    iget-object v1, p0, Lcom/actionbarsherlock/widget/SearchView;->mQueryTextView:Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;->setSelection(I)V

    .line 1454
    return-void

    .line 1453
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    goto :goto_0
.end method

.method private static setText(Landroid/widget/AutoCompleteTextView;Ljava/lang/CharSequence;Z)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1812
    :try_start_0
    const-class v0, Landroid/widget/AutoCompleteTextView;

    const-string/jumbo v1, "setText"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/CharSequence;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1813
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 1814
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1819
    :goto_0
    return-void

    .line 1815
    :catch_0
    move-exception v0

    .line 1817
    invoke-virtual {p0, p1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private static showSoftInputUnchecked(Landroid/view/View;Landroid/view/inputmethod/InputMethodManager;I)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1801
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "showSoftInputUnchecked"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Landroid/os/ResultReceiver;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1802
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 1803
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput-object v3, v1, v2

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1808
    :goto_0
    return-void

    .line 1804
    :catch_0
    move-exception v0

    .line 1806
    invoke-virtual {p1, p0, p2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    goto :goto_0
.end method

.method private updateCloseButton()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 832
    iget-object v2, p0, Lcom/actionbarsherlock/widget/SearchView;->mQueryTextView:Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v2}, Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    move v2, v0

    .line 835
    :goto_0
    if-nez v2, :cond_0

    iget-boolean v3, p0, Lcom/actionbarsherlock/widget/SearchView;->mIconifiedByDefault:Z

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/actionbarsherlock/widget/SearchView;->mExpandedInActionView:Z

    if-nez v3, :cond_2

    .line 836
    :cond_0
    :goto_1
    iget-object v3, p0, Lcom/actionbarsherlock/widget/SearchView;->mCloseButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    :goto_2
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 837
    iget-object v0, p0, Lcom/actionbarsherlock/widget/SearchView;->mCloseButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v2, :cond_4

    sget-object v0, Lcom/actionbarsherlock/widget/SearchView;->ENABLED_STATE_SET:[I

    :goto_3
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 838
    return-void

    :cond_1
    move v2, v1

    .line 832
    goto :goto_0

    :cond_2
    move v0, v1

    .line 835
    goto :goto_1

    .line 836
    :cond_3
    const/16 v1, 0x8

    goto :goto_2

    .line 837
    :cond_4
    sget-object v0, Lcom/actionbarsherlock/widget/SearchView;->EMPTY_STATE_SET:[I

    goto :goto_3
.end method

.method private updateFocusedState()V
    .locals 3

    .prologue
    .line 845
    iget-object v0, p0, Lcom/actionbarsherlock/widget/SearchView;->mQueryTextView:Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;->hasFocus()Z

    move-result v1

    .line 846
    iget-object v0, p0, Lcom/actionbarsherlock/widget/SearchView;->mSearchPlate:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v1, :cond_0

    sget-object v0, Lcom/actionbarsherlock/widget/SearchView;->FOCUSED_STATE_SET:[I

    :goto_0
    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 847
    iget-object v0, p0, Lcom/actionbarsherlock/widget/SearchView;->mSubmitArea:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v1, :cond_1

    sget-object v0, Lcom/actionbarsherlock/widget/SearchView;->FOCUSED_STATE_SET:[I

    :goto_1
    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 848
    invoke-virtual {p0}, Lcom/actionbarsherlock/widget/SearchView;->invalidate()V

    .line 849
    return-void

    .line 846
    :cond_0
    sget-object v0, Lcom/actionbarsherlock/widget/SearchView;->EMPTY_STATE_SET:[I

    goto :goto_0

    .line 847
    :cond_1
    sget-object v0, Lcom/actionbarsherlock/widget/SearchView;->EMPTY_STATE_SET:[I

    goto :goto_1
.end method

.method private updateQueryHint()V
    .locals 2

    .prologue
    .line 1089
    iget-object v0, p0, Lcom/actionbarsherlock/widget/SearchView;->mQueryHint:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 1090
    iget-object v0, p0, Lcom/actionbarsherlock/widget/SearchView;->mQueryTextView:Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;

    iget-object v1, p0, Lcom/actionbarsherlock/widget/SearchView;->mQueryHint:Ljava/lang/CharSequence;

    invoke-direct {p0, v1}, Lcom/actionbarsherlock/widget/SearchView;->getDecoratedHint(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;->setHint(Ljava/lang/CharSequence;)V

    .line 1103
    :cond_0
    :goto_0
    return-void

    .line 1091
    :cond_1
    iget-object v0, p0, Lcom/actionbarsherlock/widget/SearchView;->mSearchable:Lcom/actionbarsherlock/widget/SearchableInfoHelper$SearchableInfoWrapper;

    if-eqz v0, :cond_3

    .line 1092
    const/4 v0, 0x0

    .line 1093
    iget-object v1, p0, Lcom/actionbarsherlock/widget/SearchView;->mSearchable:Lcom/actionbarsherlock/widget/SearchableInfoHelper$SearchableInfoWrapper;

    invoke-interface {v1}, Lcom/actionbarsherlock/widget/SearchableInfoHelper$SearchableInfoWrapper;->getHintId()I

    move-result v1

    .line 1094
    if-eqz v1, :cond_2

    .line 1095
    invoke-virtual {p0}, Lcom/actionbarsherlock/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1097
    :cond_2
    if-eqz v0, :cond_0

    .line 1098
    iget-object v1, p0, Lcom/actionbarsherlock/widget/SearchView;->mQueryTextView:Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;

    invoke-direct {p0, v0}, Lcom/actionbarsherlock/widget/SearchView;->getDecoratedHint(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1101
    :cond_3
    iget-object v0, p0, Lcom/actionbarsherlock/widget/SearchView;->mQueryTextView:Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;

    const-string/jumbo v1, ""

    invoke-direct {p0, v1}, Lcom/actionbarsherlock/widget/SearchView;->getDecoratedHint(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateSearchAutoComplete()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 1110
    iget-object v0, p0, Lcom/actionbarsherlock/widget/SearchView;->mQueryTextView:Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;

    iget-object v2, p0, Lcom/actionbarsherlock/widget/SearchView;->mSearchable:Lcom/actionbarsherlock/widget/SearchableInfoHelper$SearchableInfoWrapper;

    invoke-interface {v2}, Lcom/actionbarsherlock/widget/SearchableInfoHelper$SearchableInfoWrapper;->getSuggestThreshold()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;->setThreshold(I)V

    .line 1111
    iget-object v0, p0, Lcom/actionbarsherlock/widget/SearchView;->mQueryTextView:Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;

    iget-object v2, p0, Lcom/actionbarsherlock/widget/SearchView;->mSearchable:Lcom/actionbarsherlock/widget/SearchableInfoHelper$SearchableInfoWrapper;

    invoke-interface {v2}, Lcom/actionbarsherlock/widget/SearchableInfoHelper$SearchableInfoWrapper;->getImeOptions()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;->setImeOptions(I)V

    .line 1112
    iget-object v0, p0, Lcom/actionbarsherlock/widget/SearchView;->mSearchable:Lcom/actionbarsherlock/widget/SearchableInfoHelper$SearchableInfoWrapper;

    invoke-interface {v0}, Lcom/actionbarsherlock/widget/SearchableInfoHelper$SearchableInfoWrapper;->getInputType()I

    move-result v0

    .line 1115
    and-int/lit8 v2, v0, 0xf

    if-ne v2, v1, :cond_0

    .line 1118
    const v2, -0x10001

    and-int/2addr v0, v2

    .line 1119
    iget-object v2, p0, Lcom/actionbarsherlock/widget/SearchView;->mSearchable:Lcom/actionbarsherlock/widget/SearchableInfoHelper$SearchableInfoWrapper;

    invoke-interface {v2}, Lcom/actionbarsherlock/widget/SearchableInfoHelper$SearchableInfoWrapper;->getSuggestAuthority()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1120
    const/high16 v2, 0x1

    or-int/2addr v0, v2

    .line 1127
    const/high16 v2, 0x8

    or-int/2addr v0, v2

    .line 1130
    :cond_0
    iget-object v2, p0, Lcom/actionbarsherlock/widget/SearchView;->mQueryTextView:Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v2, v0}, Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;->setInputType(I)V

    .line 1131
    iget-object v0, p0, Lcom/actionbarsherlock/widget/SearchView;->mSuggestionsAdapter:Landroid/support/v4/widget/CursorAdapter;

    if-eqz v0, :cond_1

    .line 1132
    iget-object v0, p0, Lcom/actionbarsherlock/widget/SearchView;->mSuggestionsAdapter:Landroid/support/v4/widget/CursorAdapter;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/support/v4/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 1136
    :cond_1
    iget-object v0, p0, Lcom/actionbarsherlock/widget/SearchView;->mSearchable:Lcom/actionbarsherlock/widget/SearchableInfoHelper$SearchableInfoWrapper;

    invoke-interface {v0}, Lcom/actionbarsherlock/widget/SearchableInfoHelper$SearchableInfoWrapper;->getSuggestAuthority()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1137
    new-instance v0, Lcom/actionbarsherlock/widget/SuggestionsAdapter;

    invoke-virtual {p0}, Lcom/actionbarsherlock/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/actionbarsherlock/widget/SearchView;->mSearchable:Lcom/actionbarsherlock/widget/SearchableInfoHelper$SearchableInfoWrapper;

    iget-object v4, p0, Lcom/actionbarsherlock/widget/SearchView;->mOutsideDrawablesCache:Ljava/util/WeakHashMap;

    invoke-direct {v0, v2, p0, v3, v4}, Lcom/actionbarsherlock/widget/SuggestionsAdapter;-><init>(Landroid/content/Context;Lcom/actionbarsherlock/widget/SearchView;Lcom/actionbarsherlock/widget/SearchableInfoHelper$SearchableInfoWrapper;Ljava/util/WeakHashMap;)V

    iput-object v0, p0, Lcom/actionbarsherlock/widget/SearchView;->mSuggestionsAdapter:Landroid/support/v4/widget/CursorAdapter;

    .line 1139
    iget-object v0, p0, Lcom/actionbarsherlock/widget/SearchView;->mQueryTextView:Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;

    iget-object v2, p0, Lcom/actionbarsherlock/widget/SearchView;->mSuggestionsAdapter:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v0, v2}, Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1140
    iget-object v0, p0, Lcom/actionbarsherlock/widget/SearchView;->mSuggestionsAdapter:Landroid/support/v4/widget/CursorAdapter;

    check-cast v0, Lcom/actionbarsherlock/widget/SuggestionsAdapter;

    iget-boolean v2, p0, Lcom/actionbarsherlock/widget/SearchView;->mQueryRefinement:Z

    if-eqz v2, :cond_2

    const/4 v1, 0x2

    :cond_2
    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/widget/SuggestionsAdapter;->setQueryRefinement(I)V

    .line 1144
    :cond_3
    return-void
.end method

.method private updateSubmitArea()V
    .locals 2

    .prologue
    .line 822
    const/16 v0, 0x8

    .line 823
    invoke-direct {p0}, Lcom/actionbarsherlock/widget/SearchView;->isSubmitAreaEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/actionbarsherlock/widget/SearchView;->mSubmitButton:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/actionbarsherlock/widget/SearchView;->mVoiceButton:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 826
    :cond_0
    const/4 v0, 0x0

    .line 828
    :cond_1
    iget-object v1, p0, Lcom/actionbarsherlock/widget/SearchView;->mSubmitArea:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 829
    return-void
.end method

.method private updateSubmitButton(Z)V
    .locals 2
    .parameter

    .prologue
    .line 813
    const/16 v0, 0x8

    .line 814
    iget-boolean v1, p0, Lcom/actionbarsherlock/widget/SearchView;->mSubmitButtonEnabled:Z

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/actionbarsherlock/widget/SearchView;->isSubmitAreaEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/actionbarsherlock/widget/SearchView;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez p1, :cond_0

    iget-boolean v1, p0, Lcom/actionbarsherlock/widget/SearchView;->mVoiceButtonEnabled:Z

    if-nez v1, :cond_1

    .line 816
    :cond_0
    const/4 v0, 0x0

    .line 818
    :cond_1
    iget-object v1, p0, Lcom/actionbarsherlock/widget/SearchView;->mSubmitButton:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 819
    return-void
.end method

.method private updateViewsVisibility(Z)V
    .locals 6
    .parameter

    .prologue
    const/4 v4, 0x1

    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 776
    iput-boolean p1, p0, Lcom/actionbarsherlock/widget/SearchView;->mIconified:Z

    .line 778
    if-eqz p1, :cond_0

    move v0, v1

    .line 780
    :goto_0
    iget-object v3, p0, Lcom/actionbarsherlock/widget/SearchView;->mQueryTextView:Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v3}, Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    move v3, v4

    .line 782
    :goto_1
    iget-object v5, p0, Lcom/actionbarsherlock/widget/SearchView;->mSearchButton:Landroid/view/View;

    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    .line 783
    invoke-direct {p0, v3}, Lcom/actionbarsherlock/widget/SearchView;->updateSubmitButton(Z)V

    .line 784
    iget-object v5, p0, Lcom/actionbarsherlock/widget/SearchView;->mSearchEditFrame:Landroid/view/View;

    if-eqz p1, :cond_2

    move v0, v2

    :goto_2
    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    .line 785
    iget-object v0, p0, Lcom/actionbarsherlock/widget/SearchView;->mSearchHintIcon:Landroid/widget/ImageView;

    iget-boolean v5, p0, Lcom/actionbarsherlock/widget/SearchView;->mIconifiedByDefault:Z

    if-eqz v5, :cond_3

    :goto_3
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 786
    invoke-direct {p0}, Lcom/actionbarsherlock/widget/SearchView;->updateCloseButton()V

    .line 787
    if-nez v3, :cond_4

    :goto_4
    invoke-direct {p0, v4}, Lcom/actionbarsherlock/widget/SearchView;->updateVoiceButton(Z)V

    .line 788
    invoke-direct {p0}, Lcom/actionbarsherlock/widget/SearchView;->updateSubmitArea()V

    .line 789
    return-void

    :cond_0
    move v0, v2

    .line 778
    goto :goto_0

    :cond_1
    move v3, v1

    .line 780
    goto :goto_1

    :cond_2
    move v0, v1

    .line 784
    goto :goto_2

    :cond_3
    move v2, v1

    .line 785
    goto :goto_3

    :cond_4
    move v4, v1

    .line 787
    goto :goto_4
.end method

.method private updateVoiceButton(Z)V
    .locals 3
    .parameter

    .prologue
    const/16 v1, 0x8

    .line 1153
    .line 1154
    iget-boolean v0, p0, Lcom/actionbarsherlock/widget/SearchView;->mVoiceButtonEnabled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/actionbarsherlock/widget/SearchView;->isIconified()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 1155
    const/4 v0, 0x0

    .line 1156
    iget-object v2, p0, Lcom/actionbarsherlock/widget/SearchView;->mSubmitButton:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1158
    :goto_0
    iget-object v1, p0, Lcom/actionbarsherlock/widget/SearchView;->mVoiceButton:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1159
    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public clearFocus()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 465
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/actionbarsherlock/widget/SearchView;->mClearingFocus:Z

    .line 466
    invoke-direct {p0, v1}, Lcom/actionbarsherlock/widget/SearchView;->setImeVisibility(Z)V

    .line 467
    invoke-super {p0}, Landroid/widget/LinearLayout;->clearFocus()V

    .line 468
    iget-object v0, p0, Lcom/actionbarsherlock/widget/SearchView;->mQueryTextView:Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;->clearFocus()V

    .line 469
    iput-boolean v1, p0, Lcom/actionbarsherlock/widget/SearchView;->mClearingFocus:Z

    .line 470
    return-void
.end method

.method public getImeOptions()I
    .locals 1

    .prologue
    .line 418
    iget-object v0, p0, Lcom/actionbarsherlock/widget/SearchView;->mQueryTextView:Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;->getImeOptions()I

    move-result v0

    return v0
.end method

.method public getInputType()I
    .locals 1

    .prologue
    .line 440
    iget-object v0, p0, Lcom/actionbarsherlock/widget/SearchView;->mQueryTextView:Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;->getInputType()I

    move-result v0

    return v0
.end method

.method public getMaxWidth()I
    .locals 1

    .prologue
    .line 732
    iget v0, p0, Lcom/actionbarsherlock/widget/SearchView;->mMaxWidth:I

    return v0
.end method

.method public getQuery()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 527
    iget-object v0, p0, Lcom/actionbarsherlock/widget/SearchView;->mQueryTextView:Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v0

    return-object v0
.end method

.method public getQueryHint()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 571
    iget-object v1, p0, Lcom/actionbarsherlock/widget/SearchView;->mQueryHint:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    .line 572
    iget-object v0, p0, Lcom/actionbarsherlock/widget/SearchView;->mQueryHint:Ljava/lang/CharSequence;

    .line 581
    :cond_0
    :goto_0
    return-object v0

    .line 573
    :cond_1
    iget-object v1, p0, Lcom/actionbarsherlock/widget/SearchView;->mSearchable:Lcom/actionbarsherlock/widget/SearchableInfoHelper$SearchableInfoWrapper;

    if-eqz v1, :cond_0

    .line 575
    iget-object v1, p0, Lcom/actionbarsherlock/widget/SearchView;->mSearchable:Lcom/actionbarsherlock/widget/SearchableInfoHelper$SearchableInfoWrapper;

    invoke-interface {v1}, Lcom/actionbarsherlock/widget/SearchableInfoHelper$SearchableInfoWrapper;->getHintId()I

    move-result v1

    .line 576
    if-eqz v1, :cond_0

    .line 577
    invoke-virtual {p0}, Lcom/actionbarsherlock/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSuggestionsAdapter()Landroid/support/v4/widget/CursorAdapter;
    .locals 1

    .prologue
    .line 710
    iget-object v0, p0, Lcom/actionbarsherlock/widget/SearchView;->mSuggestionsAdapter:Landroid/support/v4/widget/CursorAdapter;

    return-object v0
.end method

.method public isIconfiedByDefault()Z
    .locals 1

    .prologue
    .line 610
    iget-boolean v0, p0, Lcom/actionbarsherlock/widget/SearchView;->mIconifiedByDefault:Z

    return v0
.end method

.method public isIconified()Z
    .locals 1

    .prologue
    .line 638
    iget-boolean v0, p0, Lcom/actionbarsherlock/widget/SearchView;->mIconified:Z

    return v0
.end method

.method public isQueryRefinementEnabled()Z
    .locals 1

    .prologue
    .line 690
    iget-boolean v0, p0, Lcom/actionbarsherlock/widget/SearchView;->mQueryRefinement:Z

    return v0
.end method

.method public isSubmitButtonEnabled()Z
    .locals 1

    .prologue
    .line 660
    iget-boolean v0, p0, Lcom/actionbarsherlock/widget/SearchView;->mSubmitButtonEnabled:Z

    return v0
.end method

.method public onActionViewCollapsed()V
    .locals 2

    .prologue
    .line 1280
    invoke-virtual {p0}, Lcom/actionbarsherlock/widget/SearchView;->clearFocus()V

    .line 1281
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/actionbarsherlock/widget/SearchView;->updateViewsVisibility(Z)V

    .line 1282
    iget-object v0, p0, Lcom/actionbarsherlock/widget/SearchView;->mQueryTextView:Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;

    iget v1, p0, Lcom/actionbarsherlock/widget/SearchView;->mCollapsedImeOptions:I

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;->setImeOptions(I)V

    .line 1283
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/actionbarsherlock/widget/SearchView;->mExpandedInActionView:Z

    .line 1284
    return-void
.end method

.method public onActionViewExpanded()V
    .locals 3

    .prologue
    .line 1291
    iget-boolean v0, p0, Lcom/actionbarsherlock/widget/SearchView;->mExpandedInActionView:Z

    if-eqz v0, :cond_0

    .line 1298
    :goto_0
    return-void

    .line 1293
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/actionbarsherlock/widget/SearchView;->mExpandedInActionView:Z

    .line 1294
    iget-object v0, p0, Lcom/actionbarsherlock/widget/SearchView;->mQueryTextView:Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;->getImeOptions()I

    move-result v0

    iput v0, p0, Lcom/actionbarsherlock/widget/SearchView;->mCollapsedImeOptions:I

    .line 1295
    iget-object v0, p0, Lcom/actionbarsherlock/widget/SearchView;->mQueryTextView:Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;

    iget v1, p0, Lcom/actionbarsherlock/widget/SearchView;->mCollapsedImeOptions:I

    const/high16 v2, 0x200

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;->setImeOptions(I)V

    .line 1296
    iget-object v0, p0, Lcom/actionbarsherlock/widget/SearchView;->mQueryTextView:Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;->setText(Ljava/lang/CharSequence;)V

    .line 1297
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/actionbarsherlock/widget/SearchView;->setIconified(Z)V

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 853
    iget-object v0, p0, Lcom/actionbarsherlock/widget/SearchView;->mUpdateDrawableStateRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/actionbarsherlock/widget/SearchView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 854
    iget-object v0, p0, Lcom/actionbarsherlock/widget/SearchView;->mReleaseCursorRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/actionbarsherlock/widget/SearchView;->post(Ljava/lang/Runnable;)Z

    .line 855
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 856
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .parameter
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 1303
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1304
    const-class v0, Lcom/actionbarsherlock/widget/SearchView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 1305
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .parameter
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 1310
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1311
    const-class v0, Lcom/actionbarsherlock/widget/SearchView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 1312
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 908
    iget-object v0, p0, Lcom/actionbarsherlock/widget/SearchView;->mSearchable:Lcom/actionbarsherlock/widget/SearchableInfoHelper$SearchableInfoWrapper;

    if-nez v0, :cond_0

    .line 909
    const/4 v0, 0x0

    .line 921
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 738
    invoke-virtual {p0}, Lcom/actionbarsherlock/widget/SearchView;->isIconified()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 739
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 768
    :goto_0
    return-void

    .line 743
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 744
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 746
    sparse-switch v1, :sswitch_data_0

    .line 766
    :cond_1
    :goto_1
    const/high16 v1, 0x4000

    .line 767
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-super {p0, v0, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    goto :goto_0

    .line 749
    :sswitch_0
    iget v1, p0, Lcom/actionbarsherlock/widget/SearchView;->mMaxWidth:I

    if-lez v1, :cond_2

    .line 750
    iget v1, p0, Lcom/actionbarsherlock/widget/SearchView;->mMaxWidth:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_1

    .line 752
    :cond_2
    invoke-direct {p0}, Lcom/actionbarsherlock/widget/SearchView;->getPreferredWidth()I

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_1

    .line 757
    :sswitch_1
    iget v1, p0, Lcom/actionbarsherlock/widget/SearchView;->mMaxWidth:I

    if-lez v1, :cond_1

    .line 758
    iget v1, p0, Lcom/actionbarsherlock/widget/SearchView;->mMaxWidth:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_1

    .line 763
    :sswitch_2
    iget v0, p0, Lcom/actionbarsherlock/widget/SearchView;->mMaxWidth:I

    if-lez v0, :cond_3

    iget v0, p0, Lcom/actionbarsherlock/widget/SearchView;->mMaxWidth:I

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lcom/actionbarsherlock/widget/SearchView;->getPreferredWidth()I

    move-result v0

    goto :goto_1

    .line 746
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_0
        0x0 -> :sswitch_2
        0x40000000 -> :sswitch_1
    .end sparse-switch
.end method

.method onQueryRefine(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter

    .prologue
    .line 877
    invoke-direct {p0, p1}, Lcom/actionbarsherlock/widget/SearchView;->setQuery(Ljava/lang/CharSequence;)V

    .line 878
    return-void
.end method

.method onTextFocusChanged()V
    .locals 1

    .prologue
    .line 1259
    invoke-virtual {p0}, Lcom/actionbarsherlock/widget/SearchView;->isIconified()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/actionbarsherlock/widget/SearchView;->updateViewsVisibility(Z)V

    .line 1262
    invoke-direct {p0}, Lcom/actionbarsherlock/widget/SearchView;->postUpdateFocusedState()V

    .line 1263
    iget-object v0, p0, Lcom/actionbarsherlock/widget/SearchView;->mQueryTextView:Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1264
    invoke-direct {p0}, Lcom/actionbarsherlock/widget/SearchView;->forceSuggestionQuery()V

    .line 1266
    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .parameter

    .prologue
    .line 1270
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onWindowFocusChanged(Z)V

    .line 1272
    invoke-direct {p0}, Lcom/actionbarsherlock/widget/SearchView;->postUpdateFocusedState()V

    .line 1273
    return-void
.end method

.method public requestFocus(ILandroid/graphics/Rect;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 447
    iget-boolean v1, p0, Lcom/actionbarsherlock/widget/SearchView;->mClearingFocus:Z

    if-eqz v1, :cond_1

    .line 458
    :cond_0
    :goto_0
    return v0

    .line 449
    :cond_1
    invoke-virtual {p0}, Lcom/actionbarsherlock/widget/SearchView;->isFocusable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 451
    invoke-virtual {p0}, Lcom/actionbarsherlock/widget/SearchView;->isIconified()Z

    move-result v1

    if-nez v1, :cond_3

    .line 452
    iget-object v1, p0, Lcom/actionbarsherlock/widget/SearchView;->mQueryTextView:Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v1, p1, p2}, Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v1

    .line 453
    if-eqz v1, :cond_2

    .line 454
    invoke-direct {p0, v0}, Lcom/actionbarsherlock/widget/SearchView;->updateViewsVisibility(Z)V

    :cond_2
    move v0, v1

    .line 456
    goto :goto_0

    .line 458
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    goto :goto_0
.end method

.method public setAppSearchData(Landroid/os/Bundle;)V
    .locals 0
    .parameter

    .prologue
    .line 395
    iput-object p1, p0, Lcom/actionbarsherlock/widget/SearchView;->mAppSearchData:Landroid/os/Bundle;

    .line 396
    return-void
.end method

.method public setIconified(Z)V
    .locals 0
    .parameter

    .prologue
    .line 624
    if-eqz p1, :cond_0

    .line 625
    invoke-direct {p0}, Lcom/actionbarsherlock/widget/SearchView;->onCloseClicked()V

    .line 629
    :goto_0
    return-void

    .line 627
    :cond_0
    invoke-direct {p0}, Lcom/actionbarsherlock/widget/SearchView;->onSearchClicked()V

    goto :goto_0
.end method

.method public setIconifiedByDefault(Z)V
    .locals 1
    .parameter

    .prologue
    .line 597
    iget-boolean v0, p0, Lcom/actionbarsherlock/widget/SearchView;->mIconifiedByDefault:Z

    if-ne v0, p1, :cond_0

    .line 601
    :goto_0
    return-void

    .line 598
    :cond_0
    iput-boolean p1, p0, Lcom/actionbarsherlock/widget/SearchView;->mIconifiedByDefault:Z

    .line 599
    invoke-direct {p0, p1}, Lcom/actionbarsherlock/widget/SearchView;->updateViewsVisibility(Z)V

    .line 600
    invoke-direct {p0}, Lcom/actionbarsherlock/widget/SearchView;->updateQueryHint()V

    goto :goto_0
.end method

.method public setImeOptions(I)V
    .locals 1
    .parameter

    .prologue
    .line 407
    iget-object v0, p0, Lcom/actionbarsherlock/widget/SearchView;->mQueryTextView:Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;->setImeOptions(I)V

    .line 408
    return-void
.end method

.method public setInputType(I)V
    .locals 1
    .parameter

    .prologue
    .line 430
    iget-object v0, p0, Lcom/actionbarsherlock/widget/SearchView;->mQueryTextView:Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;->setInputType(I)V

    .line 431
    return-void
.end method

.method public setMaxWidth(I)V
    .locals 0
    .parameter

    .prologue
    .line 719
    iput p1, p0, Lcom/actionbarsherlock/widget/SearchView;->mMaxWidth:I

    .line 721
    invoke-virtual {p0}, Lcom/actionbarsherlock/widget/SearchView;->requestLayout()V

    .line 722
    return-void
.end method

.method public setOnCloseListener(Lcom/actionbarsherlock/widget/SearchView$OnCloseListener;)V
    .locals 0
    .parameter

    .prologue
    .line 488
    iput-object p1, p0, Lcom/actionbarsherlock/widget/SearchView;->mOnCloseListener:Lcom/actionbarsherlock/widget/SearchView$OnCloseListener;

    .line 489
    return-void
.end method

.method public setOnQueryTextFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
    .locals 0
    .parameter

    .prologue
    .line 497
    iput-object p1, p0, Lcom/actionbarsherlock/widget/SearchView;->mOnQueryTextFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    .line 498
    return-void
.end method

.method public setOnQueryTextListener(Lcom/actionbarsherlock/widget/SearchView$OnQueryTextListener;)V
    .locals 0
    .parameter

    .prologue
    .line 479
    iput-object p1, p0, Lcom/actionbarsherlock/widget/SearchView;->mOnQueryChangeListener:Lcom/actionbarsherlock/widget/SearchView$OnQueryTextListener;

    .line 480
    return-void
.end method

.method public setOnSearchClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter

    .prologue
    .line 518
    iput-object p1, p0, Lcom/actionbarsherlock/widget/SearchView;->mOnSearchClickListener:Landroid/view/View$OnClickListener;

    .line 519
    return-void
.end method

.method public setOnSuggestionListener(Lcom/actionbarsherlock/widget/SearchView$OnSuggestionListener;)V
    .locals 0
    .parameter

    .prologue
    .line 506
    iput-object p1, p0, Lcom/actionbarsherlock/widget/SearchView;->mOnSuggestionListener:Lcom/actionbarsherlock/widget/SearchView$OnSuggestionListener;

    .line 507
    return-void
.end method

.method public setOpenKeyboardOnExpand(Z)V
    .locals 0
    .parameter

    .prologue
    .line 1826
    iput-boolean p1, p0, Lcom/actionbarsherlock/widget/SearchView;->mOpenKeyboardOnExpand:Z

    .line 1827
    return-void
.end method

.method public setQuery(Ljava/lang/CharSequence;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 539
    iget-object v0, p0, Lcom/actionbarsherlock/widget/SearchView;->mQueryTextView:Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;->setText(Ljava/lang/CharSequence;)V

    .line 540
    if-eqz p1, :cond_0

    .line 541
    iget-object v0, p0, Lcom/actionbarsherlock/widget/SearchView;->mQueryTextView:Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;

    iget-object v1, p0, Lcom/actionbarsherlock/widget/SearchView;->mQueryTextView:Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v1}, Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;->setSelection(I)V

    .line 542
    iput-object p1, p0, Lcom/actionbarsherlock/widget/SearchView;->mUserQuery:Ljava/lang/CharSequence;

    .line 546
    :cond_0
    if-eqz p2, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 547
    invoke-direct {p0}, Lcom/actionbarsherlock/widget/SearchView;->onSubmitQuery()V

    .line 549
    :cond_1
    return-void
.end method

.method public setQueryHint(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter

    .prologue
    .line 560
    iput-object p1, p0, Lcom/actionbarsherlock/widget/SearchView;->mQueryHint:Ljava/lang/CharSequence;

    .line 561
    invoke-direct {p0}, Lcom/actionbarsherlock/widget/SearchView;->updateQueryHint()V

    .line 562
    return-void
.end method

.method public setQueryHintColor(I)V
    .locals 1
    .parameter

    .prologue
    .line 1822
    iget-object v0, p0, Lcom/actionbarsherlock/widget/SearchView;->mQueryTextView:Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;->setHintTextColor(I)V

    .line 1823
    return-void
.end method

.method public setQueryRefinementEnabled(Z)V
    .locals 2
    .parameter

    .prologue
    .line 678
    iput-boolean p1, p0, Lcom/actionbarsherlock/widget/SearchView;->mQueryRefinement:Z

    .line 679
    iget-object v0, p0, Lcom/actionbarsherlock/widget/SearchView;->mSuggestionsAdapter:Landroid/support/v4/widget/CursorAdapter;

    instance-of v0, v0, Lcom/actionbarsherlock/widget/SuggestionsAdapter;

    if-eqz v0, :cond_0

    .line 680
    iget-object v0, p0, Lcom/actionbarsherlock/widget/SearchView;->mSuggestionsAdapter:Landroid/support/v4/widget/CursorAdapter;

    check-cast v0, Lcom/actionbarsherlock/widget/SuggestionsAdapter;

    if-eqz p1, :cond_1

    const/4 v1, 0x2

    :goto_0
    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/widget/SuggestionsAdapter;->setQueryRefinement(I)V

    .line 683
    :cond_0
    return-void

    .line 680
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public setSearchableInfo(Landroid/app/SearchableInfo;)V
    .locals 2
    .parameter
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    .prologue
    .line 371
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-ge v0, v1, :cond_2

    new-instance v0, Lcom/actionbarsherlock/widget/SearchableInfoHelper$SearchableInfoWrapperLessFroio;

    invoke-direct {v0}, Lcom/actionbarsherlock/widget/SearchableInfoHelper$SearchableInfoWrapperLessFroio;-><init>()V

    :goto_0
    iput-object v0, p0, Lcom/actionbarsherlock/widget/SearchView;->mSearchable:Lcom/actionbarsherlock/widget/SearchableInfoHelper$SearchableInfoWrapper;

    .line 374
    iget-object v0, p0, Lcom/actionbarsherlock/widget/SearchView;->mSearchable:Lcom/actionbarsherlock/widget/SearchableInfoHelper$SearchableInfoWrapper;

    if-eqz v0, :cond_0

    .line 375
    invoke-direct {p0}, Lcom/actionbarsherlock/widget/SearchView;->updateSearchAutoComplete()V

    .line 376
    invoke-direct {p0}, Lcom/actionbarsherlock/widget/SearchView;->updateQueryHint()V

    .line 379
    :cond_0
    invoke-direct {p0}, Lcom/actionbarsherlock/widget/SearchView;->hasVoiceSearch()Z

    move-result v0

    iput-boolean v0, p0, Lcom/actionbarsherlock/widget/SearchView;->mVoiceButtonEnabled:Z

    .line 381
    iget-boolean v0, p0, Lcom/actionbarsherlock/widget/SearchView;->mVoiceButtonEnabled:Z

    if-eqz v0, :cond_1

    .line 384
    iget-object v0, p0, Lcom/actionbarsherlock/widget/SearchView;->mQueryTextView:Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;

    const-string/jumbo v1, "nm"

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;->setPrivateImeOptions(Ljava/lang/String;)V

    .line 386
    :cond_1
    invoke-virtual {p0}, Lcom/actionbarsherlock/widget/SearchView;->isIconified()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/actionbarsherlock/widget/SearchView;->updateViewsVisibility(Z)V

    .line 387
    return-void

    .line 371
    :cond_2
    new-instance v0, Lcom/actionbarsherlock/widget/SearchableInfoHelper$SearchableInfoWrapperGreatOrEqualFroio;

    invoke-direct {v0, p1}, Lcom/actionbarsherlock/widget/SearchableInfoHelper$SearchableInfoWrapperGreatOrEqualFroio;-><init>(Landroid/app/SearchableInfo;)V

    goto :goto_0
.end method

.method public setSubmitButtonEnabled(Z)V
    .locals 1
    .parameter

    .prologue
    .line 650
    iput-boolean p1, p0, Lcom/actionbarsherlock/widget/SearchView;->mSubmitButtonEnabled:Z

    .line 651
    invoke-virtual {p0}, Lcom/actionbarsherlock/widget/SearchView;->isIconified()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/actionbarsherlock/widget/SearchView;->updateViewsVisibility(Z)V

    .line 652
    return-void
.end method

.method public setSuggestionsAdapter(Landroid/support/v4/widget/CursorAdapter;)V
    .locals 2
    .parameter

    .prologue
    .line 700
    iput-object p1, p0, Lcom/actionbarsherlock/widget/SearchView;->mSuggestionsAdapter:Landroid/support/v4/widget/CursorAdapter;

    .line 702
    iget-object v0, p0, Lcom/actionbarsherlock/widget/SearchView;->mQueryTextView:Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;

    iget-object v1, p0, Lcom/actionbarsherlock/widget/SearchView;->mSuggestionsAdapter:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 703
    return-void
.end method
