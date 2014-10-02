.class final Lcom/viber/voip/user/LoadFacebookDetailsTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/viber/voip/messages/extras/fb/s;",
        "Ljava/lang/Void;",
        "Lcom/viber/voip/user/FacebookDetails;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private errorMessage:Ljava/lang/String;

.field private isTaskFinished:Z

.field private final listener:Lcom/viber/voip/user/FacebookDetailsListener;

.field private mContext:Landroid/content/Context;

.field private progressDialog:Landroid/app/ProgressDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/viber/voip/user/LoadFacebookDetailsTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/user/LoadFacebookDetailsTask;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/viber/voip/user/FacebookDetailsListener;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/viber/voip/user/LoadFacebookDetailsTask;->mContext:Landroid/content/Context;

    .line 32
    iput-object p2, p0, Lcom/viber/voip/user/LoadFacebookDetailsTask;->listener:Lcom/viber/voip/user/FacebookDetailsListener;

    .line 33
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/viber/voip/user/LoadFacebookDetailsTask;->errorMessage:Ljava/lang/String;

    .line 35
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/viber/voip/user/LoadFacebookDetailsTask;->progressDialog:Landroid/app/ProgressDialog;

    .line 36
    iget-object v0, p0, Lcom/viber/voip/user/LoadFacebookDetailsTask;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c04c6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 37
    return-void
.end method

.method private isActivityDestroyed()Z
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/viber/voip/user/LoadFacebookDetailsTask;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    return v0
.end method

.method private loadFacebookDetails(Lcom/viber/voip/messages/extras/fb/s;)Lcom/viber/voip/user/FacebookDetails;
    .locals 3
    .parameter

    .prologue
    .line 76
    .line 78
    :try_start_0
    invoke-virtual {p1}, Lcom/viber/voip/messages/extras/fb/s;->d()Lcom/viber/voip/messages/extras/fb/aj;
    :try_end_0
    .catch Lcom/facebook/FacebookException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 83
    if-nez v1, :cond_0

    .line 84
    new-instance v0, Lcom/viber/voip/messages/extras/fb/c;

    const-string/jumbo v1, "Facebook user profile is null"

    invoke-direct {v0, v1}, Lcom/viber/voip/messages/extras/fb/c;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :catch_0
    move-exception v0

    .line 80
    new-instance v1, Lcom/viber/voip/messages/extras/fb/c;

    invoke-virtual {v0}, Lcom/facebook/FacebookException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/viber/voip/messages/extras/fb/c;-><init>(Ljava/lang/String;)V

    throw v1

    .line 87
    :cond_0
    invoke-virtual {v1}, Lcom/viber/voip/messages/extras/fb/aj;->b()Ljava/lang/String;

    move-result-object v0

    .line 90
    if-nez v0, :cond_1

    .line 91
    const-string/jumbo v0, ""

    .line 94
    :cond_1
    invoke-virtual {v1}, Lcom/viber/voip/messages/extras/fb/aj;->a()Ljava/lang/String;

    move-result-object v1

    .line 95
    if-nez v1, :cond_2

    .line 96
    new-instance v0, Lcom/viber/voip/messages/extras/fb/c;

    const-string/jumbo v1, "Facebook user id is null"

    invoke-direct {v0, v1}, Lcom/viber/voip/messages/extras/fb/c;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    :cond_2
    invoke-virtual {p1, v1}, Lcom/viber/voip/messages/extras/fb/s;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 101
    new-instance v2, Lcom/viber/voip/user/FacebookDetails;

    invoke-direct {v2, v0, v1}, Lcom/viber/voip/user/FacebookDetails;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-object v2
.end method

.method private restoreProgressDialog()V
    .locals 3

    .prologue
    .line 120
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/viber/voip/user/LoadFacebookDetailsTask;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/viber/voip/user/LoadFacebookDetailsTask;->progressDialog:Landroid/app/ProgressDialog;

    .line 121
    iget-object v0, p0, Lcom/viber/voip/user/LoadFacebookDetailsTask;->progressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/viber/voip/user/LoadFacebookDetailsTask;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c04c6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 122
    iget-object v0, p0, Lcom/viber/voip/user/LoadFacebookDetailsTask;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 123
    return-void
