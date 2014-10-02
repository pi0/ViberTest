.class Lcom/facebook/widget/WebDialog$BuilderBase;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<CONCRETE:",
        "Lcom/facebook/widget/WebDialog$BuilderBase",
        "<*>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final ACCESS_TOKEN:Ljava/lang/String; = "access_token"

.field private static final APP_ID_PARAM:Ljava/lang/String; = "app_id"


# instance fields
.field private action:Ljava/lang/String;

.field private applicationId:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private listener:Lcom/facebook/widget/WebDialog$OnCompleteListener;

.field private parameters:Landroid/os/Bundle;

.field private session:Lcom/facebook/Session;

.field private theme:I


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 390
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 386
    const v0, 0x1030010

    iput v0, p0, Lcom/facebook/widget/WebDialog$BuilderBase;->theme:I

    .line 391
    const-string/jumbo v0, "session"

    invoke-static {p2, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 392
    invoke-virtual {p2}, Lcom/facebook/Session;->isOpened()Z

    move-result v0

    if-nez v0, :cond_0

    .line 393
    new-instance v0, Lcom/facebook/FacebookException;

    const-string/jumbo v1, "Attempted to use a Session that was not open."

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 395
    :cond_0
    iput-object p2, p0, Lcom/facebook/widget/WebDialog$BuilderBase;->session:Lcom/facebook/Session;

    .line 397
    invoke-direct {p0, p1, p3, p4}, Lcom/facebook/widget/WebDialog$BuilderBase;->finishInit(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 398
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 400
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 386
    const v0, 0x1030010

    iput v0, p0, Lcom/facebook/widget/WebDialog$BuilderBase;->theme:I

    .line 401
    const-string/jumbo v0, "applicationId"

    invoke-static {p2, v0}, Lcom/facebook/internal/Validate;->notNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    iput-object p2, p0, Lcom/facebook/widget/WebDialog$BuilderBase;->applicationId:Ljava/lang/String;

    .line 404
    invoke-direct {p0, p1, p3, p4}, Lcom/facebook/widget/WebDialog$BuilderBase;->finishInit(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 405
    return-void
.end method

.method private finishInit(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 475
    iput-object p1, p0, Lcom/facebook/widget/WebDialog$BuilderBase;->context:Landroid/content/Context;

    .line 476
    iput-object p2, p0, Lcom/facebook/widget/WebDialog$BuilderBase;->action:Ljava/lang/String;

    .line 477
    if-eqz p3, :cond_0

    .line 478
    iput-object p3, p0, Lcom/facebook/widget/WebDialog$BuilderBase;->parameters:Landroid/os/Bundle;

    .line 482
    :goto_0
    return-void

    .line 480
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/facebook/widget/WebDialog$BuilderBase;->parameters:Landroid/os/Bundle;

    goto :goto_0
.end method


# virtual methods
.method public build()Lcom/facebook/widget/WebDialog;
    .locals 6

    .prologue
    .line 440
    iget-object v0, p0, Lcom/facebook/widget/WebDialog$BuilderBase;->session:Lcom/facebook/Session;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/widget/WebDialog$BuilderBase;->session:Lcom/facebook/Session;

    invoke-virtual {v0}, Lcom/facebook/Session;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 441
    iget-object v0, p0, Lcom/facebook/widget/WebDialog$BuilderBase;->parameters:Landroid/os/Bundle;

    const-string/jumbo v1, "app_id"

    iget-object v2, p0, Lcom/facebook/widget/WebDialog$BuilderBase;->session:Lcom/facebook/Session;

    invoke-virtual {v2}, Lcom/facebook/Session;->getApplicationId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    iget-object v0, p0, Lcom/facebook/widget/WebDialog$BuilderBase;->parameters:Landroid/os/Bundle;

    const-string/jumbo v1, "access_token"

    iget-object v2, p0, Lcom/facebook/widget/WebDialog$BuilderBase;->session:Lcom/facebook/Session;

    invoke-virtual {v2}, Lcom/facebook/Session;->getAccessToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    :goto_0
    iget-object v0, p0, Lcom/facebook/widget/WebDialog$BuilderBase;->parameters:Landroid/os/Bundle;

    const-string/jumbo v1, "redirect_uri"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 448
    iget-object v0, p0, Lcom/facebook/widget/WebDialog$BuilderBase;->parameters:Landroid/os/Bundle;

    const-string/jumbo v1, "redirect_uri"

    const-string/jumbo v2, "fbconnect://success"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    :cond_0
    new-instance v0, Lcom/facebook/widget/WebDialog;

    iget-object v1, p0, Lcom/facebook/widget/WebDialog$BuilderBase;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/facebook/widget/WebDialog$BuilderBase;->action:Ljava/lang/String;

    iget-object v3, p0, Lcom/facebook/widget/WebDialog$BuilderBase;->parameters:Landroid/os/Bundle;

    iget v4, p0, Lcom/facebook/widget/WebDialog$BuilderBase;->theme:I

    iget-object v5, p0, Lcom/facebook/widget/WebDialog$BuilderBase;->listener:Lcom/facebook/widget/WebDialog$OnCompleteListener;

    invoke-direct/range {v0 .. v5}, Lcom/facebook/widget/WebDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ILcom/facebook/widget/WebDialog$OnCompleteListener;)V

    return-object v0

    .line 444
    :cond_1
    iget-object v0, p0, Lcom/facebook/widget/WebDialog$BuilderBase;->parameters:Landroid/os/Bundle;

    const-string/jumbo v1, "app_id"

    iget-object v2, p0, Lcom/facebook/widget/WebDialog$BuilderBase;->applicationId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected getApplicationId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 455
    iget-object v0, p0, Lcom/facebook/widget/WebDialog$BuilderBase;->applicationId:Ljava/lang/String;

    return-object v0
.end method

.method protected getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 459
    iget-object v0, p0, Lcom/facebook/widget/WebDialog$BuilderBase;->context:Landroid/content/Context;

    return-object v0
.end method

.method protected getListener()Lcom/facebook/widget/WebDialog$OnCompleteListener;
    .locals 1

    .prologue
    .line 471
    iget-object v0, p0, Lcom/facebook/widget/WebDialog$BuilderBase;->listener:Lcom/facebook/widget/WebDialog$OnCompleteListener;

    return-object v0
.end method

.method protected getParameters()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 467
    iget-object v0, p0, Lcom/facebook/widget/WebDialog$BuilderBase;->parameters:Landroid/os/Bundle;

    return-object v0
.end method

.method protected getTheme()I
    .locals 1

    .prologue
    .line 463
    iget v0, p0, Lcom/facebook/widget/WebDialog$BuilderBase;->theme:I

    return v0
.end method

.method public setOnCompleteListener(Lcom/facebook/widget/WebDialog$OnCompleteListener;)Lcom/facebook/widget/WebDialog$BuilderBase;
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/widget/WebDialog$OnCompleteListener;",
            ")TCONCRETE;"
        }
    .end annotation

    .prologue
    .line 427
    iput-object p1, p0, Lcom/facebook/widget/WebDialog$BuilderBase;->listener:Lcom/facebook/widget/WebDialog$OnCompleteListener;

    .line 430
    return-object p0
.end method

.method public setTheme(I)Lcom/facebook/widget/WebDialog$BuilderBase;
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TCONCRETE;"
        }
    .end annotation

    .prologue
    .line 414
    iput p1, p0, Lcom/facebook/widget/WebDialog$BuilderBase;->theme:I

    .line 417
    return-object p0
.end method
