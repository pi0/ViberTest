.class public abstract Lcom/viber/voip/user/UserDataBaseFragment;
.super Lcom/viber/voip/ui/al;
.source "SourceFile"


# static fields
.field protected static final CROP_FOR_CONTACT_REQ_CODE:I = 0xe9

.field protected static final DIALOG_MENU:I = 0x0

.field protected static final DIALOG_MENU_ON_PIC:I = 0x1

.field protected static final DIALOG_REMOVE:I = 0x2

.field private static final LOG_TAG:Ljava/lang/String; = null

.field protected static final MENU_ITEM_REMOVE_PIC:I = 0x2

.field protected static final MENU_ITEM_SELECT_PIC:I = 0x1

.field protected static final MENU_ITEM_TAKE_PIC:I = 0x0

.field protected static final UPDATE_USER_DIALOG:I = 0x3


# instance fields
.field private authListener:Lcom/viber/voip/messages/extras/fb/ad;

.field private croppedCallback:Ljava/lang/Runnable;

.field private editActivity:Z

.field private fbManager:Lcom/viber/voip/messages/extras/fb/s;

.field private imageUri:Landroid/net/Uri;

.field private imageView:Landroid/widget/ImageView;

.field protected isRotationEnabled:Z

.field private mIsCropingImage:Z

.field protected mMessagesManager:Lcom/viber/voip/messages/i;

.field private mTempUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-class v0, Lcom/viber/voip/user/UserDataBaseFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/user/UserDataBaseFragment;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/viber/voip/ui/al;-><init>()V

    .line 74
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/viber/voip/user/UserDataBaseFragment;->isRotationEnabled:Z

    .line 47
    return-void
.end method

