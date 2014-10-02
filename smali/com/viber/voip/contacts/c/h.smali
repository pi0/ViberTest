.class final Lcom/viber/voip/contacts/c/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/user/UserDataFileKeeper$RecoverReply;


# instance fields
.field final synthetic a:Lcom/viber/voip/contacts/c/v;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/viber/voip/contacts/c/v;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 412
    iput-object p1, p0, Lcom/viber/voip/contacts/c/h;->a:Lcom/viber/voip/contacts/c/v;

    iput-object p2, p0, Lcom/viber/voip/contacts/c/h;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError()V
    .locals 2

    .prologue
    .line 452
    iget-object v0, p0, Lcom/viber/voip/contacts/c/h;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/viber/voip/contacts/c/h;->a:Lcom/viber/voip/contacts/c/v;

    invoke-static {v0, v1}, Lcom/viber/voip/contacts/c/a;->a(Ljava/lang/String;Lcom/viber/voip/contacts/c/v;)V

    .line 453
    return-void
.end method

.method public onRecoverReply(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 415
    iget-object v0, p0, Lcom/viber/voip/contacts/c/h;->a:Lcom/viber/voip/contacts/c/v;

    .line 416
    iget-object v1, p0, Lcom/viber/voip/contacts/c/h;->b:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 417
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "checkIsUserNeedSetInfo.onRecoverReply name = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", photoUri = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", downloadID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/viber/voip/contacts/c/a;->c(Ljava/lang/String;)V

    .line 418
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p3, :cond_3

    .line 419
    :cond_0
    const-string/jumbo v1, "checkIsUserNeedSetInfo. user has already set info."

    invoke-static {v1}, Lcom/viber/voip/contacts/c/a;->c(Ljava/lang/String;)V

    .line 420
    if-nez p2, :cond_1

    const-string/jumbo p2, ""

    :cond_1
    invoke-static {p2}, Lcom/viber/voip/user/UserData;->setName(Ljava/lang/String;)V

    .line 422
    if-eqz p3, :cond_2

    .line 423
    new-instance v1, Ljava/io/File;

    invoke-virtual {p3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 424
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 425
    const-string/jumbo v1, "checkIsUserNeedSetInfo. save info to the preferences"

    invoke-static {v1}, Lcom/viber/voip/contacts/c/a;->c(Ljava/lang/String;)V

    .line 426
    invoke-static {p4, p3}, Lcom/viber/voip/user/UserData;->setImage(Ljava/lang/String;Landroid/net/Uri;)V

    .line 441
    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    .line 442
    sget-object v1, Lcom/viber/voip/contacts/c/q;->b:Lcom/viber/voip/contacts/c/q;

    invoke-interface {v0, v1}, Lcom/viber/voip/contacts/c/v;->a(Lcom/viber/voip/contacts/c/q;)V

    .line 443
    const/4 v0, 0x0

    .line 447
    :cond_3
    iget-object v1, p0, Lcom/viber/voip/contacts/c/h;->b:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/viber/voip/contacts/c/a;->a(Ljava/lang/String;Lcom/viber/voip/contacts/c/v;)V

    .line 448
    return-void

    .line 428
    :cond_4
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 429
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "checkIsUserNeedSetInfo. download photo with id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " and save info to the preferences"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/viber/voip/contacts/c/a;->c(Ljava/lang/String;)V

    .line 430
    const/4 v1, 0x1

    new-instance v2, Lcom/viber/voip/contacts/c/i;

    invoke-direct {v2, p0, p4}, Lcom/viber/voip/contacts/c/i;-><init>(Lcom/viber/voip/contacts/c/h;Ljava/lang/String;)V

    invoke-static {p4, v1, v2}, Lcom/viber/voip/contacts/c/a;->b(Ljava/lang/String;ZLcom/viber/voip/contacts/c/r;)V

    goto :goto_0
.end method
