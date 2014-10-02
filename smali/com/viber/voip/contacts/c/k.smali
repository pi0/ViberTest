.class final Lcom/viber/voip/contacts/c/k;
.super Lcom/viber/voip/contacts/c/r;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/viber/jni/CGetUserDetails;


# direct methods
.method constructor <init>(Lcom/viber/jni/CGetUserDetails;)V
    .locals 1
    .parameter

    .prologue
    .line 488
    iput-object p1, p0, Lcom/viber/voip/contacts/c/k;->a:Lcom/viber/jni/CGetUserDetails;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/viber/voip/contacts/c/r;-><init>(Lcom/viber/voip/contacts/c/b;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 491
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "checkIsUserNeedSetInfo. download complete! path: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/contacts/c/a;->c(Ljava/lang/String;)V

    .line 492
    iget-object v0, p0, Lcom/viber/voip/contacts/c/k;->a:Lcom/viber/jni/CGetUserDetails;

    iget-object v0, v0, Lcom/viber/jni/CGetUserDetails;->DownloadID:Ljava/lang/String;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/user/UserData;->setImage(Ljava/lang/String;Landroid/net/Uri;)V

    .line 493
    return-void
.end method
