.class public abstract Lcom/viber/voip/user/PhotoSelectionHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final REQUEST_CODE_CAMERA_WITH_DATA:I = 0x3e9

.field private static final REQUEST_CODE_CROP_PHOTO:I = 0x300e

.field private static final REQUEST_CODE_PHOTO_PICKED_WITH_DATA:I = 0x2712

.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected final mContext:Landroid/content/Context;

.field private final mIsDirectoryContact:Z

.field private final mPhotoMode:I

.field private final mPhotoView:Landroid/view/View;

.field private mPopup:Landroid/widget/ListPopupWindow;

.field private mPopupDialog:Landroid/app/Dialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lcom/viber/voip/user/PhotoSelectionHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/user/PhotoSelectionHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;IZ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/viber/voip/user/PhotoSelectionHandler;->mContext:Landroid/content/Context;

    .line 57
    iput-object p2, p0, Lcom/viber/voip/user/PhotoSelectionHandler;->mPhotoView:Landroid/view/View;

    .line 58
    iput p3, p0, Lcom/viber/voip/user/PhotoSelectionHandler;->mPhotoMode:I

    .line 59
    iput-boolean p4, p0, Lcom/viber/voip/user/PhotoSelectionHandler;->mIsDirectoryContact:Z

    .line 60
    return-void
.end method