.method static synthetic access$000(Lcom/viber/voip/user/UserDataBaseFragment;)Landroid/net/Uri;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/viber/voip/user/UserDataBaseFragment;->imageUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$100(Lcom/viber/voip/user/UserDataBaseFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/viber/voip/user/UserDataBaseFragment;->removeImage()V

    return-void
.end method

.method static synthetic access$200(Lcom/viber/voip/user/UserDataBaseFragment;Lcom/viber/voip/user/FacebookDetailsListener;Lcom/viber/voip/messages/extras/fb/s;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/viber/voip/user/UserDataBaseFragment;->loadFacebookDetais(Lcom/viber/voip/user/FacebookDetailsListener;Lcom/viber/voip/messages/extras/fb/s;)V

    return-void
.end method

.method private loadFacebookDetais(Lcom/viber/voip/user/FacebookDetailsListener;Lcom/viber/voip/messages/extras/fb/s;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 340
    invoke-virtual {p0}, Lcom/viber/voip/user/UserDataBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/util/ft;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 341
    new-instance v0, Lcom/viber/voip/user/LoadFacebookDetailsTask;

    invoke-virtual {p0}, Lcom/viber/voip/user/UserDataBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/viber/voip/user/LoadFacebookDetailsTask;-><init>(Landroid/content/Context;Lcom/viber/voip/user/FacebookDetailsListener;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/viber/voip/messages/extras/fb/s;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {v0, v1}, Lcom/viber/voip/user/LoadFacebookDetailsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 343
    :cond_0
    return-void
.end method

.method private removeImage()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 383
    iget-object v0, p0, Lcom/viber/voip/user/UserDataBaseFragment;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 384
    iget-object v0, p0, Lcom/viber/voip/user/UserDataBaseFragment;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    .line 385
    iput-object v1, p0, Lcom/viber/voip/user/UserDataBaseFragment;->imageUri:Landroid/net/Uri;

    .line 386
    return-void
.end method

.method private startGalleryPickerActivity()V
    .locals 3

    .prologue
    .line 274
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "android.intent.action.GET_CONTENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 275
    const v1, 0x7f0c041a

    invoke-virtual {p0, v1}, Lcom/viber/voip/user/UserDataBaseFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Landroid/content/Intent;

    invoke-static {v0, v1, v2}, Lcom/viber/voip/util/at;->a(Landroid/content/Intent;Ljava/lang/CharSequence;[Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    .line 276
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/viber/voip/user/UserDataBaseFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 277
    return-void
.end method

.method private updateGallery(Landroid/net/Uri;)V
    .locals 2
    .parameter

    .prologue
    .line 373
    sget-object v0, Lcom/viber/voip/dk;->g:Lcom/viber/voip/dk;

    invoke-static {v0}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/user/UserDataBaseFragment$5;

    invoke-direct {v1, p0, p1}, Lcom/viber/voip/user/UserDataBaseFragment$5;-><init>(Lcom/viber/voip/user/UserDataBaseFragment;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 380
    return-void
.end method


# virtual methods
.method protected closeDialog(I)V
    .locals 1
    .parameter

    .prologue
    .line 353
    invoke-virtual {p0}, Lcom/viber/voip/user/UserDataBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentActivity;->removeDialog(I)V

    .line 354
    return-void
.end method

.method protected dismissDialog(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 389
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "dismissDialog tag:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/user/UserDataBaseFragment;->log(Ljava/lang/String;)V

    .line 390
    invoke-virtual {p0}, Lcom/viber/voip/user/UserDataBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 391
    invoke-virtual {p0}, Lcom/viber/voip/user/UserDataBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 392
    invoke-static {}, Lcom/viber/voip/ViberApplication;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 393
    invoke-virtual {p0}, Lcom/viber/voip/user/UserDataBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/registration/RegistrationActivity;

    invoke-virtual {v0}, Lcom/viber/voip/registration/RegistrationActivity;->h()Lcom/viber/voip/widget/MessageBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/widget/MessageBar;->a()V

    .line 398
    :cond_0
    :goto_0
    return-void

    .line 394
    :cond_1
    if-eqz v1, :cond_0

    .line 395
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 396
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_0
.end method

.method protected externalStorageMounted(Z)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 88
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 89
    if-eqz p1, :cond_0

    .line 90
    invoke-virtual {p0}, Lcom/viber/voip/user/UserDataBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0c0489

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 94
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getImageUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/viber/voip/user/UserDataBaseFragment;->imageUri:Landroid/net/Uri;

    return-object v0
.end method

.method protected imageAction(I)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 233
    if-nez p1, :cond_1

    .line 235
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/a/a;->e:Lcom/viber/voip/a/w;

    invoke-virtual {v1}, Lcom/viber/voip/a/w;->e()Lcom/viber/voip/a/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    .line 237
    sget-object v0, Lcom/viber/voip/messages/extras/image/l;->b:Lcom/viber/voip/messages/extras/image/l;

    invoke-static {v0, v3}, Lcom/viber/voip/messages/extras/image/h;->a(Lcom/viber/voip/messages/extras/image/l;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/user/UserDataBaseFragment;->mTempUri:Landroid/net/Uri;

    .line 238
    iget-object v0, p0, Lcom/viber/voip/user/UserDataBaseFragment;->mTempUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/viber/voip/user/UserDataBaseFragment;->mTempUri:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/viber/voip/user/UserDataBaseFragment;->takePhoto(Landroid/net/Uri;I)V

    .line 253
    :cond_0
    :goto_0
    return-void

    .line 241
    :cond_1
    if-ne v2, p1, :cond_2

    .line 243
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/a/a;->e:Lcom/viber/voip/a/w;

    invoke-virtual {v1}, Lcom/viber/voip/a/w;->d()Lcom/viber/voip/a/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    .line 245
    sget-object v0, Lcom/viber/voip/messages/extras/image/l;->a:Lcom/viber/voip/messages/extras/image/l;

    invoke-static {v0, v3}, Lcom/viber/voip/messages/extras/image/h;->a(Lcom/viber/voip/messages/extras/image/l;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/user/UserDataBaseFragment;->mTempUri:Landroid/net/Uri;

    .line 246
    iget-object v0, p0, Lcom/viber/voip/user/UserDataBaseFragment;->mTempUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 247
    invoke-virtual {p0, v2}, Lcom/viber/voip/user/UserDataBaseFragment;->loadPhoto(I)V

    goto :goto_0

    .line 249
    :cond_2
    const/4 v0, 0x2

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/viber/voip/user/UserDataBaseFragment;->imageUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 250
    invoke-direct {p0}, Lcom/viber/voip/user/UserDataBaseFragment;->removeImage()V

    .line 251
    invoke-virtual {p0}, Lcom/viber/voip/user/UserDataBaseFragment;->onImageUpdate()V

    goto :goto_0
.end method

.method protected isCropingImage()Z
    .locals 1

    .prologue
    .line 369
    iget-boolean v0, p0, Lcom/viber/voip/user/UserDataBaseFragment;->mIsCropingImage:Z

    return v0
.end method

.method protected loadFacebookDetails(Lcom/viber/voip/user/FacebookDetailsListener;)V
    .locals 4
    .parameter

    .prologue
    .line 319
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getFacebookManager()Lcom/viber/voip/messages/extras/fb/s;

    move-result-object v0

    .line 322
    new-instance v1, Lcom/viber/voip/user/UserDataBaseFragment$4;

    invoke-direct {v1, p0, p1, v0}, Lcom/viber/voip/user/UserDataBaseFragment$4;-><init>(Lcom/viber/voip/user/UserDataBaseFragment;Lcom/viber/voip/user/FacebookDetailsListener;Lcom/viber/voip/messages/extras/fb/s;)V

    iput-object v1, p0, Lcom/viber/voip/user/UserDataBaseFragment;->authListener:Lcom/viber/voip/messages/extras/fb/ad;

    .line 330
    invoke-virtual {v0}, Lcom/viber/voip/messages/extras/fb/s;->b()Lcom/viber/voip/messages/extras/fb/ah;

    move-result-object v1

    .line 331
    sget-object v2, Lcom/viber/voip/messages/extras/fb/ah;->d:Lcom/viber/voip/messages/extras/fb/ah;

    if-eq v1, v2, :cond_0

    sget-object v2, Lcom/viber/voip/messages/extras/fb/ah;->a:Lcom/viber/voip/messages/extras/fb/ah;

    if-ne v1, v2, :cond_1

    .line 333
    :cond_0
    invoke-virtual {p0}, Lcom/viber/voip/user/UserDataBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/user/UserDataBaseFragment;->authListener:Lcom/viber/voip/messages/extras/fb/ad;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/viber/voip/messages/extras/fb/s;->a(Landroid/app/Activity;Lcom/viber/voip/messages/extras/fb/ad;Z)V

    .line 337
    :goto_0
    return-void

    .line 335
    :cond_1
    invoke-direct {p0, p1, v0}, Lcom/viber/voip/user/UserDataBaseFragment;->loadFacebookDetais(Lcom/viber/voip/user/FacebookDetailsListener;Lcom/viber/voip/messages/extras/fb/s;)V

    goto :goto_0
.end method

.method public loadPhoto(I)V
    .locals 3
    .parameter

    .prologue
    .line 266
    invoke-static {}, Lcom/viber/voip/messages/extras/image/h;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 267
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "android.intent.action.GET_CONTENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 268
    invoke-virtual {p0}, Lcom/viber/voip/user/UserDataBaseFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c041a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Landroid/content/Intent;

    invoke-static {v0, v1, v2}, Lcom/viber/voip/util/at;->a(Landroid/content/Intent;Ljava/lang/CharSequence;[Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    .line 269
    invoke-virtual {p0, v0, p1}, Lcom/viber/voip/user/UserDataBaseFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 271
    :cond_0
    return-void
.end method

.method protected log(Ljava/lang/Exception;)V
    .locals 0
    .parameter

    .prologue
    .line 304
    return-void
.end method

.method protected log(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 307
    const/4 v0, 0x3

    sget-object v1, Lcom/viber/voip/user/UserDataBaseFragment;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 308
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0xe9

    const/4 v3, 0x1

    .line 164
    if-nez p2, :cond_1

    .line 165
    invoke-virtual {p0}, Lcom/viber/voip/user/UserDataBaseFragment;->onUpdateScreenOrientation()V

    .line 230
    :cond_0
    :goto_0
    return-void

    .line 167
    :cond_1
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 203
    :sswitch_0
    iget-object v0, p0, Lcom/viber/voip/user/UserDataBaseFragment;->mTempUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/viber/voip/user/UserDataBaseFragment;->mTempUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/viber/voip/messages/extras/image/g;->a(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0, v4}, Lcom/viber/voip/user/UserDataBaseFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 206
    iput-boolean v3, p0, Lcom/viber/voip/user/UserDataBaseFragment;->mIsCropingImage:Z

    .line 210
    iget-object v0, p0, Lcom/viber/voip/user/UserDataBaseFragment;->mTempUri:Landroid/net/Uri;

    invoke-direct {p0, v0}, Lcom/viber/voip/user/UserDataBaseFragment;->updateGallery(Landroid/net/Uri;)V

    goto :goto_0

    .line 169
    :sswitch_1
    if-eqz p3, :cond_5

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 170
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 171
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "uriFromIntent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",mTempUri:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/user/UserDataBaseFragment;->mTempUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/viber/voip/user/UserDataBaseFragment;->log(Ljava/lang/String;)V

    .line 172
    iget-object v1, p0, Lcom/viber/voip/user/UserDataBaseFragment;->mTempUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 174
    iput-object v0, p0, Lcom/viber/voip/user/UserDataBaseFragment;->mTempUri:Landroid/net/Uri;

    .line 177
    :cond_2
    iget-object v1, p0, Lcom/viber/voip/user/UserDataBaseFragment;->mTempUri:Landroid/net/Uri;

    invoke-static {v1}, Lcom/viber/voip/util/bj;->b(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 178
    const-string/jumbo v2, "image"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {v0}, Lcom/viber/voip/messages/extras/image/h;->c(Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 179
    invoke-static {}, Lcom/viber/voip/messages/extras/image/h;->a()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/viber/voip/messages/extras/image/h;->c()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 180
    invoke-static {v0}, Lcom/viber/voip/messages/extras/image/g;->a(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0, v4}, Lcom/viber/voip/user/UserDataBaseFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 181
    iput-boolean v3, p0, Lcom/viber/voip/user/UserDataBaseFragment;->mIsCropingImage:Z

    goto :goto_0

    .line 186
    :cond_3
    iput-boolean v5, p0, Lcom/viber/voip/user/UserDataBaseFragment;->mIsCropingImage:Z

    goto/16 :goto_0

    .line 189
    :cond_4
    invoke-virtual {p0}, Lcom/viber/voip/user/UserDataBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/viber/voip/util/bj;->a(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_0

    .line 191
    :cond_5
    iget-object v0, p0, Lcom/viber/voip/user/UserDataBaseFragment;->mTempUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 192
    if-eqz p2, :cond_0

    .line 193
    iget-object v0, p0, Lcom/viber/voip/user/UserDataBaseFragment;->mTempUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/viber/voip/messages/extras/image/g;->a(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0, v4}, Lcom/viber/voip/user/UserDataBaseFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 194
    iput-boolean v3, p0, Lcom/viber/voip/user/UserDataBaseFragment;->mIsCropingImage:Z

    goto/16 :goto_0

    .line 214
    :sswitch_2
    if-eqz p3, :cond_6

    .line 215
    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 216
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Photo was cropped :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/viber/voip/user/UserDataBaseFragment;->log(Ljava/lang/String;)V

    .line 217
    invoke-virtual {p0, v0}, Lcom/viber/voip/user/UserDataBaseFragment;->setImage(Landroid/net/Uri;)V

    .line 225
    :cond_6
    iput-boolean v5, p0, Lcom/viber/voip/user/UserDataBaseFragment;->mIsCropingImage:Z

    .line 226
    iget-object v0, p0, Lcom/viber/voip/user/UserDataBaseFragment;->croppedCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/user/UserDataBaseFragment;->croppedCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_0

    .line 167
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0xe9 -> :sswitch_2
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 81
    invoke-super {p0, p1}, Lcom/viber/voip/ui/al;->onCreate(Landroid/os/Bundle;)V

    .line 83
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getMessagesManager()Lcom/viber/voip/messages/i;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/user/UserDataBaseFragment;->mMessagesManager:Lcom/viber/voip/messages/i;

    .line 84
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getFacebookManager()Lcom/viber/voip/messages/extras/fb/s;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/user/UserDataBaseFragment;->fbManager:Lcom/viber/voip/messages/extras/fb/s;

    .line 85
    return-void
.end method

.method abstract onImageUpdate()V
.end method

.method protected onUpdateScreenOrientation()V
    .locals 0

    .prologue
    .line 107
    return-void
.end method

.method public setEditActivity(Z)V
    .locals 0
    .parameter

    .prologue
    .line 98
    iput-boolean p1, p0, Lcom/viber/voip/user/UserDataBaseFragment;->editActivity:Z

    .line 99
    return-void
.end method

.method public setImage(Landroid/net/Uri;)V
    .locals 0
    .parameter

    .prologue
    .line 103
    iput-object p1, p0, Lcom/viber/voip/user/UserDataBaseFragment;->imageUri:Landroid/net/Uri;

    .line 104
    invoke-virtual {p0}, Lcom/viber/voip/user/UserDataBaseFragment;->onImageUpdate()V

    .line 105
    return-void
.end method

.method public setImageUri(Landroid/net/Uri;)V
    .locals 2
    .parameter

    .prologue
    .line 284
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setImageUri uri: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/user/UserDataBaseFragment;->log(Ljava/lang/String;)V

    .line 285
    iput-object p1, p0, Lcom/viber/voip/user/UserDataBaseFragment;->imageUri:Landroid/net/Uri;

    .line 286
    if-eqz p1, :cond_1

    .line 287
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 288
    if-eqz v0, :cond_0

    .line 289
    iget-object v1, p0, Lcom/viber/voip/user/UserDataBaseFragment;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 294
    :cond_0
    :goto_0
    return-void

    .line 292
    :cond_1
    invoke-direct {p0}, Lcom/viber/voip/user/UserDataBaseFragment;->removeImage()V

    goto :goto_0
.end method

.method public setImageView(Landroid/widget/ImageView;)V
    .locals 0
    .parameter

    .prologue
    .line 297
    iput-object p1, p0, Lcom/viber/voip/user/UserDataBaseFragment;->imageView:Landroid/widget/ImageView;

    .line 298
    return-void
.end method

.method protected showDialog(I)V
    .locals 5
    .parameter

    .prologue
    const v4, 0x7f0c0486

    const/4 v3, 0x0

    .line 112
    packed-switch p1, :pswitch_data_0

    .line 160
    :goto_0
    return-void

    .line 115
    :pswitch_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 116
    invoke-virtual {p0}, Lcom/viber/voip/user/UserDataBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string/jumbo v2, "android.hardware.camera"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/viber/voip/user/UserDataBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string/jumbo v2, "android.hardware.camera.front"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 118
    :cond_0
    invoke-virtual {p0}, Lcom/viber/voip/user/UserDataBaseFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c047e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    :cond_1
    invoke-virtual {p0}, Lcom/viber/voip/user/UserDataBaseFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0485

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    .line 122
    invoke-virtual {p0}, Lcom/viber/voip/user/UserDataBaseFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    :cond_2
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/viber/voip/user/UserDataBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-array v2, v3, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    new-instance v2, Lcom/viber/voip/user/UserDataBaseFragment$1;

    invoke-direct {v2, p0}, Lcom/viber/voip/user/UserDataBaseFragment$1;-><init>(Lcom/viber/voip/user/UserDataBaseFragment;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 139
    :pswitch_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/viber/voip/user/UserDataBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c0487

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/user/UserDataBaseFragment$3;

    invoke-direct {v1, p0}, Lcom/viber/voip/user/UserDataBaseFragment$3;-><init>(Lcom/viber/voip/user/UserDataBaseFragment;)V

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c02b6

    new-instance v2, Lcom/viber/voip/user/UserDataBaseFragment$2;

    invoke-direct {v2, p0}, Lcom/viber/voip/user/UserDataBaseFragment$2;-><init>(Lcom/viber/voip/user/UserDataBaseFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 112
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected showToast(I)V
    .locals 2
    .parameter

    .prologue
    .line 365
    invoke-virtual {p0}, Lcom/viber/voip/user/UserDataBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 366
    return-void
.end method

.method public takePhoto(Landroid/net/Uri;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 257
    invoke-static {}, Lcom/viber/voip/messages/extras/image/h;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 258
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 259
    const-string/jumbo v1, "output"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 260
    invoke-virtual {p0, v0, p2}, Lcom/viber/voip/user/UserDataBaseFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 262
    :cond_0
    return-void
.end method
