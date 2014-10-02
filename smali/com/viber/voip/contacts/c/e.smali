.class final Lcom/viber/voip/contacts/c/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/util/upload/b;


# instance fields
.field final synthetic a:Lcom/viber/voip/contacts/c/r;


# direct methods
.method constructor <init>(Lcom/viber/voip/contacts/c/r;)V
    .locals 0
    .parameter

    .prologue
    .line 233
    iput-object p1, p0, Lcom/viber/voip/contacts/c/e;->a:Lcom/viber/voip/contacts/c/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/net/Uri;)V
    .locals 2
    .parameter

    .prologue
    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onDownloadComplete path = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/contacts/c/a;->c(Ljava/lang/String;)V

    .line 237
    iget-object v0, p0, Lcom/viber/voip/contacts/c/e;->a:Lcom/viber/voip/contacts/c/r;

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/viber/voip/contacts/c/e;->a:Lcom/viber/voip/contacts/c/r;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/contacts/c/r;->a(Ljava/lang/String;)V

    .line 240
    :cond_0
    return-void
.end method

.method public a(Landroid/net/Uri;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onFail errorCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/contacts/c/a;->c(Ljava/lang/String;)V

    .line 245
    iget-object v0, p0, Lcom/viber/voip/contacts/c/e;->a:Lcom/viber/voip/contacts/c/r;

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/viber/voip/contacts/c/e;->a:Lcom/viber/voip/contacts/c/r;

    invoke-virtual {v0}, Lcom/viber/voip/contacts/c/r;->a()V

    .line 247
    :cond_0
    return-void
.end method
