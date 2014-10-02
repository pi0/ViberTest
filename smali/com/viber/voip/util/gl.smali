.class public Lcom/viber/voip/util/gl;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/res/Resources;)F
    .locals 3
    .parameter

    .prologue
    .line 405
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 406
    const v1, 0x7f0a0260

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 407
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v0

    return v0
.end method

.method public static a(Lcom/actionbarsherlock/view/MenuItem;IILandroid/view/View$OnClickListener;)Lcom/actionbarsherlock/internal/view/menu/ActionMenuItemView;
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 162
    invoke-interface {p0}, Lcom/actionbarsherlock/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuItemView;

    .line 163
    const v1, 0x7f020020

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuItemView;->setBackgroundResource(I)V

    .line 164
    const v1, 0x7f070138

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuItemView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 165
    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 166
    invoke-virtual {v1, p1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 167
    invoke-virtual {v1}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 168
    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 169
    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 170
    const v2, 0x7f070139

    invoke-virtual {v0, v2}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuItemView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/actionbarsherlock/internal/widget/CapitalizingButton;

    .line 171
    invoke-virtual {v2, v3}, Lcom/actionbarsherlock/internal/widget/CapitalizingButton;->setVisibility(I)V

    .line 172
    invoke-virtual {v2, p2}, Lcom/actionbarsherlock/internal/widget/CapitalizingButton;->setText(I)V

    .line 173
    invoke-virtual {v2, p3}, Lcom/actionbarsherlock/internal/widget/CapitalizingButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    invoke-virtual {v1, p3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    invoke-virtual {v0, p3}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    return-object v0
.end method

.method public static a(Lcom/actionbarsherlock/app/SherlockFragmentActivity;)Ljava/lang/CharSequence;
    .locals 2
    .parameter

    .prologue
    .line 245
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    if-nez v0, :cond_1

    .line 246
    :cond_0
    const/4 v0, 0x0

    .line 257
    :goto_0
    return-object v0

    .line 248
    :cond_1
    invoke-static {}, Lcom/viber/voip/ViberApplication;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 249
    invoke-virtual {v0}, Lcom/actionbarsherlock/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    .line 250
    if-nez v0, :cond_2

    const-string/jumbo v0, ""

    goto :goto_0

    .line 252
    :cond_2
    const v1, 0x7f070136

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 253
    if-nez v0, :cond_3

    const-string/jumbo v0, ""

    goto :goto_0

    .line 255
    :cond_3
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 257
    :cond_4
    invoke-virtual {v0}, Lcom/actionbarsherlock/app/ActionBar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;)V
    .locals 1
    .parameter

    .prologue
    .line 314
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/viber/voip/util/gl;->a(Landroid/app/Activity;Z)V

    .line 315
    return-void
.end method

.method public static a(Landroid/app/Activity;Z)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const v3, 0x44228000

    const/high16 v1, 0x43c8

    const v4, 0x3f7ae148

    .line 318
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 319
    invoke-static {p0}, Lcom/viber/voip/util/gl;->e(Landroid/content/Context;)Z

    move-result v0

    .line 324
    if-eqz p1, :cond_1

    if-eqz v0, :cond_1

    .line 325
    invoke-static {p0, v1}, Lcom/viber/voip/messages/extras/image/h;->a(Landroid/content/Context;F)I

    move-result v0

    .line 326
    invoke-static {p0, v3}, Lcom/viber/voip/messages/extras/image/h;->a(Landroid/content/Context;F)I

    move-result v1

    .line 327
    iget v3, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v3, v0, :cond_0

    :goto_0
    move v2, v1

    move v1, v0

    .line 342
    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v3, 0x7f0900b1

    invoke-virtual {v0, v3}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 344
    const v0, 0x1020002

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 345
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 346
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 347
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 348
    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 349
    return-void

    .line 330
    :cond_0
    iget v0, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v0

    mul-float/2addr v0, v4

    float-to-int v0, v0

    goto :goto_0

    .line 333
    :cond_1
    invoke-static {p0, v3}, Lcom/viber/voip/messages/extras/image/h;->a(Landroid/content/Context;F)I

    move-result v0

    .line 334
    invoke-static {p0, v1}, Lcom/viber/voip/messages/extras/image/h;->a(Landroid/content/Context;F)I

    move-result v1

    .line 335
    iget v3, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v3, v0, :cond_2

    move v2, v1

    move v1, v0

    .line 336
    goto :goto_1

    .line 338
    :cond_2
    iget v0, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v0

    mul-float/2addr v0, v4

    float-to-int v0, v0

    move v2, v1

    move v1, v0

    goto :goto_1
.end method

.method public static a(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 141
    if-nez p0, :cond_1

    .line 154
    :cond_0
    :goto_0
    return-void

    .line 143
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 144
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 146
    :cond_2
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 147
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    move-object v0, p0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_3

    move-object v0, p0

    .line 148
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/util/gl;->a(Landroid/view/View;)V

    .line 147
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 150
    :cond_3
    instance-of v0, p0, Landroid/widget/AdapterView;

    if-nez v0, :cond_0

    .line 151
    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    goto :goto_0
.end method

.method public static a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter
    .parameter
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 380
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 381
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 385
    :goto_0
    return-void

    .line 383
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public static a(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 358
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/util/gm;

    invoke-direct {v1, p0, p1}, Lcom/viber/voip/util/gm;-><init>(Landroid/view/View;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 373
    return-void
.end method

.method public static a(Landroid/view/Window;)V
    .locals 1
    .parameter

    .prologue
    .line 133
    const v0, 0x7f070081

    invoke-virtual {p0, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 134
    if-eqz v0, :cond_0

    .line 135
    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/util/gl;->a(Landroid/view/View;)V

    .line 136
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 138
    :cond_0
    return-void
.end method

.method public static a(Landroid/widget/ImageView;I)V
    .locals 2
    .parameter
    .parameter
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 392
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 393
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 397
    :goto_0
    return-void

    .line 395
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setAlpha(I)V

    goto :goto_0
.end method

.method public static a(Landroid/widget/ListView;I)V
    .locals 0
    .parameter
    .parameter
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 401
    invoke-virtual {p0, p1}, Landroid/widget/ListView;->setVerticalScrollbarPosition(I)V

    .line 402
    return-void
.end method

.method public static a(Landroid/widget/ListView;Z)V
    .locals 0
    .parameter
    .parameter
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 461
    invoke-virtual {p0, p1}, Landroid/widget/ListView;->setFastScrollAlwaysVisible(Z)V

    .line 462
    return-void
.end method

.method public static a(Lcom/actionbarsherlock/app/SherlockFragmentActivity;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 225
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    if-nez v0, :cond_1

    .line 241
    :cond_0
    :goto_0
    return-void

    .line 229
    :cond_1
    invoke-virtual {v0}, Lcom/actionbarsherlock/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v1

    .line 230
    invoke-static {}, Lcom/viber/voip/ViberApplication;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz v1, :cond_3

    .line 231
    const v0, 0x7f070136

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 232
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 233
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 235
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 236
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 239
    :cond_3
    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public static a(Lcom/actionbarsherlock/app/SherlockFragmentActivity;Ljava/lang/String;Z)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 267
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    if-nez v0, :cond_1

    .line 287
    :cond_0
    :goto_0
    return-void

    .line 270
    :cond_1
    invoke-static {}, Lcom/viber/voip/ViberApplication;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_3

    if-nez p2, :cond_3

    .line 271
    invoke-virtual {v0}, Lcom/actionbarsherlock/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    .line 272
    if-eqz v0, :cond_0

    .line 274
    const v1, 0x7f070137

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 275
    if-eqz v0, :cond_0

    .line 277
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 278
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 279
    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 281
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 282
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 285
    :cond_3
    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public static a(ZLcom/actionbarsherlock/internal/view/menu/ActionMenuItemView;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 180
    if-eqz p1, :cond_0

    .line 181
    const v0, 0x7f070138

    invoke-virtual {p1, v0}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 182
    const v1, 0x7f070139

    invoke-virtual {p1, v1}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuItemView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/actionbarsherlock/internal/widget/CapitalizingButton;

    .line 183
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 184
    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 185
    invoke-virtual {v1, p0}, Lcom/actionbarsherlock/internal/widget/CapitalizingButton;->setEnabled(Z)V

    .line 186
    invoke-virtual {p1, p0}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuItemView;->setClickable(Z)V

    .line 189
    :cond_0
    return-void
.end method

.method public static a()Z
    .locals 2

    .prologue
    .line 66
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 2
    .parameter

    .prologue
    .line 110
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public static a(Landroid/view/View;Z)Z
    .locals 1
    .parameter
    .parameter
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 54
    invoke-static {}, Lcom/viber/voip/util/gl;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    invoke-virtual {p0, p1}, Landroid/view/View;->setActivated(Z)V

    .line 56
    const/4 v0, 0x1

    .line 58
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Landroid/app/Activity;)V
    .locals 4
    .parameter

    .prologue
    .line 465
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    invoke-static {}, Lcom/viber/voip/settings/j;->q()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/viber/voip/settings/j;->r()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;Z)Z

    move-result v0

    .line 466
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v1

    invoke-static {}, Lcom/viber/voip/settings/j;->o()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/viber/voip/settings/j;->p()Z

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;Z)Z

    move-result v1

    .line 467
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 468
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 469
    const/high16 v0, 0x48

    invoke-virtual {v1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 470
    const-string/jumbo v0, "power"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 471
    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 472
    const/high16 v0, 0x20

    invoke-virtual {v1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 475
    :cond_0
    return-void
.end method

.method public static b(Lcom/actionbarsherlock/app/SherlockFragmentActivity;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 262
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/viber/voip/util/gl;->a(Lcom/actionbarsherlock/app/SherlockFragmentActivity;Ljava/lang/String;Z)V

    .line 263
    return-void
.end method

.method public static b()Z
    .locals 2

    .prologue
    .line 70
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 2
    .parameter

    .prologue
    .line 114
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 115
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    div-float v0, v1, v0

    const/high16 v1, 0x43f0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c()Z
    .locals 2

    .prologue
    .line 74
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xc

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c(Landroid/content/Context;)Z
    .locals 4
    .parameter

    .prologue
    .line 119
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xd

    if-lt v0, v1, :cond_1

    .line 120
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 121
    const-string/jumbo v1, "split_action_bar_is_narrow"

    const-string/jumbo v2, "bool"

    const-string/jumbo v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 122
    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 124
    :goto_0
    return v0

    .line 122
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 124
    :cond_1
    const v0, 0x7f080001

    invoke-static {p0, v0}, Lcom/actionbarsherlock/internal/ResourcesCompat;->getResources_getBoolean(Landroid/content/Context;I)Z

    move-result v0

    goto :goto_0
.end method

.method public static d()Z
    .locals 2

    .prologue
    .line 78
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xd

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static d(Landroid/content/Context;)Z
    .locals 1
    .parameter

    .prologue
    .line 129
    invoke-static {p0}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;->reserveOverflow(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static e()Z
    .locals 2

    .prologue
    .line 82
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static e(Landroid/content/Context;)Z
    .locals 2
    .parameter

    .prologue
    .line 158
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08000e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static f(Landroid/content/Context;)I
    .locals 4
    .parameter

    .prologue
    .line 199
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 200
    const-string/jumbo v1, "status_bar_height"

    const-string/jumbo v2, "dimen"

    const-string/jumbo v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 201
    if-lez v1, :cond_0

    .line 202
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 204
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static f()Z
    .locals 2

    .prologue
    .line 86
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static g(Landroid/content/Context;)F
    .locals 4
    .parameter

    .prologue
    .line 307
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 308
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 309
    const v2, 0x7f0a0262

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 310
    invoke-virtual {v1}, Landroid/util/TypedValue;->getFloat()F

    move-result v0

    return v0
.end method

.method public static g()Z
    .locals 2

    .prologue
    .line 90
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static h()I
    .locals 2

    .prologue
    .line 445
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string/jumbo v1, "Kindle Fire"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string/jumbo v1, "KFOT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 446
    :cond_0
    const/16 v0, 0x3c

    .line 456
    :goto_0
    return v0

    .line 447
    :cond_1
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string/jumbo v1, "KFTT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string/jumbo v1, "KFSOWI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 448
    :cond_2
    const/16 v0, 0x4e

    goto :goto_0

    .line 449
    :cond_3
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string/jumbo v1, "KFJWA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string/jumbo v1, "KFJWI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 450
    :cond_4
    const/16 v0, 0x5a

    goto :goto_0

    .line 451
    :cond_5
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string/jumbo v1, "KFTHWA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string/jumbo v1, "KFTHWI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 452
    :cond_6
    const/16 v0, 0x75

    goto :goto_0

    .line 453
    :cond_7
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string/jumbo v1, "KFAPWA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string/jumbo v1, "KFAPWI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 454
    :cond_8
    const/16 v0, 0x7a

    goto :goto_0

    .line 456
    :cond_9
    const/4 v0, 0x0

    goto :goto_0
.end method