.method static synthetic access$000(Lcom/viber/voip/user/PhotoSelectionHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/viber/voip/user/PhotoSelectionHandler;->showPhotoSelectPopup()V

    return-void
.end method

.method static synthetic access$100(Lcom/viber/voip/user/PhotoSelectionHandler;Ljava/io/File;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/viber/voip/user/PhotoSelectionHandler;->startTakePhotoActivity(Ljava/io/File;)V

    return-void
.end method

.method static synthetic access$200()I
    .locals 1

    .prologue
    .line 38
    invoke-static {}, Lcom/viber/voip/user/PhotoSelectionHandler;->getPhotoPickerNotFoundText()I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/viber/voip/user/PhotoSelectionHandler;Ljava/io/File;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/viber/voip/user/PhotoSelectionHandler;->startPickFromGalleryActivity(Ljava/io/File;)V

    return-void
.end method

.method private doCropPhoto(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 190
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 191
    iget-object v0, p0, Lcom/viber/voip/user/PhotoSelectionHandler;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Lcom/viber/voip/messages/extras/image/g;->a(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v2

    const/16 v3, 0x300e

    invoke-virtual {v0, v2, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 199
    sget-object v0, Lcom/viber/voip/dk;->g:Lcom/viber/voip/dk;

    invoke-static {v0}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v0

    new-instance v2, Lcom/viber/voip/user/PhotoSelectionHandler$5;

    invoke-direct {v2, p0, v1}, Lcom/viber/voip/user/PhotoSelectionHandler$5;-><init>(Lcom/viber/voip/user/PhotoSelectionHandler;Ljava/io/File;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    :goto_0
    return-void

    .line 216
    :catch_0
    move-exception v0

    .line 217
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Cannot crop image:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/user/PhotoSelectionHandler;->log(Ljava/lang/String;)V

    .line 218
    iget-object v0, p0, Lcom/viber/voip/user/PhotoSelectionHandler;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/viber/voip/user/PhotoSelectionHandler;->getPhotoPickerNotFoundText()I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private getPhotoPickIntent(Ljava/io/File;)Landroid/content/Intent;
    .locals 3
    .parameter

    .prologue
    .line 255
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.GET_CONTENT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 256
    const-string/jumbo v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 258
    return-object v0
.end method

.method private static getPhotoPickerNotFoundText()I
    .locals 1

    .prologue
    .line 341
    invoke-static {}, Lcom/viber/voip/ViberApplication;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0c0482

    :goto_0
    return v0

    :cond_0
    const v0, 0x7f0c0483

    goto :goto_0
.end method

.method private static getTakePhotoIntent(Ljava/io/File;)Landroid/content/Intent;
    .locals 3
    .parameter

    .prologue
    .line 277
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.media.action.IMAGE_CAPTURE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 278
    const-string/jumbo v1, "output"

    invoke-static {p0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 279
    return-object v0
.end method

.method private showPhotoSelectPopup()V
    .locals 4

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/viber/voip/user/PhotoSelectionHandler;->getListener()Lcom/viber/voip/user/PhotoSelectionHandler$PhotoActionListener;

    move-result-object v0

    .line 82
    if-eqz v0, :cond_0

    .line 83
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xa

    if-le v1, v2, :cond_1

    .line 84
    iget-object v1, p0, Lcom/viber/voip/user/PhotoSelectionHandler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/viber/voip/user/PhotoSelectionHandler;->mPhotoView:Landroid/view/View;

    iget v3, p0, Lcom/viber/voip/user/PhotoSelectionHandler;->mPhotoMode:I

    invoke-static {v1, v2, v0, v3}, Lcom/viber/voip/user/PhotoActionPopup;->createPopupMenu(Landroid/content/Context;Landroid/view/View;Lcom/viber/voip/user/PhotoActionPopup$Listener;I)Landroid/widget/ListPopupWindow;

    move-result-object v1

    iput-object v1, p0, Lcom/viber/voip/user/PhotoSelectionHandler;->mPopup:Landroid/widget/ListPopupWindow;

    .line 85
    iget-object v1, p0, Lcom/viber/voip/user/PhotoSelectionHandler;->mPopup:Landroid/widget/ListPopupWindow;

    new-instance v2, Lcom/viber/voip/user/PhotoSelectionHandler$1;

    invoke-direct {v2, p0, v0}, Lcom/viber/voip/user/PhotoSelectionHandler$1;-><init>(Lcom/viber/voip/user/PhotoSelectionHandler;Lcom/viber/voip/user/PhotoSelectionHandler$PhotoActionListener;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListPopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 91
    iget-object v0, p0, Lcom/viber/voip/user/PhotoSelectionHandler;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->show()V

    .line 104
    :cond_0
    :goto_0
    return-void

    .line 93
    :cond_1
    iget-object v1, p0, Lcom/viber/voip/user/PhotoSelectionHandler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/viber/voip/user/PhotoSelectionHandler;->mPhotoView:Landroid/view/View;

    iget v3, p0, Lcom/viber/voip/user/PhotoSelectionHandler;->mPhotoMode:I

    invoke-static {v1, v2, v0, v3}, Lcom/viber/voip/user/PhotoActionDialog;->createPopupMenu(Landroid/content/Context;Landroid/view/View;Lcom/viber/voip/user/PhotoActionPopup$Listener;I)Landroid/app/Dialog;

    move-result-object v1

    iput-object v1, p0, Lcom/viber/voip/user/PhotoSelectionHandler;->mPopupDialog:Landroid/app/Dialog;

    .line 94
    iget-object v1, p0, Lcom/viber/voip/user/PhotoSelectionHandler;->mPopupDialog:Landroid/app/Dialog;

    new-instance v2, Lcom/viber/voip/user/PhotoSelectionHandler$2;

    invoke-direct {v2, p0, v0}, Lcom/viber/voip/user/PhotoSelectionHandler$2;-><init>(Lcom/viber/voip/user/PhotoSelectionHandler;Lcom/viber/voip/user/PhotoSelectionHandler$PhotoActionListener;)V

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 101
    iget-object v0, p0, Lcom/viber/voip/user/PhotoSelectionHandler;->mPopupDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0
.end method

.method private startPickFromGalleryActivity(Ljava/io/File;)V
    .locals 3
    .parameter

    .prologue
    .line 242
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "android.intent.action.GET_CONTENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 243
    iget-object v1, p0, Lcom/viber/voip/user/PhotoSelectionHandler;->mContext:Landroid/content/Context;

    const v2, 0x7f0c041a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Landroid/content/Intent;

    invoke-static {v0, v1, v2}, Lcom/viber/voip/util/at;->a(Landroid/content/Intent;Ljava/lang/CharSequence;[Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    .line 245
    const/16 v1, 0x2712

    invoke-virtual {p0, v0, v1, p1}, Lcom/viber/voip/user/PhotoSelectionHandler;->startPhotoActivity(Landroid/content/Intent;ILjava/io/File;)V

    .line 246
    return-void
.end method

.method private startTakePhotoActivity(Ljava/io/File;)V
    .locals 2
    .parameter

    .prologue
    .line 230
    invoke-static {p1}, Lcom/viber/voip/user/PhotoSelectionHandler;->getTakePhotoIntent(Ljava/io/File;)Landroid/content/Intent;

    move-result-object v0

    .line 231
    const/16 v1, 0x3e9

    invoke-virtual {p0, v0, v1, p1}, Lcom/viber/voip/user/PhotoSelectionHandler;->startPhotoActivity(Landroid/content/Intent;ILjava/io/File;)V

    .line 232
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/viber/voip/user/PhotoSelectionHandler;->mPopup:Landroid/widget/ListPopupWindow;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/viber/voip/user/PhotoSelectionHandler;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/user/PhotoSelectionHandler;->mPopupDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    .line 67
    iget-object v0, p0, Lcom/viber/voip/user/PhotoSelectionHandler;->mPopupDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 69
    :cond_1
    return-void
.end method

.method public abstract getListener()Lcom/viber/voip/user/PhotoSelectionHandler$PhotoActionListener;
.end method

.method public handlePhotoActivityResult(IILandroid/content/Intent;)Z
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v4, 0x300e

    const/4 v1, 0x1

    .line 116
    invoke-virtual {p0}, Lcom/viber/voip/user/PhotoSelectionHandler;->getListener()Lcom/viber/voip/user/PhotoSelectionHandler$PhotoActionListener;

    move-result-object v0

    .line 117
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handlePhotoActivityResult requestCode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",resultCode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/viber/voip/user/PhotoSelectionHandler;->log(Ljava/lang/String;)V

    .line 119
    const/4 v2, -0x1

    if-ne p2, v2, :cond_5

    .line 120
    sparse-switch p1, :sswitch_data_0

    .line 177
    :cond_0
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return v0

    .line 123
    :sswitch_0
    if-eqz p3, :cond_4

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 124
    iget-object v0, p0, Lcom/viber/voip/user/PhotoSelectionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p3}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/viber/voip/messages/extras/image/h;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "uriFromIntent = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/user/PhotoSelectionHandler;->log(Ljava/lang/String;)V

    .line 127
    invoke-static {v2}, Lcom/viber/voip/util/bj;->b(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 128
    const-string/jumbo v3, "image"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 129
    invoke-static {v2}, Lcom/viber/voip/messages/extras/image/h;->c(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 130
    iget-object v0, p0, Lcom/viber/voip/user/PhotoSelectionHandler;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v2}, Lcom/viber/voip/messages/extras/image/g;->a(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v2, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_1
    :goto_2
    move v0, v1

    .line 154
    goto :goto_1

    .line 133
    :cond_2
    sget-object v0, Lcom/viber/voip/dk;->h:Lcom/viber/voip/dk;

    invoke-static {v0}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v0

    new-instance v3, Lcom/viber/voip/user/PhotoSelectionHandler$3;

    invoke-direct {v3, p0, v2}, Lcom/viber/voip/user/PhotoSelectionHandler$3;-><init>(Lcom/viber/voip/user/PhotoSelectionHandler;Landroid/net/Uri;)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    .line 142
    :cond_3
    iget-object v0, p0, Lcom/viber/voip/user/PhotoSelectionHandler;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/viber/voip/user/PhotoSelectionHandler$4;

    invoke-direct {v2, p0}, Lcom/viber/voip/user/PhotoSelectionHandler$4;-><init>(Lcom/viber/voip/user/PhotoSelectionHandler;)V

    invoke-static {v0, v2}, Lcom/viber/voip/util/bj;->a(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_2

    .line 150
    :cond_4
    invoke-virtual {v0}, Lcom/viber/voip/user/PhotoSelectionHandler$PhotoActionListener;->getCurrentPhotoFile()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 151
    new-instance v2, Ljava/io/File;

    invoke-virtual {v0}, Lcom/viber/voip/user/PhotoSelectionHandler$PhotoActionListener;->getCurrentPhotoFile()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Lcom/viber/voip/user/PhotoSelectionHandler;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Lcom/viber/voip/messages/extras/image/g;->a(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v2, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_2

    .line 158
    :sswitch_1
    invoke-virtual {v0}, Lcom/viber/voip/user/PhotoSelectionHandler$PhotoActionListener;->getCurrentPhotoFile()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/user/PhotoSelectionHandler;->doCropPhoto(Ljava/lang/String;)V

    move v0, v1

    .line 159
    goto/16 :goto_1

    .line 163
    :sswitch_2
    if-eqz p3, :cond_0

    .line 164
    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 165
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Photo was cropped :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/viber/voip/user/PhotoSelectionHandler;->log(Ljava/lang/String;)V

    .line 166
    invoke-virtual {v0, v2}, Lcom/viber/voip/user/PhotoSelectionHandler$PhotoActionListener;->onPhotoSelected(Landroid/net/Uri;)V

    move v0, v1

    .line 167
    goto/16 :goto_1

    .line 172
    :cond_5
    invoke-virtual {v0}, Lcom/viber/voip/user/PhotoSelectionHandler$PhotoActionListener;->getCurrentPhotoFile()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 173
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Lcom/viber/voip/user/PhotoSelectionHandler$PhotoActionListener;->getCurrentPhotoFile()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 174
    iget-object v0, p0, Lcom/viber/voip/user/PhotoSelectionHandler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/messages/extras/image/h;->c(Landroid/content/Context;Landroid/net/Uri;)Z

    goto/16 :goto_0

    .line 120
    :sswitch_data_0
    .sparse-switch
        0x3e9 -> :sswitch_1
        0x2712 -> :sswitch_0
        0x300e -> :sswitch_2
    .end sparse-switch
.end method

.method protected log(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 337
    const/4 v0, 0x3

    sget-object v1, Lcom/viber/voip/user/PhotoSelectionHandler;->TAG:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 338
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onClick v:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/user/PhotoSelectionHandler;->log(Ljava/lang/String;)V

    .line 77
    invoke-direct {p0}, Lcom/viber/voip/user/PhotoSelectionHandler;->showPhotoSelectPopup()V

    .line 78
    return-void
.end method

.method protected abstract startPhotoActivity(Landroid/content/Intent;ILjava/io/File;)V
.end method
