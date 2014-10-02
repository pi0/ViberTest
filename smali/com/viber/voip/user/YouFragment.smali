.class public Lcom/viber/voip/user/YouFragment;
.super Lcom/viber/voip/ui/q;
.source "SourceFile"


# static fields
.field public static final EDIT_NAME_DIALOG:I = 0xa

.field static final EXIT_VIBER_DIALOG:I = 0xb

.field private static LEFT_PADDING_PX:I = 0x0

.field private static LOG_TAG:Ljava/lang/String; = null

.field private static final REQUEST_CODE_CROP_PHOTO:I = 0x4d0

.field static final UPDATE_DETAILS_DIALOG:I = 0xc


# instance fields
.field private headerLayout:Lcom/viber/voip/user/YouHeaderLayout;

.field private mCallbacks:Lcom/viber/voip/user/YouFragment$Callbacks;

.field private mIsLandscape:Z

.field private mLoadFacebookDetailsTask:Lcom/viber/voip/user/LoadFacebookDetailsTask;

.field private mMergeAdapter:Lcom/a/a/a/a;

.field protected mMessagesManager:Lcom/viber/voip/messages/i;

.field private final mPhotoSetter:Lcom/viber/voip/user/UserDetailPhotoSetter;

.field private mPreferenceAdapter:Lcom/viber/voip/user/YouFragment$PreferenceAdapter;

.field private mPreferenceItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/viber/voip/user/YouFragment$PreferenceItem;",
            ">;"
        }
    .end annotation
.end field

.field private settingsItemPosition:I

.field private userChangeListener:Lcom/viber/voip/messages/controller/dh;

.field private viewCache:Lcom/viber/voip/user/YouHeaderLayout$HeaderViewCache;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    const-string/jumbo v0, "YouFragment"

    sput-object v0, Lcom/viber/voip/user/YouFragment;->LOG_TAG:Ljava/lang/String;

    .line 78
    const/high16 v0, 0x4180

    invoke-static {v0}, Lcom/viber/voip/messages/extras/image/h;->a(F)I

    move-result v0

    sput v0, Lcom/viber/voip/user/YouFragment;->LEFT_PADDING_PX:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/viber/voip/ui/q;-><init>()V

    .line 81
    new-instance v0, Lcom/viber/voip/user/UserDetailPhotoSetter;

    invoke-direct {v0}, Lcom/viber/voip/user/UserDetailPhotoSetter;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/user/YouFragment;->mPhotoSetter:Lcom/viber/voip/user/UserDetailPhotoSetter;

    .line 90
    const/4 v0, -0x1

    iput v0, p0, Lcom/viber/voip/user/YouFragment;->settingsItemPosition:I

    .line 217
    new-instance v0, Lcom/viber/voip/user/YouFragment$1;

    invoke-direct {v0, p0}, Lcom/viber/voip/user/YouFragment$1;-><init>(Lcom/viber/voip/user/YouFragment;)V

    iput-object v0, p0, Lcom/viber/voip/user/YouFragment;->userChangeListener:Lcom/viber/voip/messages/controller/dh;

    .line 630
    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .prologue
    .line 68
    sget v0, Lcom/viber/voip/user/YouFragment;->LEFT_PADDING_PX:I

    return v0
.end method

.method static synthetic access$100(Lcom/viber/voip/user/YouFragment;Landroid/net/Uri;)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/viber/voip/user/YouFragment;->createOnHeaderClickListener(Landroid/net/Uri;)Landroid/view/View$OnClickListener;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/viber/voip/user/YouFragment;)Lcom/viber/voip/user/YouHeaderLayout;
    .locals 1
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, Lcom/viber/voip/user/YouFragment;->headerLayout:Lcom/viber/voip/user/YouHeaderLayout;

    return-object v0
.end method

