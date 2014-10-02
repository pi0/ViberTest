.class public Lcom/viber/voip/AddFriendPreview;
.super Lcom/viber/voip/BaseAddFriendActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/viber/voip/v;


# instance fields
.field private a:Lcom/actionbarsherlock/internal/view/menu/ActionMenuItemView;

.field private b:Landroid/view/View;

.field private c:Landroid/view/View;

.field private d:Landroid/widget/ImageView;

.field private e:Lcom/viber/voip/k;

.field private f:Lcom/viber/voip/widget/SpinnerWithDescription;

.field private g:Lcom/viber/voip/widget/TextViewWithDescription;

.field private h:Lcom/viber/voip/widget/TextViewWithDescription;

.field private i:Lcom/viber/voip/widget/TextViewWithDescription;

.field private j:Landroid/widget/ImageView;

.field private k:Landroid/widget/ImageView;

.field private l:Lcom/viber/voip/util/b/w;

.field private m:Lcom/viber/voip/util/b/x;

.field private n:Landroid/net/Uri;

.field private o:Landroid/net/Uri;

.field private p:Z

.field private q:Z

.field private r:Landroid/graphics/ColorFilter;

.field private s:Landroid/view/View$OnClickListener;

.field private t:Landroid/widget/TextView$OnEditorActionListener;

.field private u:Lcom/viber/voip/util/b/al;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/viber/voip/BaseAddFriendActivity;-><init>()V

    .line 119
    new-instance v0, Lcom/viber/voip/g;

    invoke-direct {v0, p0}, Lcom/viber/voip/g;-><init>(Lcom/viber/voip/AddFriendPreview;)V

    iput-object v0, p0, Lcom/viber/voip/AddFriendPreview;->s:Landroid/view/View$OnClickListener;

    .line 126
    new-instance v0, Lcom/viber/voip/h;

    invoke-direct {v0, p0}, Lcom/viber/voip/h;-><init>(Lcom/viber/voip/AddFriendPreview;)V

    iput-object v0, p0, Lcom/viber/voip/AddFriendPreview;->t:Landroid/widget/TextView$OnEditorActionListener;

    .line 139
    new-instance v0, Lcom/viber/voip/i;

    invoke-direct {v0, p0}, Lcom/viber/voip/i;-><init>(Lcom/viber/voip/AddFriendPreview;)V

    iput-object v0, p0, Lcom/viber/voip/AddFriendPreview;->u:Lcom/viber/voip/util/b/al;

    .line 596
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/AddFriendPreview;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lcom/viber/voip/AddFriendPreview;->n:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic a(Lcom/viber/voip/AddFriendPreview;)V
    .locals 0
    .parameter

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/viber/voip/AddFriendPreview;->c()V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 7
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 558
    const v0, 0x7f0c06e0

    new-array v1, v2, [Ljava/lang/Object;

    aput-object p1, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/viber/voip/AddFriendPreview;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const v0, 0x7f0c06e1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-virtual {p0, v0, v2}, Lcom/viber/voip/AddFriendPreview;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/viber/voip/j;

    invoke-direct {v3, p0, p1}, Lcom/viber/voip/j;-><init>(Lcom/viber/voip/AddFriendPreview;Ljava/lang/String;)V

    const/4 v4, 0x0

    const v5, 0x7f0c02af

    const v6, 0x7f0c02b6

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/viber/voip/util/at;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;II)V

    .line 565
    return-void
.end method

