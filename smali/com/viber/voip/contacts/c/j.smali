.class final Lcom/viber/voip/contacts/c/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/messages/controller/do;


# instance fields
.field final synthetic a:Lcom/viber/voip/contacts/c/v;


# direct methods
.method constructor <init>(Lcom/viber/voip/contacts/c/v;)V
    .locals 0
    .parameter

    .prologue
    .line 458
    iput-object p1, p0, Lcom/viber/voip/contacts/c/j;->a:Lcom/viber/voip/contacts/c/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 468
    const-string/jumbo v0, "checkIsUserNeedSetInfo.onUpdateUserError"

    invoke-static {v0}, Lcom/viber/voip/contacts/c/a;->c(Ljava/lang/String;)V

    .line 469
    iget-object v0, p0, Lcom/viber/voip/contacts/c/j;->a:Lcom/viber/voip/contacts/c/v;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/contacts/c/j;->a:Lcom/viber/voip/contacts/c/v;

    sget-object v1, Lcom/viber/voip/contacts/c/q;->b:Lcom/viber/voip/contacts/c/q;

    invoke-interface {v0, v1}, Lcom/viber/voip/contacts/c/v;->a(Lcom/viber/voip/contacts/c/q;)V

    .line 470
    :cond_0
    return-void
.end method

.method public a([Lcom/viber/jni/CGetUserDetails;)V
    .locals 3
    .parameter

    .prologue
    .line 461
    const/4 v0, 0x0

    aget-object v0, p1, v0

    .line 462
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "checkIsUserNeedSetInfo.onGetUserDetail name = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/viber/jni/CGetUserDetails;->Name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", DownloadID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/viber/jni/CGetUserDetails;->DownloadID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/viber/voip/contacts/c/a;->c(Ljava/lang/String;)V

    .line 463
    iget-object v1, p0, Lcom/viber/voip/contacts/c/j;->a:Lcom/viber/voip/contacts/c/v;

    invoke-static {v0, v1}, Lcom/viber/voip/contacts/c/a;->a(Lcom/viber/jni/CGetUserDetails;Lcom/viber/voip/contacts/c/v;)V

    .line 464
    return-void
.end method
