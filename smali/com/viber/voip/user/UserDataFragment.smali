.class public Lcom/viber/voip/user/UserDataFragment;
.super Lcom/viber/voip/user/UserDataBaseFragment;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/viber/voip/d;


# static fields
.field private static final DIALOG_SKIP:I = 0xa

.field private static final LOG_TAG:Ljava/lang/String;

.field private static cachedName:Ljava/lang/String;

.field private static cachedUri:Landroid/net/Uri;


# instance fields
.field private displayName:Ljava/lang/String;

.field private mIsSkip:Z

.field private wrapper:Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/viber/voip/user/UserDataFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/user/UserDataFragment;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/viber/voip/user/UserDataBaseFragment;-><init>()V

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/viber/voip/user/UserDataFragment;->mIsSkip:Z

    .line 42
    return-void
.end method

.method static synthetic access$1100(Lcom/viber/voip/user/UserDataFragment;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/viber/voip/user/UserDataFragment;->setDisplayName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/viber/voip/user/UserDataFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/viber/voip/user/UserDataFragment;->onFacebookDetailsButtonClicked()V

    return-void
.end method

.method static synthetic access$600(Lcom/viber/voip/user/UserDataFragment;)Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/viber/voip/user/UserDataFragment;->wrapper:Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;

    return-object v0
.end method

.method private checkChanges()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x4

    const/4 v0, 0x0

    .line 304
    invoke-virtual {p0}, Lcom/viber/voip/user/UserDataFragment;->getImageUri()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 305
    iget-object v1, p0, Lcom/viber/voip/user/UserDataFragment;->wrapper:Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;

    #getter for: Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;->galleryBtn:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;->access$400(Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;)Landroid/widget/ImageView;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/viber/voip/user/UserDataFragment;->wrapper:Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;

    #getter for: Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;->galleryBtn:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;->access$400(Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 306
    :cond_0
    iget-object v1, p0, Lcom/viber/voip/user/UserDataFragment;->wrapper:Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;

    #getter for: Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;->cameraBtn:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;->access$500(Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;)Landroid/widget/ImageView;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/viber/voip/user/UserDataFragment;->wrapper:Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;

    #getter for: Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;->cameraBtn:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;->access$500(Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 308
    :cond_1
    iget-object v1, p0, Lcom/viber/voip/user/UserDataFragment;->wrapper:Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;

    #getter for: Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;->textViewOnPic:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;->access$1300(Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 309
    iget-object v1, p0, Lcom/viber/voip/user/UserDataFragment;->wrapper:Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;

    #getter for: Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;->doneBtn:Landroid/view/View;
    invoke-static {v1}, Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;->access$1000(Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/viber/voip/user/UserDataFragment;->wrapper:Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;

    #getter for: Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;->doneBtn:Landroid/view/View;
    invoke-static {v1}, Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;->access$1000(Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 310
    :cond_2
    iget-object v1, p0, Lcom/viber/voip/user/UserDataFragment;->wrapper:Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;

    #getter for: Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;->imageViewPic:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;->access$900(Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 322
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/viber/voip/user/UserDataFragment;->getImageUri()Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/viber/voip/user/UserDataFragment;->displayName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v0, 0x1

    :cond_4
    iput-boolean v0, p0, Lcom/viber/voip/user/UserDataFragment;->mIsSkip:Z

    .line 323
    return-void

    .line 312
    :cond_5
    iget-object v1, p0, Lcom/viber/voip/user/UserDataFragment;->wrapper:Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;

    #getter for: Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;->galleryBtn:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;->access$400(Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;)Landroid/widget/ImageView;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/viber/voip/user/UserDataFragment;->wrapper:Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;

    #getter for: Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;->galleryBtn:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;->access$400(Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 313
    :cond_6
    iget-object v1, p0, Lcom/viber/voip/user/UserDataFragment;->wrapper:Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;

    #getter for: Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;->cameraBtn:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;->access$500(Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;)Landroid/widget/ImageView;

    move-result-object v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/viber/voip/user/UserDataFragment;->wrapper:Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;

    #getter for: Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;->cameraBtn:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;->access$500(Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 315
    :cond_7
    iget-object v1, p0, Lcom/viber/voip/user/UserDataFragment;->wrapper:Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;

    #getter for: Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;->textViewOnPic:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;->access$1300(Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 316
    iget-object v1, p0, Lcom/viber/voip/user/UserDataFragment;->wrapper:Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;

    #getter for: Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;->doneBtn:Landroid/view/View;
    invoke-static {v1}, Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;->access$1000(Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/viber/voip/user/UserDataFragment;->wrapper:Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;

    #getter for: Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;->doneBtn:Landroid/view/View;
    invoke-static {v1}, Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;->access$1000(Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 318
    :cond_8
    iget-object v1, p0, Lcom/viber/voip/user/UserDataFragment;->wrapper:Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;

    #getter for: Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;->galleryBtn:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;->access$400(Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;)Landroid/widget/ImageView;

    move-result-object v1

    if-nez v1, :cond_3

    .line 319
    iget-object v1, p0, Lcom/viber/voip/user/UserDataFragment;->wrapper:Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;

    #getter for: Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;->imageViewPic:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;->access$900(Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private createWrapper(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 90
    new-instance v0, Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;

    invoke-direct {v0, p0, p1}, Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;-><init>(Lcom/viber/voip/user/UserDataFragment;Landroid/view/View;)V

    iput-object v0, p0, Lcom/viber/voip/user/UserDataFragment;->wrapper:Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;

    .line 92
    iget-object v0, p0, Lcom/viber/voip/user/UserDataFragment;->wrapper:Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;

    #getter for: Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;->buttonSave:Landroid/widget/Button;
    invoke-static {v0}, Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;->access$100(Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    iget-object v0, p0, Lcom/viber/voip/user/UserDataFragment;->wrapper:Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;

    #getter for: Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;->buttonUseFacebookDetails:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;->access$200(Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    iget-object v0, p0, Lcom/viber/voip/user/UserDataFragment;->wrapper:Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;

    #getter for: Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;->imageViewPicBg:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;->access$300(Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;)Landroid/widget/LinearLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/viber/voip/user/UserDataFragment;->wrapper:Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;

    #getter for: Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;->imageViewPicBg:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;->access$300(Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    :goto_0
    iget-object v0, p0, Lcom/viber/voip/user/UserDataFragment;->wrapper:Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;

    #getter for: Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;->clearBtn:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;->access$800(Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    iget-object v0, p0, Lcom/viber/voip/user/UserDataFragment;->wrapper:Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;

    #getter for: Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;->clearBtn:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;->access$800(Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 111
    iget-object v0, p0, Lcom/viber/voip/user/UserDataFragment;->wrapper:Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;

    #getter for: Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;->editTextName:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;->access$000(Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 112
    iget-object v0, p0, Lcom/viber/voip/user/UserDataFragment;->wrapper:Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;

    #getter for: Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;->imageViewPic:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;->access$900(Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/user/UserDataFragment;->setImageView(Landroid/widget/ImageView;)V

    .line 113
    return-void

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/user/UserDataFragment;->wrapper:Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;

    #getter for: Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;->galleryBtn:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;->access$400(Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    iget-object v0, p0, Lcom/viber/voip/user/UserDataFragment;->wrapper:Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;

    #getter for: Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;->cameraBtn:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;->access$500(Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    iget-object v0, p0, Lcom/viber/voip/user/UserDataFragment;->wrapper:Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;

    #getter for: Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;->editTextName:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;->access$000(Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;)Landroid/widget/EditText;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/user/UserDataFragment$1;

    invoke-direct {v1, p0}, Lcom/viber/voip/user/UserDataFragment$1;-><init>(Lcom/viber/voip/user/UserDataFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    goto :goto_0
.end method

.method private hideKeyBoard()V
    .locals 3

    .prologue
    .line 172
    invoke-virtual {p0}, Lcom/viber/voip/user/UserDataFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string/jumbo v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 173
    iget-object v1, p0, Lcom/viber/voip/user/UserDataFragment;->wrapper:Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;

    #getter for: Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;->editTextName:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;->access$000(Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 174
    return-void
.end method

.method private initScreen()V
    .locals 0

    .prologue
    .line 143
    invoke-direct {p0}, Lcom/viber/voip/user/UserDataFragment;->restoreFields()V

    .line 144
    return-void
.end method

.method private onFacebookDetailsButtonClicked()V
    .locals 1

    .prologue
    .line 239
    new-instance v0, Lcom/viber/voip/user/UserDataFragment$2;

    invoke-direct {v0, p0}, Lcom/viber/voip/user/UserDataFragment$2;-><init>(Lcom/viber/voip/user/UserDataFragment;)V

    invoke-virtual {p0, v0}, Lcom/viber/voip/user/UserDataFragment;->loadFacebookDetails(Lcom/viber/voip/user/FacebookDetailsListener;)V

    .line 275
    return-void
.end method

.method private restoreFields()V
    .locals 2

    .prologue
    .line 124
    sget-object v0, Lcom/viber/voip/user/UserDataFragment;->cachedName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/viber/voip/user/UserDataFragment;->wrapper:Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;

    #getter for: Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;->editTextName:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;->access$000(Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;)Landroid/widget/EditText;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/user/UserDataFragment;->cachedName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 126
    iget-object v0, p0, Lcom/viber/voip/user/UserDataFragment;->wrapper:Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;

    #getter for: Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;->editTextName:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;->access$000(Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;)Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelected(Z)V

    .line 127
    iget-object v0, p0, Lcom/viber/voip/user/UserDataFragment;->wrapper:Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;

    #getter for: Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;->editTextName:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;->access$000(Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;)Landroid/widget/EditText;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/user/UserDataFragment;->cachedName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 128
    iget-object v0, p0, Lcom/viber/voip/user/UserDataFragment;->wrapper:Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;

    #getter for: Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;->editTextName:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;->access$000(Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 130
    :cond_0
    sget-object v0, Lcom/viber/voip/user/UserDataFragment;->cachedUri:Landroid/net/Uri;

    invoke-virtual {p0, v0}, Lcom/viber/voip/user/UserDataFragment;->setImageUri(Landroid/net/Uri;)V

    .line 131
    invoke-direct {p0}, Lcom/viber/voip/user/UserDataFragment;->checkChanges()V

    .line 135
    invoke-virtual {p0}, Lcom/viber/voip/user/UserDataFragment;->isCropingImage()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 136
    invoke-direct {p0}, Lcom/viber/voip/user/UserDataFragment;->hideKeyBoard()V

    .line 138
    :cond_1
    return-void
.end method

.method private setDisplayName(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 287
    sput-object p1, Lcom/viber/voip/user/UserDataFragment;->cachedName:Ljava/lang/String;

    .line 288
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/user/UserDataFragment;->displayName:Ljava/lang/String;

    .line 289
    invoke-direct {p0}, Lcom/viber/voip/user/UserDataFragment;->checkChanges()V

    .line 290
    return-void
.end method

.method private showKeyBoard()V
    .locals 3

    .prologue
    .line 167
    invoke-virtual {p0}, Lcom/viber/voip/user/UserDataFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string/jumbo v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 168
    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 169
    return-void
.end method

.method private skip()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 341
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/a/a;->e:Lcom/viber/voip/a/w;

    const-string/jumbo v2, "Non"

    invoke-virtual {v1, v2}, Lcom/viber/voip/a/w;->b(Ljava/lang/String;)Lcom/viber/voip/a/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    .line 342
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getActivationController()Lcom/viber/voip/registration/ActivationController;

    move-result-object v0

    const/16 v1, 0x8

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/registration/ActivationController;->setStep(IZ)V

    .line 343
    invoke-static {}, Lcom/viber/voip/user/UserData;->clear()V

    .line 344
    sput-object v3, Lcom/viber/voip/user/UserDataFragment;->cachedName:Ljava/lang/String;

    .line 345
    sput-object v3, Lcom/viber/voip/user/UserDataFragment;->cachedUri:Landroid/net/Uri;

    .line 346
    return-void
.end method

.method private updateClearButton()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 116
    iget-object v0, p0, Lcom/viber/voip/user/UserDataFragment;->wrapper:Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;

    #getter for: Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;->editTextName:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;->access$000(Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 120
    :goto_0
    iget-object v2, p0, Lcom/viber/voip/user/UserDataFragment;->wrapper:Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;

    #getter for: Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;->clearBtn:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;->access$800(Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;)Landroid/widget/ImageView;

    move-result-object v2

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 121
    return-void

    :cond_0
    move v0, v1

    .line 116
    goto :goto_0

    .line 120
    :cond_1
    const/16 v1, 0x8

    goto :goto_1
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter

    .prologue
    .line 333
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 338
    return-void
.end method

.method public onActivityBackPressed()Z
    .locals 1

    .prologue
    .line 327
    invoke-direct {p0}, Lcom/viber/voip/user/UserDataFragment;->skip()V

    .line 328
    const/4 v0, 0x1

    return v0
.end method

.method public onActivityKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 355
    const/4 v0, 0x0

    return v0
.end method

.method public onActivitySearchRequested()Z
    .locals 1

    .prologue
    .line 350
    const/4 v0, 0x0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 180
    iget-object v0, p0, Lcom/viber/voip/user/UserDataFragment;->wrapper:Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;

    #getter for: Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;->imageViewPicBg:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;->access$300(Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;)Landroid/widget/LinearLayout;

    move-result-object v0

    if-ne p1, v0, :cond_2

    .line 181
    invoke-virtual {p0, v3}, Lcom/viber/voip/user/UserDataFragment;->externalStorageMounted(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    invoke-virtual {p0}, Lcom/viber/voip/user/UserDataFragment;->getImageUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 183
    invoke-virtual {p0, v3}, Lcom/viber/voip/user/UserDataFragment;->showDialog(I)V

    .line 236
    :cond_0
    :goto_0
    return-void

    .line 185
    :cond_1
    invoke-virtual {p0, v2}, Lcom/viber/voip/user/UserDataFragment;->showDialog(I)V

    goto :goto_0

    .line 188
    :cond_2
    iget-object v0, p0, Lcom/viber/voip/user/UserDataFragment;->wrapper:Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;

    #getter for: Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;->buttonSave:Landroid/widget/Button;
    invoke-static {v0}, Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;->access$100(Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;)Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 189
    iget-boolean v0, p0, Lcom/viber/voip/user/UserDataFragment;->mIsSkip:Z

    if-nez v0, :cond_6

    .line 190
    sget-object v0, Lcom/viber/voip/user/UserDataFragment;->cachedUri:Landroid/net/Uri;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/viber/voip/user/UserDataFragment;->cachedName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0, v3}, Lcom/viber/voip/user/UserDataFragment;->externalStorageMounted(Z)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 192
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/a/a;->e:Lcom/viber/voip/a/w;

    const-string/jumbo v2, "Both"

    invoke-virtual {v1, v2}, Lcom/viber/voip/a/w;->b(Ljava/lang/String;)Lcom/viber/voip/a/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    .line 194
    const-string/jumbo v0, "button save clicked. setting name and photo to user."

    invoke-virtual {p0, v0}, Lcom/viber/voip/user/UserDataFragment;->log(Ljava/lang/String;)V

    .line 195
    sput-object v4, Lcom/viber/voip/user/UserDataFragment;->cachedName:Ljava/lang/String;

    .line 196
    sput-object v4, Lcom/viber/voip/user/UserDataFragment;->cachedUri:Landroid/net/Uri;

    .line 197
    iget-object v0, p0, Lcom/viber/voip/user/UserDataFragment;->mMessagesManager:Lcom/viber/voip/messages/i;

    invoke-interface {v0}, Lcom/viber/voip/messages/i;->e()Lcom/viber/voip/messages/controller/dn;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/user/UserDataFragment;->displayName:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/viber/voip/messages/controller/dn;->a(Ljava/lang/String;)V

    .line 198
    iget-object v0, p0, Lcom/viber/voip/user/UserDataFragment;->mMessagesManager:Lcom/viber/voip/messages/i;

    invoke-interface {v0}, Lcom/viber/voip/messages/i;->e()Lcom/viber/voip/messages/controller/dn;

    move-result-object v0

    invoke-virtual {p0}, Lcom/viber/voip/user/UserDataFragment;->getImageUri()Landroid/net/Uri;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/viber/voip/messages/controller/dn;->a(Landroid/net/Uri;)V

    .line 212
    :cond_3
    :goto_1
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getActivationController()Lcom/viber/voip/registration/ActivationController;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1, v3}, Lcom/viber/voip/registration/ActivationController;->setStep(IZ)V

    .line 216
    :goto_2
    invoke-virtual {p0}, Lcom/viber/voip/user/UserDataFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_0

    .line 199
    :cond_4
    sget-object v0, Lcom/viber/voip/user/UserDataFragment;->cachedUri:Landroid/net/Uri;

    if-eqz v0, :cond_5

    sget-object v0, Lcom/viber/voip/user/UserDataFragment;->cachedName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0, v3}, Lcom/viber/voip/user/UserDataFragment;->externalStorageMounted(Z)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 200
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/a/a;->e:Lcom/viber/voip/a/w;

    const-string/jumbo v2, "Only photo"

    invoke-virtual {v1, v2}, Lcom/viber/voip/a/w;->b(Ljava/lang/String;)Lcom/viber/voip/a/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    .line 201
    const-string/jumbo v0, "button save clicked. setting photo to user."

    invoke-virtual {p0, v0}, Lcom/viber/voip/user/UserDataFragment;->log(Ljava/lang/String;)V

    .line 202
    sput-object v4, Lcom/viber/voip/user/UserDataFragment;->cachedName:Ljava/lang/String;

    .line 203
    sput-object v4, Lcom/viber/voip/user/UserDataFragment;->cachedUri:Landroid/net/Uri;

    .line 204
    iget-object v0, p0, Lcom/viber/voip/user/UserDataFragment;->mMessagesManager:Lcom/viber/voip/messages/i;

    invoke-interface {v0}, Lcom/viber/voip/messages/i;->e()Lcom/viber/voip/messages/controller/dn;

    move-result-object v0

    invoke-virtual {p0}, Lcom/viber/voip/user/UserDataFragment;->getImageUri()Landroid/net/Uri;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/viber/voip/messages/controller/dn;->a(Landroid/net/Uri;)V

    goto :goto_1

    .line 205
    :cond_5
    sget-object v0, Lcom/viber/voip/user/UserDataFragment;->cachedUri:Landroid/net/Uri;

    if-nez v0, :cond_3

    sget-object v0, Lcom/viber/voip/user/UserDataFragment;->cachedName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 206
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/a/a;->e:Lcom/viber/voip/a/w;

    const-string/jumbo v2, "Only name"

    invoke-virtual {v1, v2}, Lcom/viber/voip/a/w;->b(Ljava/lang/String;)Lcom/viber/voip/a/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    .line 207
    const-string/jumbo v0, "button save clicked. setting name to user."

    invoke-virtual {p0, v0}, Lcom/viber/voip/user/UserDataFragment;->log(Ljava/lang/String;)V

    .line 208
    sput-object v4, Lcom/viber/voip/user/UserDataFragment;->cachedName:Ljava/lang/String;

    .line 209
    sput-object v4, Lcom/viber/voip/user/UserDataFragment;->cachedUri:Landroid/net/Uri;

    .line 210
    iget-object v0, p0, Lcom/viber/voip/user/UserDataFragment;->mMessagesManager:Lcom/viber/voip/messages/i;

    invoke-interface {v0}, Lcom/viber/voip/messages/i;->e()Lcom/viber/voip/messages/controller/dn;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/user/UserDataFragment;->displayName:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/viber/voip/messages/controller/dn;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 214
    :cond_6
    invoke-direct {p0}, Lcom/viber/voip/user/UserDataFragment;->skip()V

    goto :goto_2

    .line 217
    :cond_7
    iget-object v0, p0, Lcom/viber/voip/user/UserDataFragment;->wrapper:Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;

    #getter for: Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;->buttonUseFacebookDetails:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;->access$200(Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;)Landroid/widget/TextView;

    move-result-object v0

    if-ne p1, v0, :cond_8

    .line 218
    invoke-direct {p0}, Lcom/viber/voip/user/UserDataFragment;->onFacebookDetailsButtonClicked()V

    goto/16 :goto_0

    .line 219
    :cond_8
    iget-object v0, p0, Lcom/viber/voip/user/UserDataFragment;->wrapper:Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;

    #getter for: Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;->cameraBtn:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;->access$500(Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;)Landroid/widget/ImageView;

    move-result-object v0

    if-ne p1, v0, :cond_a

    .line 220
    invoke-virtual {p0}, Lcom/viber/voip/user/UserDataFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v1, "android.hardware.camera"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {p0}, Lcom/viber/voip/user/UserDataFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v1, "android.hardware.camera.front"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    :cond_9
    invoke-virtual {p0, v2}, Lcom/viber/voip/user/UserDataFragment;->imageAction(I)V

    goto/16 :goto_0

    .line 224
    :cond_a
    iget-object v0, p0, Lcom/viber/voip/user/UserDataFragment;->wrapper:Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;

    #getter for: Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;->galleryBtn:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;->access$400(Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;)Landroid/widget/ImageView;

    move-result-object v0

    if-ne p1, v0, :cond_b

    .line 225
    invoke-virtual {p0, v3}, Lcom/viber/voip/user/UserDataFragment;->imageAction(I)V

    goto/16 :goto_0

    .line 226
    :cond_b
    iget-object v0, p0, Lcom/viber/voip/user/UserDataFragment;->wrapper:Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;

    #getter for: Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;->clearBtn:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;->access$800(Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;)Landroid/widget/ImageView;

    move-result-object v0

    if-ne p1, v0, :cond_c

    .line 227
    iget-object v0, p0, Lcom/viber/voip/user/UserDataFragment;->wrapper:Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;

    #getter for: Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;->editTextName:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;->access$000(Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/viber/voip/user/UserDataFragment;->wrapper:Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;

    #getter for: Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;->editTextName:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;->access$000(Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;)Landroid/widget/EditText;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 229
    iget-object v0, p0, Lcom/viber/voip/user/UserDataFragment;->wrapper:Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;

    #getter for: Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;->editTextName:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;->access$000(Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto/16 :goto_0

    .line 231
    :cond_c
    iget-object v0, p0, Lcom/viber/voip/user/UserDataFragment;->wrapper:Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;

    #getter for: Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;->imageViewPic:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;->access$900(Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;)Landroid/widget/ImageView;

    move-result-object v0

    if-ne p1, v0, :cond_d

    .line 232
    invoke-virtual {p0, v3}, Lcom/viber/voip/user/UserDataFragment;->showDialog(I)V

    goto/16 :goto_0

    .line 233
    :cond_d
    iget-object v0, p0, Lcom/viber/voip/user/UserDataFragment;->wrapper:Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;

    #getter for: Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;->doneBtn:Landroid/view/View;
    invoke-static {v0}, Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;->access$1000(Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;)Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/viber/voip/user/UserDataFragment;->wrapper:Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;

    #getter for: Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;->buttonSave:Landroid/widget/Button;
    invoke-static {v0}, Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;->access$100(Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/user/UserDataFragment;->onClick(Landroid/view/View;)V

    goto/16 :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 73
    invoke-super {p0, p1}, Lcom/viber/voip/user/UserDataBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 75
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/viber/voip/user/UserDataFragment;->setRetainInstance(Z)V

    .line 76
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/a/a;->e:Lcom/viber/voip/a/w;

    invoke-virtual {v1}, Lcom/viber/voip/a/w;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 81
    const v0, 0x7f030132

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 83
    invoke-direct {p0, v0}, Lcom/viber/voip/user/UserDataFragment;->createWrapper(Landroid/view/View;)V

    .line 84
    iget-object v1, p0, Lcom/viber/voip/user/UserDataFragment;->wrapper:Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;

    #getter for: Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;->editTextName:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;->access$000(Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    .line 86
    return-object v0
.end method

.method protected onImageUpdate()V
    .locals 1

    .prologue
    .line 294
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/viber/voip/user/UserDataFragment;->isRotationEnabled:Z

    .line 295
    invoke-virtual {p0}, Lcom/viber/voip/user/UserDataFragment;->getImageUri()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/user/UserDataFragment;->cachedUri:Landroid/net/Uri;

    .line 297
    invoke-virtual {p0}, Lcom/viber/voip/user/UserDataFragment;->getImageUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/user/UserDataFragment;->setImageUri(Landroid/net/Uri;)V

    .line 298
    invoke-direct {p0}, Lcom/viber/voip/user/UserDataFragment;->checkChanges()V

    .line 299
    invoke-direct {p0}, Lcom/viber/voip/user/UserDataFragment;->initScreen()V

    .line 301
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 161
    invoke-direct {p0}, Lcom/viber/voip/user/UserDataFragment;->hideKeyBoard()V

    .line 162
    invoke-super {p0}, Lcom/viber/voip/user/UserDataBaseFragment;->onPause()V

    .line 163
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 148
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/viber/voip/user/UserDataFragment;->isRotationEnabled:Z

    .line 149
    invoke-direct {p0}, Lcom/viber/voip/user/UserDataFragment;->restoreFields()V

    .line 150
    invoke-super {p0}, Lcom/viber/voip/user/UserDataBaseFragment;->onResume()V

    .line 151
    return-void
.end method

.method public onRetainCustomNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 360
    const/4 v0, 0x0

    return-object v0
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 155
    invoke-direct {p0}, Lcom/viber/voip/user/UserDataFragment;->hideKeyBoard()V

    .line 156
    invoke-super {p0}, Lcom/viber/voip/user/UserDataBaseFragment;->onStop()V

    .line 157
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 279
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/user/UserDataFragment;->setDisplayName(Ljava/lang/String;)V

    .line 280
    iget-object v0, p0, Lcom/viber/voip/user/UserDataFragment;->wrapper:Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;

    #getter for: Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;->clearBtn:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;->access$800(Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 281
    invoke-direct {p0}, Lcom/viber/voip/user/UserDataFragment;->updateClearButton()V

    .line 282
    iget-object v0, p0, Lcom/viber/voip/user/UserDataFragment;->wrapper:Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;

    #getter for: Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;->clearBtn:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;->access$800(Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v0, p0, Lcom/viber/voip/user/UserDataFragment;->wrapper:Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;

    #getter for: Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;->editTextName:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;->access$000(Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 284
    :cond_0
    return-void

    .line 282
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