.method private a(Ljava/lang/String;Lcom/viber/voip/BaseAddFriendActivity$ContactDetails;Landroid/os/Bundle;)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x5

    const/16 v2, 0x8

    const/4 v5, 0x6

    const/4 v1, 0x0

    .line 345
    invoke-static {p0}, Lcom/viber/voip/AddFriendPreview;->a(Landroid/content/Context;)Z

    move-result v3

    .line 346
    if-nez p3, :cond_6

    .line 348
    iget-object v0, p0, Lcom/viber/voip/AddFriendPreview;->i:Lcom/viber/voip/widget/TextViewWithDescription;

    invoke-virtual {v0, p1}, Lcom/viber/voip/widget/TextViewWithDescription;->setText(Ljava/lang/String;)V

    .line 349
    iget-object v0, p0, Lcom/viber/voip/AddFriendPreview;->i:Lcom/viber/voip/widget/TextViewWithDescription;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    invoke-virtual {v0, v4}, Lcom/viber/voip/widget/TextViewWithDescription;->setEditable(Z)V

    .line 351
    if-eqz p2, :cond_4

    .line 352
    invoke-virtual {p2}, Lcom/viber/voip/BaseAddFriendActivity$ContactDetails;->f()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/AddFriendPreview;->n:Landroid/net/Uri;

    .line 355
    iget-object v0, p0, Lcom/viber/voip/AddFriendPreview;->n:Landroid/net/Uri;

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/viber/voip/BaseAddFriendActivity$ContactDetails;->g()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/viber/voip/AddFriendPreview;->p:Z

    .line 356
    invoke-virtual {p2}, Lcom/viber/voip/BaseAddFriendActivity$ContactDetails;->d()Ljava/lang/String;

    move-result-object v0

    .line 358
    iget-object v4, p0, Lcom/viber/voip/AddFriendPreview;->g:Lcom/viber/voip/widget/TextViewWithDescription;

    invoke-virtual {v4, v0}, Lcom/viber/voip/widget/TextViewWithDescription;->setText(Ljava/lang/String;)V

    .line 360
    iget-object v4, p0, Lcom/viber/voip/AddFriendPreview;->h:Lcom/viber/voip/widget/TextViewWithDescription;

    if-nez v3, :cond_1

    invoke-static {v0}, Lcom/viber/voip/util/a/f;->l(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    :goto_1
    invoke-virtual {v4, v1}, Lcom/viber/voip/widget/TextViewWithDescription;->setVisibility(I)V

    .line 379
    :goto_2
    iget-object v0, p0, Lcom/viber/voip/AddFriendPreview;->h:Lcom/viber/voip/widget/TextViewWithDescription;

    invoke-virtual {v0}, Lcom/viber/voip/widget/TextViewWithDescription;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/viber/voip/AddFriendPreview;->i:Lcom/viber/voip/widget/TextViewWithDescription;

    invoke-virtual {v0}, Lcom/viber/voip/widget/TextViewWithDescription;->a()Z

    move-result v0

    if-nez v0, :cond_9

    .line 380
    iget-object v0, p0, Lcom/viber/voip/AddFriendPreview;->g:Lcom/viber/voip/widget/TextViewWithDescription;

    invoke-virtual {v0, v5}, Lcom/viber/voip/widget/TextViewWithDescription;->setImeOptions(I)V

    .line 381
    iget-object v0, p0, Lcom/viber/voip/AddFriendPreview;->g:Lcom/viber/voip/widget/TextViewWithDescription;

    iget-object v1, p0, Lcom/viber/voip/AddFriendPreview;->t:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {v0, v1}, Lcom/viber/voip/widget/TextViewWithDescription;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 385
    :goto_3
    iget-object v0, p0, Lcom/viber/voip/AddFriendPreview;->i:Lcom/viber/voip/widget/TextViewWithDescription;

    invoke-virtual {v0}, Lcom/viber/voip/widget/TextViewWithDescription;->a()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 386
    iget-object v0, p0, Lcom/viber/voip/AddFriendPreview;->h:Lcom/viber/voip/widget/TextViewWithDescription;

    invoke-virtual {v0, v6}, Lcom/viber/voip/widget/TextViewWithDescription;->setImeOptions(I)V

    .line 387
    iget-object v0, p0, Lcom/viber/voip/AddFriendPreview;->i:Lcom/viber/voip/widget/TextViewWithDescription;

    invoke-virtual {v0, v5}, Lcom/viber/voip/widget/TextViewWithDescription;->setImeOptions(I)V

    .line 388
    iget-object v0, p0, Lcom/viber/voip/AddFriendPreview;->i:Lcom/viber/voip/widget/TextViewWithDescription;

    iget-object v1, p0, Lcom/viber/voip/AddFriendPreview;->t:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {v0, v1}, Lcom/viber/voip/widget/TextViewWithDescription;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 394
    :goto_4
    iget-object v0, p0, Lcom/viber/voip/AddFriendPreview;->l:Lcom/viber/voip/util/b/w;

    iget-object v1, p0, Lcom/viber/voip/AddFriendPreview;->n:Landroid/net/Uri;

    iget-object v2, p0, Lcom/viber/voip/AddFriendPreview;->m:Lcom/viber/voip/util/b/x;

    iget-object v3, p0, Lcom/viber/voip/AddFriendPreview;->u:Lcom/viber/voip/util/b/al;

    invoke-virtual {v0, v1, v2, v3}, Lcom/viber/voip/util/b/w;->a(Landroid/net/Uri;Lcom/viber/voip/util/b/x;Lcom/viber/voip/util/b/al;)V

    .line 396
    invoke-direct {p0}, Lcom/viber/voip/AddFriendPreview;->b()V

    .line 397
    return-void

    :cond_2
    move v0, v1

    .line 355
    goto :goto_0

    :cond_3
    move v1, v2

    .line 360
    goto :goto_1

    .line 362
    :cond_4
    iget-object v0, p0, Lcom/viber/voip/AddFriendPreview;->h:Lcom/viber/voip/widget/TextViewWithDescription;

    if-eqz v3, :cond_5

    :goto_5
    invoke-virtual {v0, v1}, Lcom/viber/voip/widget/TextViewWithDescription;->setVisibility(I)V

    goto :goto_2

    :cond_5
    move v1, v2

    goto :goto_5

    .line 365
    :cond_6
    const-string/jumbo v0, "photo_uri"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/viber/voip/AddFriendPreview;->n:Landroid/net/Uri;

    .line 366
    const-string/jumbo v0, "can_change_photo"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/viber/voip/AddFriendPreview;->p:Z

    .line 367
    const-string/jumbo v0, "is_loaded_photo"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/viber/voip/AddFriendPreview;->q:Z

    .line 368
    const-string/jumbo v0, "display_name"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 369
    const-string/jumbo v4, "phonetic_name"

    invoke-virtual {p3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 372
    if-nez v3, :cond_7

    invoke-static {v0}, Lcom/viber/voip/util/a/f;->l(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 373
    :cond_7
    iget-object v0, p0, Lcom/viber/voip/AddFriendPreview;->h:Lcom/viber/voip/widget/TextViewWithDescription;

    invoke-virtual {v0, v1}, Lcom/viber/voip/widget/TextViewWithDescription;->setVisibility(I)V

    goto/16 :goto_2

    .line 375
    :cond_8
    iget-object v0, p0, Lcom/viber/voip/AddFriendPreview;->h:Lcom/viber/voip/widget/TextViewWithDescription;

    invoke-virtual {v0, v2}, Lcom/viber/voip/widget/TextViewWithDescription;->setVisibility(I)V

    goto/16 :goto_2

    .line 383
    :cond_9
    iget-object v0, p0, Lcom/viber/voip/AddFriendPreview;->g:Lcom/viber/voip/widget/TextViewWithDescription;

    invoke-virtual {v0, v6}, Lcom/viber/voip/widget/TextViewWithDescription;->setImeOptions(I)V

    goto/16 :goto_3

    .line 390
    :cond_a
    iget-object v0, p0, Lcom/viber/voip/AddFriendPreview;->h:Lcom/viber/voip/widget/TextViewWithDescription;

    invoke-virtual {v0, v5}, Lcom/viber/voip/widget/TextViewWithDescription;->setImeOptions(I)V

    .line 391
    iget-object v0, p0, Lcom/viber/voip/AddFriendPreview;->h:Lcom/viber/voip/widget/TextViewWithDescription;

    iget-object v1, p0, Lcom/viber/voip/AddFriendPreview;->t:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {v0, v1}, Lcom/viber/voip/widget/TextViewWithDescription;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    goto :goto_4
.end method

.method private a(Z)V
    .locals 1
    .parameter

    .prologue
    .line 433
    iget-object v0, p0, Lcom/viber/voip/AddFriendPreview;->b:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 435
    iget-object v0, p0, Lcom/viber/voip/AddFriendPreview;->a:Lcom/actionbarsherlock/internal/view/menu/ActionMenuItemView;

    invoke-static {p1, v0}, Lcom/viber/voip/util/gl;->a(ZLcom/actionbarsherlock/internal/view/menu/ActionMenuItemView;)V

    .line 436
    return-void
.end method

.method private static a(Landroid/content/Context;)Z
    .locals 3
    .parameter

    .prologue
    .line 591
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 593
    sget-object v1, Ljava/util/Locale;->JAPAN:Ljava/util/Locale;

    iget-object v2, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Ljava/util/Locale;->JAPANESE:Ljava/util/Locale;

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/viber/voip/registration/dj;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/viber/voip/AddFriendPreview;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/viber/voip/AddFriendPreview;->q:Z

    return p1
.end method

.method private a(Ljava/util/ArrayList;)Z
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 469
    .line 471
    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/AddFriendPreview;->f:Lcom/viber/voip/widget/SpinnerWithDescription;

    invoke-virtual {v0}, Lcom/viber/voip/widget/SpinnerWithDescription;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    .line 473
    sget-object v4, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    const-string/jumbo v6, "account_type"

    if-eqz v0, :cond_1

    iget-object v4, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    :goto_0
    invoke-virtual {v5, v6, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string/jumbo v5, "account_name"

    if-eqz v0, :cond_2

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    :goto_1
    invoke-virtual {v4, v5, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 477
    iget-object v0, p0, Lcom/viber/voip/AddFriendPreview;->h:Lcom/viber/voip/widget/TextViewWithDescription;

    invoke-virtual {v0}, Lcom/viber/voip/widget/TextViewWithDescription;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 479
    const-string/jumbo v4, "\u3000"

    const-string/jumbo v5, " "

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "\\s+"

    const/4 v5, 0x3

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v5

    .line 480
    array-length v0, v5

    .line 484
    if-lez v0, :cond_5

    .line 486
    const/4 v4, 0x0

    aget-object v4, v5, v4

    .line 487
    if-ne v0, v7, :cond_3

    .line 489
    const/4 v0, 0x1

    aget-object v0, v5, v0

    move-object v9, v3

    move-object v3, v0

    move-object v0, v9

    .line 498
    :goto_2
    sget-object v5, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    const-string/jumbo v6, "raw_contact_id"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    const-string/jumbo v6, "mimetype"

    const-string/jumbo v7, "vnd.android.cursor.item/name"

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    const-string/jumbo v6, "data1"

    iget-object v7, p0, Lcom/viber/voip/AddFriendPreview;->g:Lcom/viber/voip/widget/TextViewWithDescription;

    invoke-virtual {v7}, Lcom/viber/voip/widget/TextViewWithDescription;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    const-string/jumbo v6, "data9"

    invoke-virtual {v5, v6, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string/jumbo v5, "data8"

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string/jumbo v4, "data7"

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 506
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string/jumbo v3, "raw_contact_id"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string/jumbo v3, "mimetype"

    const-string/jumbo v4, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string/jumbo v3, "data1"

    iget-object v4, p0, Lcom/viber/voip/AddFriendPreview;->i:Lcom/viber/voip/widget/TextViewWithDescription;

    invoke-virtual {v4}, Lcom/viber/voip/widget/TextViewWithDescription;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string/jumbo v3, "data2"

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 512
    iget-object v0, p0, Lcom/viber/voip/AddFriendPreview;->n:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 513
    iget-object v0, p0, Lcom/viber/voip/AddFriendPreview;->n:Landroid/net/Uri;

    invoke-static {v0, p0}, Lcom/viber/voip/AddFriendPreview;->a(Landroid/net/Uri;Landroid/content/Context;)[B

    move-result-object v0

    .line 514
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const-string/jumbo v4, "raw_contact_id"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const-string/jumbo v4, "mimetype"

    const-string/jumbo v5, "vnd.android.cursor.item/photo"

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const-string/jumbo v4, "data15"

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    move v0, v1

    .line 525
    :goto_3
    return v0

    :cond_1
    move-object v4, v3

    .line 473
    goto/16 :goto_0

    :cond_2
    move-object v0, v3

    goto/16 :goto_1

    .line 490
    :cond_3
    if-ne v0, v8, :cond_4

    .line 492
    const/4 v0, 0x1

    aget-object v0, v5, v0

    .line 493
    const/4 v3, 0x2

    aget-object v3, v5, v3
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_2

    .line 520
    :catch_0
    move-exception v0

    move v0, v2

    .line 524
    goto :goto_3

    .line 522
    :catch_1
    move-exception v0

    move v0, v2

    goto :goto_3

    :cond_4
    move-object v0, v3

    goto/16 :goto_2

    :cond_5
    move-object v0, v3

    move-object v4, v3

    goto/16 :goto_2
.end method

.method private static a(Landroid/net/Uri;Landroid/content/Context;)[B
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x2

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v4, 0x1

    .line 571
    .line 575
    const/4 v0, 0x1

    :try_start_0
    invoke-static {p1, p0, v0}, Lcom/viber/voip/util/b/w;->b(Landroid/content/Context;Landroid/net/Uri;Z)Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 576
    if-eqz v2, :cond_0

    .line 577
    :try_start_1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 578
    :try_start_2
    invoke-static {v2, v0}, Lcom/viber/voip/util/bu;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 579
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v1

    .line 582
    :goto_0
    new-array v3, v3, [Ljava/io/Closeable;

    aput-object v2, v3, v5

    aput-object v0, v3, v4

    invoke-static {v3}, Lcom/viber/voip/util/bu;->a([Ljava/io/Closeable;)V

    .line 584
    return-object v1

    .line 582
    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_1
    new-array v3, v3, [Ljava/io/Closeable;

    aput-object v2, v3, v5

    aput-object v1, v3, v4

    invoke-static {v3}, Lcom/viber/voip/util/bu;->a([Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_1

    :catchall_2
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_1

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method static synthetic b(Lcom/viber/voip/AddFriendPreview;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 70
    iget-object v0, p0, Lcom/viber/voip/AddFriendPreview;->b:Landroid/view/View;

    return-object v0
.end method

.method private b()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 400
    const-string/jumbo v0, "account"

    invoke-virtual {p0, v0}, Lcom/viber/voip/AddFriendPreview;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/AccountManager;

    .line 401
    const-string/jumbo v1, "com.google"

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 403
    new-instance v1, Lcom/viber/voip/k;

    invoke-direct {v1, v0, p0}, Lcom/viber/voip/k;-><init>([Landroid/accounts/Account;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/viber/voip/AddFriendPreview;->e:Lcom/viber/voip/k;

    .line 404
    iget-object v1, p0, Lcom/viber/voip/AddFriendPreview;->f:Lcom/viber/voip/widget/SpinnerWithDescription;

    iget-object v2, p0, Lcom/viber/voip/AddFriendPreview;->e:Lcom/viber/voip/k;

    invoke-virtual {v1, v2}, Lcom/viber/voip/widget/SpinnerWithDescription;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 406
    invoke-static {p0}, Lcom/viber/voip/ViberApplication;->preferences(Landroid/content/Context;)Lcom/viber/voip/settings/l;

    move-result-object v1

    const-string/jumbo v2, "selected_account"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 407
    array-length v2, v0

    if-nez v2, :cond_1

    .line 408
    iget-object v0, p0, Lcom/viber/voip/AddFriendPreview;->f:Lcom/viber/voip/widget/SpinnerWithDescription;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/viber/voip/widget/SpinnerWithDescription;->setVisibility(I)V

    .line 430
    :cond_0
    :goto_0
    return-void

    .line 409
    :cond_1
    array-length v0, v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 411
    iget-object v0, p0, Lcom/viber/voip/AddFriendPreview;->f:Lcom/viber/voip/widget/SpinnerWithDescription;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/viber/voip/widget/SpinnerWithDescription;->setSelection(I)V

    goto :goto_0

    .line 412
    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 413
    iget-object v0, p0, Lcom/viber/voip/AddFriendPreview;->e:Lcom/viber/voip/k;

    invoke-virtual {v0}, Lcom/viber/voip/k;->a()I

    move-result v0

    .line 414
    if-eq v0, v4, :cond_0

    .line 415
    iget-object v1, p0, Lcom/viber/voip/AddFriendPreview;->f:Lcom/viber/voip/widget/SpinnerWithDescription;

    invoke-virtual {v1, v0}, Lcom/viber/voip/widget/SpinnerWithDescription;->setSelection(I)V

    goto :goto_0

    .line 419
    :cond_3
    iget-object v0, p0, Lcom/viber/voip/AddFriendPreview;->e:Lcom/viber/voip/k;

    invoke-virtual {v0, v1}, Lcom/viber/voip/k;->a(Ljava/lang/String;)I

    move-result v0

    .line 420
    if-eq v0, v4, :cond_4

    .line 421
    iget-object v1, p0, Lcom/viber/voip/AddFriendPreview;->f:Lcom/viber/voip/widget/SpinnerWithDescription;

    invoke-virtual {v1, v0}, Lcom/viber/voip/widget/SpinnerWithDescription;->setSelection(I)V

    goto :goto_0

    .line 424
    :cond_4
    iget-object v0, p0, Lcom/viber/voip/AddFriendPreview;->e:Lcom/viber/voip/k;

    invoke-virtual {v0}, Lcom/viber/voip/k;->a()I

    move-result v0

    .line 425
    if-eq v0, v4, :cond_0

    .line 426
    iget-object v1, p0, Lcom/viber/voip/AddFriendPreview;->f:Lcom/viber/voip/widget/SpinnerWithDescription;

    invoke-virtual {v1, v0}, Lcom/viber/voip/widget/SpinnerWithDescription;->setSelection(I)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/viber/voip/AddFriendPreview;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/viber/voip/AddFriendPreview;->a(Z)V

    return-void
.end method

.method static synthetic c(Lcom/viber/voip/AddFriendPreview;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 70
    iget-object v0, p0, Lcom/viber/voip/AddFriendPreview;->d:Landroid/widget/ImageView;

    return-object v0
.end method

.method private c()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const v4, 0x7f0c06e6

    const v3, 0x7f0c03ad

    .line 441
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 443
    invoke-direct {p0, v0}, Lcom/viber/voip/AddFriendPreview;->a(Ljava/util/ArrayList;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 445
    invoke-static {p0, v3, v4, v5}, Lcom/viber/voip/util/at;->a(Landroid/content/Context;IILjava/lang/Runnable;)Landroid/content/DialogInterface;

    .line 466
    :goto_0
    return-void

    .line 450
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/viber/voip/AddFriendPreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "com.android.contacts"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v0

    .line 451
    if-eqz v0, :cond_2

    array-length v0, v0

    if-lez v0, :cond_2

    .line 453
    iget-object v0, p0, Lcom/viber/voip/AddFriendPreview;->f:Lcom/viber/voip/widget/SpinnerWithDescription;

    invoke-virtual {v0}, Lcom/viber/voip/widget/SpinnerWithDescription;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    .line 454
    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/viber/voip/ViberApplication;->preferences(Landroid/content/Context;)Lcom/viber/voip/settings/l;

    move-result-object v1

    const-string/jumbo v2, "selected_account"

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/viber/voip/settings/l;

    .line 455
    :cond_1
    invoke-virtual {p0}, Lcom/viber/voip/AddFriendPreview;->finish()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 459
    :catch_0
    move-exception v0

    .line 461
    invoke-static {p0, v3, v4, v5}, Lcom/viber/voip/util/at;->a(Landroid/content/Context;IILjava/lang/Runnable;)Landroid/content/DialogInterface;

    goto :goto_0

    .line 457
    :cond_2
    const v0, 0x7f0c03ad

    const v1, 0x7f0c06e6

    const/4 v2, 0x0

    :try_start_1
    invoke-static {p0, v0, v1, v2}, Lcom/viber/voip/util/at;->a(Landroid/content/Context;IILjava/lang/Runnable;)Landroid/content/DialogInterface;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 462
    :catch_1
    move-exception v0

    .line 464
    invoke-static {p0, v3, v4, v5}, Lcom/viber/voip/util/at;->a(Landroid/content/Context;IILjava/lang/Runnable;)Landroid/content/DialogInterface;

    goto :goto_0
.end method

.method static synthetic c(Lcom/viber/voip/AddFriendPreview;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/viber/voip/AddFriendPreview;->p:Z

    return p1
.end method

.method private d()V
    .locals 3

    .prologue
    .line 529
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/a/a;->e:Lcom/viber/voip/a/w;

    invoke-virtual {v1}, Lcom/viber/voip/a/w;->e()Lcom/viber/voip/a/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    .line 531
    invoke-virtual {p0}, Lcom/viber/voip/AddFriendPreview;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 532
    const-string/jumbo v1, "android.hardware.camera"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "android.hardware.camera.front"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 533
    const v0, 0x7f0c0484

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 545
    :cond_0
    :goto_0
    return-void

    .line 537
    :cond_1
    invoke-static {}, Lcom/viber/voip/messages/extras/image/h;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 538
    sget-object v0, Lcom/viber/voip/messages/extras/image/l;->d:Lcom/viber/voip/messages/extras/image/l;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/viber/voip/messages/extras/image/h;->a(Lcom/viber/voip/messages/extras/image/l;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/AddFriendPreview;->o:Landroid/net/Uri;

    .line 539
    iget-object v0, p0, Lcom/viber/voip/AddFriendPreview;->o:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 540
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 541
    const-string/jumbo v1, "output"

    iget-object v2, p0, Lcom/viber/voip/AddFriendPreview;->o:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 542
    const/16 v1, 0xa

    invoke-virtual {p0, v0, v1}, Lcom/viber/voip/AddFriendPreview;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method static synthetic d(Lcom/viber/voip/AddFriendPreview;)Z
    .locals 1
    .parameter

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/viber/voip/AddFriendPreview;->p:Z

    return v0
.end method

.method static synthetic e(Lcom/viber/voip/AddFriendPreview;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 70
    iget-object v0, p0, Lcom/viber/voip/AddFriendPreview;->c:Landroid/view/View;

    return-object v0
.end method

.method private e()V
    .locals 3

    .prologue
    .line 548
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/a/a;->e:Lcom/viber/voip/a/w;

    invoke-virtual {v1}, Lcom/viber/voip/a/w;->d()Lcom/viber/voip/a/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    .line 550
    invoke-static {}, Lcom/viber/voip/messages/extras/image/h;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 551
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "android.intent.action.GET_CONTENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 552
    const v1, 0x7f0c041a

    invoke-virtual {p0, v1}, Lcom/viber/voip/AddFriendPreview;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Landroid/content/Intent;

    invoke-static {v0, v1, v2}, Lcom/viber/voip/util/at;->a(Landroid/content/Intent;Ljava/lang/CharSequence;[Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    .line 553
    const/16 v1, 0x14

    invoke-virtual {p0, v0, v1}, Lcom/viber/voip/AddFriendPreview;->startActivityForResult(Landroid/content/Intent;I)V

    .line 555
    :cond_0
    return-void
.end method

.method static synthetic f(Lcom/viber/voip/AddFriendPreview;)Landroid/graphics/ColorFilter;
    .locals 1
    .parameter

    .prologue
    .line 70
    iget-object v0, p0, Lcom/viber/voip/AddFriendPreview;->r:Landroid/graphics/ColorFilter;

    return-object v0
.end method

.method static synthetic g(Lcom/viber/voip/AddFriendPreview;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 70
    iget-object v0, p0, Lcom/viber/voip/AddFriendPreview;->k:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic h(Lcom/viber/voip/AddFriendPreview;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 70
    iget-object v0, p0, Lcom/viber/voip/AddFriendPreview;->j:Landroid/widget/ImageView;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 306
    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 310
    packed-switch p1, :pswitch_data_0

    .line 325
    invoke-direct {p0, v2, v2, v2}, Lcom/viber/voip/AddFriendPreview;->a(Ljava/lang/String;Lcom/viber/voip/BaseAddFriendActivity$ContactDetails;Landroid/os/Bundle;)V

    .line 326
    const v0, 0x7f0c038f

    const v1, 0x7f0c04f9

    invoke-static {p0, v0, v1, v2}, Lcom/viber/voip/util/at;->a(Landroid/content/Context;IILjava/lang/Runnable;)Landroid/content/DialogInterface;

    .line 329
    :goto_0
    return-void

    .line 312
    :pswitch_0
    invoke-direct {p0, p2, v2, v2}, Lcom/viber/voip/AddFriendPreview;->a(Ljava/lang/String;Lcom/viber/voip/BaseAddFriendActivity$ContactDetails;Landroid/os/Bundle;)V

    .line 313
    invoke-direct {p0, p2}, Lcom/viber/voip/AddFriendPreview;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 317
    :pswitch_1
    invoke-direct {p0, p2, v2, v2}, Lcom/viber/voip/AddFriendPreview;->a(Ljava/lang/String;Lcom/viber/voip/BaseAddFriendActivity$ContactDetails;Landroid/os/Bundle;)V

    .line 318
    const v0, 0x7f0c03a2

    const v1, 0x7f0c037e

    invoke-static {p0, v0, v1, v2}, Lcom/viber/voip/util/at;->a(Landroid/content/Context;IILjava/lang/Runnable;)Landroid/content/DialogInterface;

    goto :goto_0

    .line 321
    :pswitch_2
    invoke-direct {p0, p2, v2, v2}, Lcom/viber/voip/AddFriendPreview;->a(Ljava/lang/String;Lcom/viber/voip/BaseAddFriendActivity$ContactDetails;Landroid/os/Bundle;)V

    .line 322
    const v0, 0x7f0c0557

    const v1, 0x7f0c0558

    invoke-static {p0, v0, v1, v2}, Lcom/viber/voip/util/at;->a(Landroid/content/Context;IILjava/lang/Runnable;)Landroid/content/DialogInterface;

    goto :goto_0

    .line 310
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public a(Ljava/lang/String;Lcom/viber/voip/BaseAddFriendActivity$ContactDetails;)V
    .locals 10
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x0

    .line 333
    invoke-virtual {p2}, Lcom/viber/voip/BaseAddFriendActivity$ContactDetails;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 335
    invoke-static {}, Lcom/viber/voip/ViberApplication;->isTablet()Z

    move-result v1

    invoke-virtual {p2}, Lcom/viber/voip/BaseAddFriendActivity$ContactDetails;->c()J

    move-result-wide v2

    invoke-virtual {p2}, Lcom/viber/voip/BaseAddFriendActivity$ContactDetails;->b()J

    move-result-wide v4

    invoke-virtual {p2}, Lcom/viber/voip/BaseAddFriendActivity$ContactDetails;->d()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2}, Lcom/viber/voip/BaseAddFriendActivity$ContactDetails;->e()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2}, Lcom/viber/voip/BaseAddFriendActivity$ContactDetails;->f()Landroid/net/Uri;

    move-result-object v8

    move-object v0, p0

    invoke-static/range {v0 .. v9}, Lcom/viber/voip/util/gn;->a(Landroid/content/Context;ZJJLjava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    .line 337
    invoke-virtual {p0}, Lcom/viber/voip/AddFriendPreview;->finish()V

    .line 342
    :goto_0
    return-void

    .line 340
    :cond_0
    invoke-direct {p0, p1, p2, v9}, Lcom/viber/voip/AddFriendPreview;->a(Ljava/lang/String;Lcom/viber/voip/BaseAddFriendActivity$ContactDetails;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x1e

    .line 246
    const/4 v0, -0x1

    if-ne p2, v0, :cond_3

    .line 247
    sparse-switch p1, :sswitch_data_0

    .line 288
    :cond_0
    :goto_0
    return-void

    .line 249
    :sswitch_0
    iget-object v0, p0, Lcom/viber/voip/AddFriendPreview;->o:Landroid/net/Uri;

    invoke-static {v0}, Lcom/viber/voip/messages/extras/image/g;->a(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Lcom/viber/voip/AddFriendPreview;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 252
    :sswitch_1
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 253
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 255
    invoke-static {v0}, Lcom/viber/voip/util/bj;->b(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 256
    const-string/jumbo v2, "image"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Lcom/viber/voip/messages/extras/image/h;->c(Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 257
    invoke-static {}, Lcom/viber/voip/messages/extras/image/h;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/viber/voip/messages/extras/image/h;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 258
    invoke-static {v0}, Lcom/viber/voip/messages/extras/image/g;->a(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Lcom/viber/voip/AddFriendPreview;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 261
    :cond_1
    invoke-static {p0, v4}, Lcom/viber/voip/util/bj;->a(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    .line 266
    :sswitch_2
    if-eqz p3, :cond_0

    .line 267
    iget-object v0, p0, Lcom/viber/voip/AddFriendPreview;->o:Landroid/net/Uri;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/viber/voip/AddFriendPreview;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/AddFriendPreview;->o:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/viber/voip/messages/extras/image/h;->c(Landroid/content/Context;Landroid/net/Uri;)Z

    .line 268
    :cond_2
    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/AddFriendPreview;->n:Landroid/net/Uri;

    .line 269
    iget-object v0, p0, Lcom/viber/voip/AddFriendPreview;->j:Landroid/widget/ImageView;

    const v1, 0x7f0202bd

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 270
    iget-object v0, p0, Lcom/viber/voip/AddFriendPreview;->k:Landroid/widget/ImageView;

    const v1, 0x7f020259

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 271
    iget-object v0, p0, Lcom/viber/voip/AddFriendPreview;->l:Lcom/viber/voip/util/b/w;

    iget-object v1, p0, Lcom/viber/voip/AddFriendPreview;->n:Landroid/net/Uri;

    iget-object v2, p0, Lcom/viber/voip/AddFriendPreview;->m:Lcom/viber/voip/util/b/x;

    iget-object v3, p0, Lcom/viber/voip/AddFriendPreview;->u:Lcom/viber/voip/util/b/al;

    invoke-virtual {v0, v1, v2, v3}, Lcom/viber/voip/util/b/w;->a(Landroid/net/Uri;Lcom/viber/voip/util/b/x;Lcom/viber/voip/util/b/al;)V

    goto :goto_0

    .line 275
    :sswitch_3
    const-string/jumbo v0, "authAccount"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 276
    iget-object v1, p0, Lcom/viber/voip/AddFriendPreview;->e:Lcom/viber/voip/k;

    if-eqz v1, :cond_0

    .line 277
    iget-object v1, p0, Lcom/viber/voip/AddFriendPreview;->e:Lcom/viber/voip/k;

    invoke-virtual {v1, v0}, Lcom/viber/voip/k;->a(Ljava/lang/String;)I

    move-result v0

    .line 278
    iget-object v1, p0, Lcom/viber/voip/AddFriendPreview;->f:Lcom/viber/voip/widget/SpinnerWithDescription;

    invoke-virtual {v1, v0}, Lcom/viber/voip/widget/SpinnerWithDescription;->setSelection(I)V

    goto/16 :goto_0

    .line 282
    :cond_3
    if-nez p2, :cond_0

    .line 283
    iget-object v0, p0, Lcom/viber/voip/AddFriendPreview;->o:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/viber/voip/AddFriendPreview;->o:Landroid/net/Uri;

    invoke-static {p0, v0}, Lcom/viber/voip/messages/extras/image/h;->c(Landroid/content/Context;Landroid/net/Uri;)Z

    .line 285
    iput-object v4, p0, Lcom/viber/voip/AddFriendPreview;->o:Landroid/net/Uri;

    goto/16 :goto_0

    .line 247
    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0x14 -> :sswitch_1
        0x1e -> :sswitch_2
        0x28 -> :sswitch_3
    .end sparse-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 292
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 293
    packed-switch v0, :pswitch_data_0

    .line 301
    :goto_0
    return-void

    .line 295
    :pswitch_0
    invoke-direct {p0}, Lcom/viber/voip/AddFriendPreview;->d()V

    goto :goto_0

    .line 298
    :pswitch_1
    invoke-direct {p0}, Lcom/viber/voip/AddFriendPreview;->e()V

    goto :goto_0

    .line 293
    :pswitch_data_0
    .packed-switch 0x7f070193
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x1

    .line 169
    invoke-super {p0, p1}, Lcom/viber/voip/BaseAddFriendActivity;->onCreate(Landroid/os/Bundle;)V

    .line 170
    const v0, 0x7f030064

    invoke-virtual {p0, v0}, Lcom/viber/voip/AddFriendPreview;->setContentView(I)V

    .line 172
    invoke-virtual {p0}, Lcom/viber/voip/AddFriendPreview;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    .line 173
    invoke-virtual {v0, v5}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 175
    invoke-static {p0}, Lcom/viber/voip/util/b/w;->a(Landroid/content/Context;)Lcom/viber/voip/util/b/w;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/AddFriendPreview;->l:Lcom/viber/voip/util/b/w;

    .line 176
    invoke-static {p0}, Lcom/viber/voip/util/b/x;->d(Landroid/content/Context;)Lcom/viber/voip/util/b/x;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/AddFriendPreview;->m:Lcom/viber/voip/util/b/x;

    .line 177
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {p0}, Lcom/viber/voip/AddFriendPreview;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900af

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/viber/voip/AddFriendPreview;->r:Landroid/graphics/ColorFilter;

    .line 179
    invoke-virtual {p0}, Lcom/viber/voip/AddFriendPreview;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 180
    const-string/jumbo v1, "invite_not_viber"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 181
    const-string/jumbo v1, "phone_number"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 182
    const-string/jumbo v1, "contact_details"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/BaseAddFriendActivity$ContactDetails;

    .line 184
    const v1, 0x7f070199

    invoke-virtual {p0, v1}, Lcom/viber/voip/AddFriendPreview;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/viber/voip/AddFriendPreview;->b:Landroid/view/View;

    .line 185
    const v1, 0x7f070191

    invoke-virtual {p0, v1}, Lcom/viber/voip/AddFriendPreview;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/viber/voip/AddFriendPreview;->c:Landroid/view/View;

    .line 186
    const v1, 0x7f070112

    invoke-virtual {p0, v1}, Lcom/viber/voip/AddFriendPreview;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/viber/voip/AddFriendPreview;->d:Landroid/widget/ImageView;

    .line 187
    const v1, 0x7f070198

    invoke-virtual {p0, v1}, Lcom/viber/voip/AddFriendPreview;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/viber/voip/widget/SpinnerWithDescription;

    iput-object v1, p0, Lcom/viber/voip/AddFriendPreview;->f:Lcom/viber/voip/widget/SpinnerWithDescription;

    .line 188
    const v1, 0x7f070196

    invoke-virtual {p0, v1}, Lcom/viber/voip/AddFriendPreview;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/viber/voip/widget/TextViewWithDescription;

    iput-object v1, p0, Lcom/viber/voip/AddFriendPreview;->g:Lcom/viber/voip/widget/TextViewWithDescription;

    .line 189
    const v1, 0x7f070197

    invoke-virtual {p0, v1}, Lcom/viber/voip/AddFriendPreview;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/viber/voip/widget/TextViewWithDescription;

    iput-object v1, p0, Lcom/viber/voip/AddFriendPreview;->h:Lcom/viber/voip/widget/TextViewWithDescription;

    .line 190
    const v1, 0x7f07018d

    invoke-virtual {p0, v1}, Lcom/viber/voip/AddFriendPreview;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/viber/voip/widget/TextViewWithDescription;

    iput-object v1, p0, Lcom/viber/voip/AddFriendPreview;->i:Lcom/viber/voip/widget/TextViewWithDescription;

    .line 191
    const v1, 0x7f070193

    invoke-virtual {p0, v1}, Lcom/viber/voip/AddFriendPreview;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/viber/voip/AddFriendPreview;->k:Landroid/widget/ImageView;

    .line 192
    const v1, 0x7f070194

    invoke-virtual {p0, v1}, Lcom/viber/voip/AddFriendPreview;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/viber/voip/AddFriendPreview;->j:Landroid/widget/ImageView;

    .line 194
    iget-object v1, p0, Lcom/viber/voip/AddFriendPreview;->k:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 195
    iget-object v1, p0, Lcom/viber/voip/AddFriendPreview;->j:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    iget-object v1, p0, Lcom/viber/voip/AddFriendPreview;->b:Landroid/view/View;

    iget-object v4, p0, Lcom/viber/voip/AddFriendPreview;->s:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    if-nez v2, :cond_1

    if-nez v0, :cond_1

    if-nez p1, :cond_1

    .line 199
    invoke-virtual {p0, v3, v5, p0}, Lcom/viber/voip/AddFriendPreview;->a(Ljava/lang/String;ZLcom/viber/voip/v;)V

    .line 206
    :cond_0
    :goto_0
    return-void

    .line 201
    :cond_1
    invoke-direct {p0, v3, v0, p1}, Lcom/viber/voip/AddFriendPreview;->a(Ljava/lang/String;Lcom/viber/voip/BaseAddFriendActivity$ContactDetails;Landroid/os/Bundle;)V

    .line 202
    if-eqz v2, :cond_0

    if-nez p1, :cond_0

    .line 203
    invoke-direct {p0, v3}, Lcom/viber/voip/AddFriendPreview;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z
    .locals 4
    .parameter

    .prologue
    .line 220
    invoke-virtual {p0}, Lcom/viber/voip/AddFriendPreview;->getSupportMenuInflater()Lcom/actionbarsherlock/view/MenuInflater;

    move-result-object v0

    .line 221
    const v1, 0x7f100017

    invoke-virtual {v0, v1, p1}, Lcom/actionbarsherlock/view/MenuInflater;->inflate(ILcom/actionbarsherlock/view/Menu;)V

    .line 224
    const v0, 0x7f070450

    invoke-interface {p1, v0}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0202dd

    const v2, 0x7f0c0537

    iget-object v3, p0, Lcom/viber/voip/AddFriendPreview;->s:Landroid/view/View$OnClickListener;

    invoke-static {v0, v1, v2, v3}, Lcom/viber/voip/util/gl;->a(Lcom/actionbarsherlock/view/MenuItem;IILandroid/view/View$OnClickListener;)Lcom/actionbarsherlock/internal/view/menu/ActionMenuItemView;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/AddFriendPreview;->a:Lcom/actionbarsherlock/internal/view/menu/ActionMenuItemView;

    .line 226
    iget-object v0, p0, Lcom/viber/voip/AddFriendPreview;->a:Lcom/actionbarsherlock/internal/view/menu/ActionMenuItemView;

    const v1, 0x7f070139

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/actionbarsherlock/internal/widget/CapitalizingButton;

    invoke-virtual {p0}, Lcom/viber/voip/AddFriendPreview;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900fa

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/internal/widget/CapitalizingButton;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 228
    iget-boolean v0, p0, Lcom/viber/voip/AddFriendPreview;->q:Z

    invoke-direct {p0, v0}, Lcom/viber/voip/AddFriendPreview;->a(Z)V

    .line 229
    invoke-super {p0, p1}, Lcom/viber/voip/BaseAddFriendActivity;->onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 1
    .parameter

    .prologue
    .line 234
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    .line 235
    packed-switch v0, :pswitch_data_0

    .line 240
    invoke-super {p0, p1}, Lcom/viber/voip/BaseAddFriendActivity;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 237
    :pswitch_0
    invoke-virtual {p0}, Lcom/viber/voip/AddFriendPreview;->onBackPressed()V

    .line 238
    const/4 v0, 0x1

    goto :goto_0

    .line 235
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 210
    const-string/jumbo v0, "photo_uri"

    iget-object v1, p0, Lcom/viber/voip/AddFriendPreview;->n:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 211
    const-string/jumbo v0, "can_change_photo"

    iget-boolean v1, p0, Lcom/viber/voip/AddFriendPreview;->p:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 212
    const-string/jumbo v0, "is_loaded_photo"

    iget-boolean v1, p0, Lcom/viber/voip/AddFriendPreview;->q:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 213
    const-string/jumbo v0, "display_name"

    iget-object v1, p0, Lcom/viber/voip/AddFriendPreview;->g:Lcom/viber/voip/widget/TextViewWithDescription;

    invoke-virtual {v1}, Lcom/viber/voip/widget/TextViewWithDescription;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    const-string/jumbo v0, "phonetic_name"

    iget-object v1, p0, Lcom/viber/voip/AddFriendPreview;->h:Lcom/viber/voip/widget/TextViewWithDescription;

    invoke-virtual {v1}, Lcom/viber/voip/widget/TextViewWithDescription;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    invoke-super {p0, p1}, Lcom/viber/voip/BaseAddFriendActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 216
    return-void
.end method