.end method


# virtual methods
.method public cancelProgressDialog()V
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/viber/voip/user/LoadFacebookDetailsTask;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/viber/voip/user/LoadFacebookDetailsTask;->isActivityDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/viber/voip/user/LoadFacebookDetailsTask;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 117
    :cond_0
    return-void
.end method

.method protected varargs doInBackground([Lcom/viber/voip/messages/extras/fb/s;)Lcom/viber/voip/user/FacebookDetails;
    .locals 6
    .parameter

    .prologue
    .line 48
    const/4 v0, 0x0

    aget-object v1, p1, v0

    .line 50
    const/4 v0, 0x0

    .line 52
    :try_start_0
    invoke-direct {p0, v1}, Lcom/viber/voip/user/LoadFacebookDetailsTask;->loadFacebookDetails(Lcom/viber/voip/messages/extras/fb/s;)Lcom/viber/voip/user/FacebookDetails;
    :try_end_0
    .catch Lcom/viber/voip/messages/extras/fb/c; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 57
    :goto_0
    return-object v0

    .line 53
    :catch_0
    move-exception v1

    .line 54
    invoke-virtual {v1}, Lcom/viber/voip/messages/extras/fb/c;->getMessage()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/viber/voip/user/LoadFacebookDetailsTask;->errorMessage:Ljava/lang/String;

    .line 55
    const/4 v2, 0x6

    sget-object v3, Lcom/viber/voip/user/LoadFacebookDetailsTask;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Failed to load facebook details: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/viber/voip/messages/extras/fb/c;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4, v1}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 19
    check-cast p1, [Lcom/viber/voip/messages/extras/fb/s;

    invoke-virtual {p0, p1}, Lcom/viber/voip/user/LoadFacebookDetailsTask;->doInBackground([Lcom/viber/voip/messages/extras/fb/s;)Lcom/viber/voip/user/FacebookDetails;

    move-result-object v0

    return-object v0
.end method

.method public isFinished()Z
    .locals 1

    .prologue
    .line 126
    iget-boolean v0, p0, Lcom/viber/voip/user/LoadFacebookDetailsTask;->isTaskFinished:Z

    return v0
.end method

.method protected onPostExecute(Lcom/viber/voip/user/FacebookDetails;)V
    .locals 2
    .parameter

    .prologue
    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/viber/voip/user/LoadFacebookDetailsTask;->isTaskFinished:Z

    .line 64
    invoke-virtual {p0}, Lcom/viber/voip/user/LoadFacebookDetailsTask;->cancelProgressDialog()V

    .line 66
    if-eqz p1, :cond_0

    .line 67
    iget-object v0, p0, Lcom/viber/voip/user/LoadFacebookDetailsTask;->listener:Lcom/viber/voip/user/FacebookDetailsListener;

    invoke-interface {v0, p1}, Lcom/viber/voip/user/FacebookDetailsListener;->onLoaded(Lcom/viber/voip/user/FacebookDetails;)V

    .line 71
    :goto_0
    return-void

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/user/LoadFacebookDetailsTask;->listener:Lcom/viber/voip/user/FacebookDetailsListener;

    iget-object v1, p0, Lcom/viber/voip/user/LoadFacebookDetailsTask;->errorMessage:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/viber/voip/user/FacebookDetailsListener;->onLoadingError(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 19
    check-cast p1, Lcom/viber/voip/user/FacebookDetails;

    invoke-virtual {p0, p1}, Lcom/viber/voip/user/LoadFacebookDetailsTask;->onPostExecute(Lcom/viber/voip/user/FacebookDetails;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 41
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/viber/voip/user/LoadFacebookDetailsTask;->isTaskFinished:Z

    .line 43
    iget-object v0, p0, Lcom/viber/voip/user/LoadFacebookDetailsTask;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 44
    return-void
.end method

.method public restoreTask(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 109
    iput-object p1, p0, Lcom/viber/voip/user/LoadFacebookDetailsTask;->mContext:Landroid/content/Context;

    .line 110
    invoke-direct {p0}, Lcom/viber/voip/user/LoadFacebookDetailsTask;->restoreProgressDialog()V

    .line 111
    return-void
.end method