.method static synthetic access$300(Lcom/viber/voip/user/YouFragment;Lcom/viber/voip/user/FacebookDetails;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/viber/voip/user/YouFragment;->onFacebookDetailsLoaded(Lcom/viber/voip/user/FacebookDetails;)V

    return-void
.end method

.method static synthetic access$400(Lcom/viber/voip/user/YouFragment;Lcom/viber/voip/user/FacebookDetailsListener;Lcom/viber/voip/messages/extras/fb/s;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Lcom/viber/voip/user/YouFragment;->loadFacebookDetais(Lcom/viber/voip/user/FacebookDetailsListener;Lcom/viber/voip/messages/extras/fb/s;)V

    return-void
.end method

.method private createOnHeaderClickListener(Landroid/net/Uri;)Landroid/view/View$OnClickListener;
    .locals 8
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 389
    iget-object v0, p0, Lcom/viber/voip/user/YouFragment;->mPhotoSetter:Lcom/viber/voip/user/UserDetailPhotoSetter;

    invoke-virtual {p0}, Lcom/viber/voip/user/YouFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {p0}, Lcom/viber/voip/user/YouFragment;->isDialog()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {}, Lcom/viber/voip/ViberApplication;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v6

    :goto_0
    iget-object v4, p0, Lcom/viber/voip/user/YouFragment;->viewCache:Lcom/viber/voip/user/YouHeaderLayout$HeaderViewCache;

    iget-object v4, v4, Lcom/viber/voip/user/YouHeaderLayout$HeaderViewCache;->photoView:Landroid/widget/ImageView;

    if-eqz p1, :cond_2

    iget-object v5, p0, Lcom/viber/voip/user/YouFragment;->viewCache:Lcom/viber/voip/user/YouHeaderLayout$HeaderViewCache;

    iget-object v5, v5, Lcom/viber/voip/user/YouHeaderLayout$HeaderViewCache;->photoLayoutView:Landroid/view/View;

    :goto_1
    if-eqz p1, :cond_0

    move v7, v6

    :cond_0
    move-object v6, p1

    invoke-virtual/range {v0 .. v7}, Lcom/viber/voip/user/UserDetailPhotoSetter;->setupContactPhotoForClick(Landroid/content/Context;Landroid/graphics/Bitmap;ZLandroid/widget/ImageView;Landroid/view/View;Landroid/net/Uri;Z)Landroid/view/View$OnClickListener;

    move-result-object v0

    return-object v0

    :cond_1
    move v3, v7

    goto :goto_0

    :cond_2
    move-object v5, v2

    goto :goto_1
.end method

.method private isDialog()Z
    .locals 1

    .prologue
    .line 406
    invoke-virtual {p0}, Lcom/viber/voip/user/YouFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/viber/voip/user/YouDialogActivity;

    return v0
.end method

.method private loadFacebookDetais(Lcom/viber/voip/user/FacebookDetailsListener;Lcom/viber/voip/messages/extras/fb/s;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 606
    invoke-virtual {p0}, Lcom/viber/voip/user/YouFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/util/ft;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 607
    new-instance v0, Lcom/viber/voip/user/LoadFacebookDetailsTask;

    invoke-virtual {p0}, Lcom/viber/voip/user/YouFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/viber/voip/user/LoadFacebookDetailsTask;-><init>(Landroid/content/Context;Lcom/viber/voip/user/FacebookDetailsListener;)V

    iput-object v0, p0, Lcom/viber/voip/user/YouFragment;->mLoadFacebookDetailsTask:Lcom/viber/voip/user/LoadFacebookDetailsTask;

    .line 608
    iget-object v0, p0, Lcom/viber/voip/user/YouFragment;->mLoadFacebookDetailsTask:Lcom/viber/voip/user/LoadFacebookDetailsTask;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/viber/voip/messages/extras/fb/s;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {v0, v1}, Lcom/viber/voip/user/LoadFacebookDetailsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 610
    :cond_0
    return-void
.end method

.method private onFacebookDetailsLoaded(Lcom/viber/voip/user/FacebookDetails;)V
    .locals 3
    .parameter

    .prologue
    .line 537
    invoke-virtual {p1}, Lcom/viber/voip/user/FacebookDetails;->getUserName()Ljava/lang/String;

    move-result-object v0

    .line 538
    invoke-virtual {p1}, Lcom/viber/voip/user/FacebookDetails;->getUserPhoto()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 541
    sget-object v2, Lcom/viber/voip/messages/extras/image/l;->g:Lcom/viber/voip/messages/extras/image/l;

    invoke-static {v1, v2}, Lcom/viber/voip/messages/extras/image/h;->a(Landroid/graphics/Bitmap;Lcom/viber/voip/messages/extras/image/l;)Landroid/net/Uri;

    move-result-object v1

    .line 542
    if-eqz v1, :cond_0

    .line 545
    iget-object v2, p0, Lcom/viber/voip/user/YouFragment;->mMessagesManager:Lcom/viber/voip/messages/i;

    invoke-interface {v2}, Lcom/viber/voip/messages/i;->e()Lcom/viber/voip/messages/controller/dn;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/viber/voip/messages/controller/dn;->a(Landroid/net/Uri;)V

    .line 550
    :goto_0
    iget-object v1, p0, Lcom/viber/voip/user/YouFragment;->mMessagesManager:Lcom/viber/voip/messages/i;

    invoke-interface {v1}, Lcom/viber/voip/messages/i;->e()Lcom/viber/voip/messages/controller/dn;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/viber/voip/messages/controller/dn;->a(Ljava/lang/String;)V

    .line 551
    return-void

    .line 547
    :cond_0
    const v1, 0x7f0c0448

    invoke-virtual {p0, v1}, Lcom/viber/voip/user/YouFragment;->showToast(I)V

    goto :goto_0
.end method

.method private openSettings(I)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 457
    iput p1, p0, Lcom/viber/voip/user/YouFragment;->settingsItemPosition:I

    .line 458
    invoke-static {}, Lcom/viber/voip/ViberApplication;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 459
    invoke-virtual {p0}, Lcom/viber/voip/user/YouFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 460
    invoke-virtual {p0}, Lcom/viber/voip/user/YouFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget v1, p0, Lcom/viber/voip/user/YouFragment;->settingsItemPosition:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 462
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/user/YouFragment;->mCallbacks:Lcom/viber/voip/user/YouFragment$Callbacks;

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.viber.voip.action.SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/viber/voip/user/YouFragment$Callbacks;->onYouItemSelected(Landroid/content/Intent;)V

    .line 463
    return-void
.end method

.method private setDialogLeftPadding(Landroid/view/View;)V
    .locals 5
    .parameter

    .prologue
    .line 394
    invoke-direct {p0}, Lcom/viber/voip/user/YouFragment;->isDialog()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/viber/voip/user/YouFragment;->mIsLandscape:Z

    if-nez v0, :cond_0

    .line 395
    sget v0, Lcom/viber/voip/user/YouFragment;->LEFT_PADDING_PX:I

    sget v1, Lcom/viber/voip/user/YouFragment;->LEFT_PADDING_PX:I

    int-to-double v1, v1

    const-wide/high16 v3, 0x3ff4

    mul-double/2addr v1, v3

    double-to-int v1, v1

    sget v2, Lcom/viber/voip/user/YouFragment;->LEFT_PADDING_PX:I

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 397
    :cond_0
    return-void
.end method

.method private showViberOutPrefIfNeeded()V
    .locals 3

    .prologue
    .line 489
    const v0, 0x7f070058

    invoke-static {v0}, Lcom/viber/voip/user/YouFragment$PreferenceItems;->getItemById(I)Lcom/viber/voip/user/YouFragment$PreferenceItem;

    move-result-object v0

    .line 490
    invoke-static {}, Lcom/viber/voip/viberout/e;->c()Lcom/viber/voip/viberout/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/viberout/e;->b()Z

    move-result v1

    if-nez v1, :cond_1

    .line 491
    iget-object v1, p0, Lcom/viber/voip/user/YouFragment;->mPreferenceItems:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 492
    iget-object v1, p0, Lcom/viber/voip/user/YouFragment;->mPreferenceItems:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 493
    iget-object v0, p0, Lcom/viber/voip/user/YouFragment;->mPreferenceAdapter:Lcom/viber/voip/user/YouFragment$PreferenceAdapter;

    if-eqz v0, :cond_0

    .line 494
    iget-object v0, p0, Lcom/viber/voip/user/YouFragment;->mPreferenceAdapter:Lcom/viber/voip/user/YouFragment$PreferenceAdapter;

    invoke-virtual {v0}, Lcom/viber/voip/user/YouFragment$PreferenceAdapter;->notifyDataSetChanged()V

    .line 505
    :cond_0
    :goto_0
    return-void

    .line 498
    :cond_1
    iget-object v1, p0, Lcom/viber/voip/user/YouFragment;->mPreferenceItems:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 499
    iget-object v1, p0, Lcom/viber/voip/user/YouFragment;->mPreferenceItems:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 500
    iget-object v0, p0, Lcom/viber/voip/user/YouFragment;->mPreferenceAdapter:Lcom/viber/voip/user/YouFragment$PreferenceAdapter;

    if-eqz v0, :cond_0

    .line 501
    iget-object v0, p0, Lcom/viber/voip/user/YouFragment;->mPreferenceAdapter:Lcom/viber/voip/user/YouFragment$PreferenceAdapter;

    invoke-virtual {v0}, Lcom/viber/voip/user/YouFragment$PreferenceAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method


# virtual methods
.method protected loadFacebookDetails(Lcom/viber/voip/user/FacebookDetailsListener;)V
    .locals 4
    .parameter

    .prologue
    .line 586
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getFacebookManager()Lcom/viber/voip/messages/extras/fb/s;

    move-result-object v0

    .line 589
    invoke-virtual {v0}, Lcom/viber/voip/messages/extras/fb/s;->b()Lcom/viber/voip/messages/extras/fb/ah;

    move-result-object v1

    .line 590
    sget-object v2, Lcom/viber/voip/messages/extras/fb/ah;->d:Lcom/viber/voip/messages/extras/fb/ah;

    if-eq v1, v2, :cond_0

    sget-object v2, Lcom/viber/voip/messages/extras/fb/ah;->a:Lcom/viber/voip/messages/extras/fb/ah;

    if-ne v1, v2, :cond_1

    .line 592
    :cond_0
    invoke-virtual {p0}, Lcom/viber/voip/user/YouFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/viber/voip/user/YouFragment$5;

    invoke-direct {v2, p0, p1, v0}, Lcom/viber/voip/user/YouFragment$5;-><init>(Lcom/viber/voip/user/YouFragment;Lcom/viber/voip/user/FacebookDetailsListener;Lcom/viber/voip/messages/extras/fb/s;)V

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/viber/voip/messages/extras/fb/s;->a(Landroid/app/Activity;Lcom/viber/voip/messages/extras/fb/ad;Z)V

    .line 602
    :goto_0
    return-void

    .line 600
    :cond_1
    invoke-direct {p0, p1, v0}, Lcom/viber/voip/user/YouFragment;->loadFacebookDetais(Lcom/viber/voip/user/FacebookDetailsListener;Lcom/viber/voip/messages/extras/fb/s;)V

    goto :goto_0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 613
    const/4 v0, 0x3

    sget-object v1, Lcom/viber/voip/user/YouFragment;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 614
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 278
    invoke-super {p0, p1}, Lcom/viber/voip/ui/q;->onActivityCreated(Landroid/os/Bundle;)V

    .line 280
    invoke-virtual {p0}, Lcom/viber/voip/user/YouFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/util/ao;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/viber/voip/user/YouFragment;->isDialog()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/viber/voip/ViberApplication;->isTablet()Z

    move-result v0

    if-nez v0, :cond_1

    .line 281
    :cond_0
    invoke-virtual {p0}, Lcom/viber/voip/user/YouFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/user/YouFragment;->mPhotoSetter:Lcom/viber/voip/user/UserDetailPhotoSetter;

    invoke-virtual {v1}, Lcom/viber/voip/user/UserDetailPhotoSetter;->getTouchListener()Landroid/view/View$OnTouchListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 283
    :cond_1
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 560
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "handlePhotoActivityResult requestCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",resultCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/user/YouFragment;->log(Ljava/lang/String;)V

    .line 561
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getFacebookManager()Lcom/viber/voip/messages/extras/fb/s;

    move-result-object v0

    invoke-virtual {p0}, Lcom/viber/voip/user/YouFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/viber/voip/messages/extras/fb/s;->a(Landroid/app/Activity;IILandroid/content/Intent;)V

    .line 564
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 565
    packed-switch p1, :pswitch_data_0

    .line 576
    :cond_0
    :goto_0
    return-void

    .line 568
    :pswitch_0
    if-eqz p3, :cond_0

    .line 569
    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 570
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Photo was cropped :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/viber/voip/user/YouFragment;->log(Ljava/lang/String;)V

    .line 571
    iget-object v1, p0, Lcom/viber/voip/user/YouFragment;->mMessagesManager:Lcom/viber/voip/messages/i;

    invoke-interface {v1}, Lcom/viber/voip/messages/i;->e()Lcom/viber/voip/messages/controller/dn;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/viber/voip/messages/controller/dn;->a(Landroid/net/Uri;)V

    goto :goto_0

    .line 565
    nop

    :pswitch_data_0
    .packed-switch 0x4d0
        :pswitch_0
    .end packed-switch
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .parameter

    .prologue
    .line 287
    invoke-super {p0, p1}, Lcom/viber/voip/ui/q;->onAttach(Landroid/app/Activity;)V

    .line 288
    instance-of v0, p1, Lcom/viber/voip/user/YouFragment$Callbacks;

    if-nez v0, :cond_0

    .line 289
    new-instance v0, Ljava/lang/ClassCastException;

    const-string/jumbo v1, "Activity must implement fragment\'s callbacks."

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 291
    :cond_0
    check-cast p1, Lcom/viber/voip/user/YouFragment$Callbacks;

    iput-object p1, p0, Lcom/viber/voip/user/YouFragment;->mCallbacks:Lcom/viber/voip/user/YouFragment$Callbacks;

    .line 292
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 245
    invoke-super {p0, p1}, Lcom/viber/voip/ui/q;->onCreate(Landroid/os/Bundle;)V

    .line 247
    invoke-virtual {p0, v0}, Lcom/viber/voip/user/YouFragment;->setRetainInstance(Z)V

    .line 248
    invoke-virtual {p0, v0}, Lcom/viber/voip/user/YouFragment;->setHasOptionsMenu(Z)V

    .line 250
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/a/a;->h:Lcom/viber/voip/a/ba;

    invoke-virtual {v1}, Lcom/viber/voip/a/ba;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Ljava/lang/String;)V

    .line 256
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/viber/voip/user/YouFragment$PreferenceItems;->ALL:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/viber/voip/user/YouFragment;->mPreferenceItems:Ljava/util/List;

    .line 259
    iget-object v0, p0, Lcom/viber/voip/user/YouFragment;->mPreferenceItems:Ljava/util/List;

    const v1, 0x7f070058

    invoke-static {v1}, Lcom/viber/voip/user/YouFragment$PreferenceItems;->getItemById(I)Lcom/viber/voip/user/YouFragment$PreferenceItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 262
    invoke-direct {p0}, Lcom/viber/voip/user/YouFragment;->showViberOutPrefIfNeeded()V

    .line 264
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getMessagesManager()Lcom/viber/voip/messages/i;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/user/YouFragment;->mMessagesManager:Lcom/viber/voip/messages/i;

    .line 269
    invoke-static {}, Lcom/viber/voip/user/UserData;->getImage()Landroid/net/Uri;

    move-result-object v0

    .line 270
    if-eqz v0, :cond_0

    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 271
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "RECOVER USER PHOTO! photoUri = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/ViberApplication;->log(Ljava/lang/String;)V

    .line 272
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/viber/voip/contacts/c/a;->a(Lcom/viber/voip/contacts/c/v;)V

    .line 274
    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/view/MenuInflater;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 365
    const v0, 0x7f10001c

    invoke-virtual {p2, v0, p1}, Lcom/actionbarsherlock/view/MenuInflater;->inflate(ILcom/actionbarsherlock/view/Menu;)V

    .line 366
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 367
    if-eqz v0, :cond_0

    .line 368
    const v0, 0x7f0703a7

    invoke-interface {p1, v0}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/actionbarsherlock/view/MenuItem;->setShowAsAction(I)V

    .line 370
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 12
    .parameter
    .parameter
    .parameter

    .prologue
    const v11, 0x7f0a023a

    const v10, 0x7f0a0239

    const v9, 0x7f070121

    const/4 v8, 0x0

    const v7, 0x1020016

    .line 296
    const v0, 0x7f0300af

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 297
    invoke-virtual {p0}, Lcom/viber/voip/user/YouFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/util/gl;->e(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/viber/voip/user/YouFragment;->mIsLandscape:Z

    .line 299
    new-instance v0, Lcom/a/a/a/a;

    invoke-direct {v0}, Lcom/a/a/a/a;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/user/YouFragment;->mMergeAdapter:Lcom/a/a/a/a;

    .line 301
    new-instance v0, Lcom/viber/voip/user/YouHeaderLayout;

    invoke-virtual {p0}, Lcom/viber/voip/user/YouFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/viber/voip/user/YouHeaderLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/viber/voip/user/YouFragment;->headerLayout:Lcom/viber/voip/user/YouHeaderLayout;

    .line 302
    iget-object v0, p0, Lcom/viber/voip/user/YouFragment;->headerLayout:Lcom/viber/voip/user/YouHeaderLayout;

    invoke-virtual {v0}, Lcom/viber/voip/user/YouHeaderLayout;->getViewCache()Lcom/viber/voip/user/YouHeaderLayout$HeaderViewCache;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/user/YouFragment;->viewCache:Lcom/viber/voip/user/YouHeaderLayout$HeaderViewCache;

    .line 303
    iget-object v0, p0, Lcom/viber/voip/user/YouFragment;->headerLayout:Lcom/viber/voip/user/YouHeaderLayout;

    invoke-virtual {v0, v1}, Lcom/viber/voip/user/YouHeaderLayout;->initControls(Landroid/view/View;)V

    .line 304
    iget-object v0, p0, Lcom/viber/voip/user/YouFragment;->headerLayout:Lcom/viber/voip/user/YouHeaderLayout;

    invoke-static {}, Lcom/viber/voip/user/UserData;->getImage()Landroid/net/Uri;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/viber/voip/user/YouFragment;->createOnHeaderClickListener(Landroid/net/Uri;)Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/viber/voip/user/YouHeaderLayout;->setHeaderInfo(Landroid/view/View$OnClickListener;)V

    .line 306
    iget-object v0, p0, Lcom/viber/voip/user/YouFragment;->mMergeAdapter:Lcom/a/a/a/a;

    iget-object v2, p0, Lcom/viber/voip/user/YouFragment;->headerLayout:Lcom/viber/voip/user/YouHeaderLayout;

    invoke-virtual {v0, v2}, Lcom/a/a/a/a;->a(Landroid/view/View;)V

    .line 309
    iget-object v0, p0, Lcom/viber/voip/user/YouFragment;->headerLayout:Lcom/viber/voip/user/YouHeaderLayout;

    invoke-virtual {v0, v7}, Lcom/viber/voip/user/YouHeaderLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 310
    iget-object v0, p0, Lcom/viber/voip/user/YouFragment;->headerLayout:Lcom/viber/voip/user/YouHeaderLayout;

    invoke-virtual {v0, v7}, Lcom/viber/voip/user/YouHeaderLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f0c06d1

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 321
    :goto_0
    new-instance v2, Lcom/viber/voip/user/YouViberExperienceLayout;

    invoke-virtual {p0}, Lcom/viber/voip/user/YouFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/viber/voip/user/YouViberExperienceLayout;-><init>(Landroid/content/Context;)V

    .line 322
    invoke-virtual {p0}, Lcom/viber/voip/user/YouFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/viber/voip/user/YouViberExperienceLayout;->setActivity(Landroid/app/Activity;)V

    .line 323
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getHardwareParameters()Lcom/viber/voip/registration/HardwareParameters;

    move-result-object v0

    invoke-interface {v0}, Lcom/viber/voip/registration/HardwareParameters;->isGsmSupported()Z

    move-result v0

    invoke-virtual {v2, v0}, Lcom/viber/voip/user/YouViberExperienceLayout;->setSmsVisible(Z)V

    .line 325
    iget-object v0, p0, Lcom/viber/voip/user/YouFragment;->headerLayout:Lcom/viber/voip/user/YouHeaderLayout;

    invoke-virtual {v0, v9}, Lcom/viber/voip/user/YouHeaderLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 326
    iget-object v0, p0, Lcom/viber/voip/user/YouFragment;->headerLayout:Lcom/viber/voip/user/YouHeaderLayout;

    invoke-virtual {v0, v9}, Lcom/viber/voip/user/YouHeaderLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 337
    :goto_1
    const v0, 0x7f0300c1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 339
    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v3, 0x7f0c053d

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 340
    invoke-virtual {p0}, Lcom/viber/voip/user/YouFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/viber/voip/user/YouFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {p0}, Lcom/viber/voip/user/YouFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a023b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v2, v0, v3, v4, v8}, Landroid/view/View;->setPadding(IIII)V

    .line 343
    iget-object v0, p0, Lcom/viber/voip/user/YouFragment;->mMergeAdapter:Lcom/a/a/a/a;

    invoke-virtual {v0, v2}, Lcom/a/a/a/a;->a(Landroid/view/View;)V

    .line 345
    new-instance v0, Lcom/viber/voip/user/YouFragment$PreferenceAdapter;

    invoke-virtual {p0}, Lcom/viber/voip/user/YouFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/viber/voip/user/YouFragment;->getNewPackagesCount()I

    move-result v3

    iget-object v4, p0, Lcom/viber/voip/user/YouFragment;->mPreferenceItems:Ljava/util/List;

    invoke-direct {v0, v2, v3, v4}, Lcom/viber/voip/user/YouFragment$PreferenceAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v0, p0, Lcom/viber/voip/user/YouFragment;->mPreferenceAdapter:Lcom/viber/voip/user/YouFragment$PreferenceAdapter;

    .line 346
    iget-object v0, p0, Lcom/viber/voip/user/YouFragment;->mMergeAdapter:Lcom/a/a/a/a;

    iget-object v2, p0, Lcom/viber/voip/user/YouFragment;->mPreferenceAdapter:Lcom/viber/voip/user/YouFragment$PreferenceAdapter;

    invoke-virtual {v0, v2}, Lcom/a/a/a/a;->a(Landroid/widget/ListAdapter;)V

    .line 348
    iget-object v0, p0, Lcom/viber/voip/user/YouFragment;->mMergeAdapter:Lcom/a/a/a/a;

    invoke-virtual {p0, v0}, Lcom/viber/voip/user/YouFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 350
    invoke-static {}, Lcom/viber/voip/messages/controller/c/e;->a()Lcom/viber/voip/messages/controller/c/e;

    move-result-object v0

    iget-object v2, p0, Lcom/viber/voip/user/YouFragment;->userChangeListener:Lcom/viber/voip/messages/controller/dh;

    invoke-virtual {v0, v2}, Lcom/viber/voip/messages/controller/c/e;->a(Lcom/viber/voip/messages/controller/dg;)V

    .line 352
    iget-object v0, p0, Lcom/viber/voip/user/YouFragment;->headerLayout:Lcom/viber/voip/user/YouHeaderLayout;

    invoke-virtual {v0, v9}, Lcom/viber/voip/user/YouHeaderLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/viber/voip/user/YouFragment;->viewCache:Lcom/viber/voip/user/YouHeaderLayout$HeaderViewCache;

    iget-object v0, v0, Lcom/viber/voip/user/YouHeaderLayout$HeaderViewCache;->usernameView:Landroid/widget/TextView;

    new-instance v2, Lcom/viber/voip/user/YouFragment$2;

    invoke-direct {v2, p0}, Lcom/viber/voip/user/YouFragment$2;-><init>(Lcom/viber/voip/user/YouFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 360
    :cond_0
    return-object v1

    .line 312
    :cond_1
    const v0, 0x7f0300c1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 313
    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v3, 0x7f0c06d1

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 314
    invoke-virtual {p0}, Lcom/viber/voip/user/YouFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/viber/voip/user/YouFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {p0}, Lcom/viber/voip/user/YouFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a023b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v2, v0, v3, v4, v8}, Landroid/view/View;->setPadding(IIII)V

    .line 318
    iget-object v0, p0, Lcom/viber/voip/user/YouFragment;->mMergeAdapter:Lcom/a/a/a/a;

    invoke-virtual {v0, v2}, Lcom/a/a/a/a;->a(Landroid/view/View;)V

    goto/16 :goto_0

    .line 328
    :cond_2
    const v0, 0x7f070119

    invoke-virtual {v2, v0}, Lcom/viber/voip/user/YouViberExperienceLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 329
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 330
    invoke-virtual {p0}, Lcom/viber/voip/user/YouFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {p0}, Lcom/viber/voip/user/YouFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {p0}, Lcom/viber/voip/user/YouFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a023b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {v0, v3, v4, v5, v8}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 334
    iget-object v0, p0, Lcom/viber/voip/user/YouFragment;->mMergeAdapter:Lcom/a/a/a/a;

    invoke-virtual {v0, v2}, Lcom/a/a/a/a;->a(Landroid/view/View;)V

    goto/16 :goto_1
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 401
    invoke-static {}, Lcom/viber/voip/messages/controller/c/e;->a()Lcom/viber/voip/messages/controller/c/e;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/user/YouFragment;->userChangeListener:Lcom/viber/voip/messages/controller/dh;

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/controller/c/e;->b(Lcom/viber/voip/messages/controller/dg;)V

    .line 402
    invoke-super {p0}, Lcom/viber/voip/ui/q;->onDestroyView()V

    .line 403
    return-void
.end method

.method public onFacebookDetailsRequested()V
    .locals 1

    .prologue
    .line 514
    new-instance v0, Lcom/viber/voip/user/YouFragment$4;

    invoke-direct {v0, p0}, Lcom/viber/voip/user/YouFragment$4;-><init>(Lcom/viber/voip/user/YouFragment;)V

    invoke-virtual {p0, v0}, Lcom/viber/voip/user/YouFragment;->loadFacebookDetails(Lcom/viber/voip/user/FacebookDetailsListener;)V

    .line 534
    return-void
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 411
    invoke-super/range {p0 .. p5}, Lcom/viber/voip/ui/q;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 413
    long-to-int v0, p4

    packed-switch v0, :pswitch_data_0

    .line 443
    :goto_0
    :pswitch_0
    return-void

    .line 415
    :pswitch_1
    invoke-virtual {p0}, Lcom/viber/voip/user/YouFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v2

    const-class v3, Lcom/viber/voip/viberout/ui/ViberOutActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 419
    :pswitch_2
    invoke-static {}, Lcom/viber/voip/rakuten/l;->a()Lcom/viber/voip/rakuten/l;

    move-result-object v0

    invoke-virtual {p0}, Lcom/viber/voip/user/YouFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/rakuten/l;->b(Landroid/content/Context;)V

    goto :goto_0

    .line 422
    :pswitch_3
    invoke-static {}, Lcom/viber/voip/market/MarketActivity;->a()V

    goto :goto_0

    .line 425
    :pswitch_4
    invoke-virtual {p0}, Lcom/viber/voip/user/YouFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/util/gu;->a(Landroid/content/Context;)V

    goto :goto_0

    .line 428
    :pswitch_5
    invoke-direct {p0, p3}, Lcom/viber/voip/user/YouFragment;->openSettings(I)V

    goto :goto_0

    .line 431
    :pswitch_6
    invoke-virtual {p0}, Lcom/viber/voip/user/YouFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/util/ha;->a(Landroid/content/Context;)V

    goto :goto_0

    .line 434
    :pswitch_7
    invoke-virtual {p0}, Lcom/viber/voip/user/YouFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/viber/voip/registration/ActivationController;->deActivate(Landroid/content/Context;Z)V

    goto :goto_0

    .line 437
    :pswitch_8
    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/viber/voip/user/YouFragment;->showDialog(I)V

    goto :goto_0

    .line 440
    :pswitch_9
    invoke-virtual {p0}, Lcom/viber/voip/user/YouFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/util/ha;->b(Landroid/content/Context;)V

    goto :goto_0

    .line 413
    :pswitch_data_0
    .packed-switch 0x7f070058
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public onNewStickerPackageCountChanged(I)V
    .locals 1
    .parameter

    .prologue
    .line 157
    iget-object v0, p0, Lcom/viber/voip/user/YouFragment;->mPreferenceAdapter:Lcom/viber/voip/user/YouFragment$PreferenceAdapter;

    invoke-virtual {v0, p1}, Lcom/viber/voip/user/YouFragment$PreferenceAdapter;->setNewPackageCount(I)V

    .line 158
    iget-object v0, p0, Lcom/viber/voip/user/YouFragment;->mPreferenceAdapter:Lcom/viber/voip/user/YouFragment$PreferenceAdapter;

    invoke-virtual {v0}, Lcom/viber/voip/user/YouFragment$PreferenceAdapter;->notifyDataSetChanged()V

    .line 159
    return-void
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 1
    .parameter

    .prologue
    .line 374
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    .line 375
    packed-switch v0, :pswitch_data_0

    .line 384
    invoke-super {p0, p1}, Lcom/viber/voip/ui/q;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 377
    :pswitch_0
    invoke-static {}, Lcom/viber/voip/user/UserData;->getViberName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/viber/voip/user/UserData;->getViberImage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 378
    :cond_0
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/viber/voip/user/YouFragment;->showDialog(I)V

    .line 382
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 380
    :cond_1
    invoke-virtual {p0}, Lcom/viber/voip/user/YouFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/util/gx;->a(Landroid/content/Context;)V

    goto :goto_1

    .line 375
    nop

    :pswitch_data_0
    .packed-switch 0x7f0703a7
        :pswitch_0
    .end packed-switch
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 509
    invoke-super {p0}, Lcom/viber/voip/ui/q;->onResume()V

    .line 510
    invoke-direct {p0}, Lcom/viber/voip/user/YouFragment;->showViberOutPrefIfNeeded()V

    .line 511
    return-void
.end method

.method public openSettings()V
    .locals 6

    .prologue
    .line 446
    invoke-virtual {p0}, Lcom/viber/voip/user/YouFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    .line 454
    :cond_0
    :goto_0
    return-void

    .line 447
    :cond_1
    invoke-virtual {p0}, Lcom/viber/voip/user/YouFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getCount()I

    move-result v1

    .line 448
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_0

    .line 449
    invoke-virtual {p0}, Lcom/viber/voip/user/YouFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->getItemIdAtPosition(I)J

    move-result-wide v2

    const-wide/32 v4, 0x7f07005c

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    .line 450
    invoke-direct {p0, v0}, Lcom/viber/voip/user/YouFragment;->openSettings(I)V

    goto :goto_0

    .line 448
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public showDialog(I)V
    .locals 3
    .parameter

    .prologue
    .line 617
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 619
    invoke-virtual {p0}, Lcom/viber/voip/user/YouFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 621
    invoke-virtual {p0}, Lcom/viber/voip/user/YouFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    .line 622
    if-eqz v2, :cond_0

    .line 623
    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 626
    :cond_0
    invoke-static {p1}, Lcom/viber/voip/user/YouFragment$FragmentDialogs;->newInstance(I)Lcom/viber/voip/user/YouFragment$FragmentDialogs;

    move-result-object v2

    .line 627
    invoke-virtual {v2, v1, v0}, Lcom/viber/voip/user/YouFragment$FragmentDialogs;->show(Landroid/support/v4/app/FragmentTransaction;Ljava/lang/String;)I

    .line 628
    return-void
.end method

.method protected showToast(I)V
    .locals 2
    .parameter

    .prologue
    .line 554
    invoke-virtual {p0}, Lcom/viber/voip/user/YouFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 555
    invoke-virtual {p0}, Lcom/viber/voip/user/YouFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 556
    :cond_0
    return-void
.end method

.method public updateSettingsItem(Z)V
    .locals 4
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 466
    invoke-virtual {p0}, Lcom/viber/voip/user/YouFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 486
    :goto_0
    return-void

    .line 467
    :cond_0
    if-eqz p1, :cond_1

    .line 468
    invoke-virtual {p0}, Lcom/viber/voip/user/YouFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 469
    invoke-virtual {p0}, Lcom/viber/voip/user/YouFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget v1, p0, Lcom/viber/voip/user/YouFragment;->settingsItemPosition:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    goto :goto_0

    .line 473
    :cond_1
    invoke-virtual {p0}, Lcom/viber/voip/user/YouFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    .line 474
    invoke-virtual {v2}, Landroid/widget/ListView;->clearChoices()V

    .line 475
    invoke-virtual {v2}, Landroid/widget/ListView;->getChildCount()I

    move-result v3

    move v0, v1

    :goto_1
    if-ge v0, v3, :cond_2

    .line 476
    invoke-virtual {v2, v0, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 475
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 478
    :cond_2
    const/4 v0, -0x1

    iput v0, p0, Lcom/viber/voip/user/YouFragment;->settingsItemPosition:I

    .line 479
    new-instance v0, Lcom/viber/voip/user/YouFragment$3;

    invoke-direct {v0, p0, v2}, Lcom/viber/voip/user/YouFragment$3;-><init>(Lcom/viber/voip/user/YouFragment;Landroid/widget/ListView;)V

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
