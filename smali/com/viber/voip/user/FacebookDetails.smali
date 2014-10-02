.class final Lcom/viber/voip/user/FacebookDetails;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final userName:Ljava/lang/String;

.field private final userPhoto:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    if-nez p1, :cond_0

    .line 21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "userName must be not null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 23
    :cond_0
    if-nez p2, :cond_1

    .line 24
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "userPhoto must be not null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 26
    :cond_1
    iput-object p1, p0, Lcom/viber/voip/user/FacebookDetails;->userName:Ljava/lang/String;

    .line 27
    iput-object p2, p0, Lcom/viber/voip/user/FacebookDetails;->userPhoto:Landroid/graphics/Bitmap;

    .line 28
    return-void
.end method


# virtual methods
.method public getUserName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/viber/voip/user/FacebookDetails;->userName:Ljava/lang/String;

    return-object v0
.end method

.method public getUserPhoto()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/viber/voip/user/FacebookDetails;->userPhoto:Landroid/graphics/Bitmap;

    return-object v0
.end method
