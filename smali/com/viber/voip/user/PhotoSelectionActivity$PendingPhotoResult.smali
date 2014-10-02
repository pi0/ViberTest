.class Lcom/viber/voip/user/PhotoSelectionActivity$PendingPhotoResult;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mData:Landroid/content/Intent;

.field private final mRequestCode:I

.field private final mResultCode:I


# direct methods
.method private constructor <init>(IILandroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 852
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 853
    iput p1, p0, Lcom/viber/voip/user/PhotoSelectionActivity$PendingPhotoResult;->mRequestCode:I

    .line 854
    iput p2, p0, Lcom/viber/voip/user/PhotoSelectionActivity$PendingPhotoResult;->mResultCode:I

    .line 855
    iput-object p3, p0, Lcom/viber/voip/user/PhotoSelectionActivity$PendingPhotoResult;->mData:Landroid/content/Intent;

    .line 856
    return-void
.end method

.method synthetic constructor <init>(IILandroid/content/Intent;Lcom/viber/voip/user/PhotoSelectionActivity$1;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 847
    invoke-direct {p0, p1, p2, p3}, Lcom/viber/voip/user/PhotoSelectionActivity$PendingPhotoResult;-><init>(IILandroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/viber/voip/user/PhotoSelectionActivity$PendingPhotoResult;)I
    .locals 1
    .parameter

    .prologue
    .line 847
    iget v0, p0, Lcom/viber/voip/user/PhotoSelectionActivity$PendingPhotoResult;->mRequestCode:I

    return v0
.end method

.method static synthetic access$1100(Lcom/viber/voip/user/PhotoSelectionActivity$PendingPhotoResult;)I
    .locals 1
    .parameter

    .prologue
    .line 847
    iget v0, p0, Lcom/viber/voip/user/PhotoSelectionActivity$PendingPhotoResult;->mResultCode:I

    return v0
.end method

.method static synthetic access$1200(Lcom/viber/voip/user/PhotoSelectionActivity$PendingPhotoResult;)Landroid/content/Intent;
    .locals 1
    .parameter

    .prologue
    .line 847
    iget-object v0, p0, Lcom/viber/voip/user/PhotoSelectionActivity$PendingPhotoResult;->mData:Landroid/content/Intent;

    return-object v0
.end method
