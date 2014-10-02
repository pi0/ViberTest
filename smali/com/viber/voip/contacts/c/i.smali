.class Lcom/viber/voip/contacts/c/i;
.super Lcom/viber/voip/contacts/c/r;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/viber/voip/contacts/c/h;


# direct methods
.method constructor <init>(Lcom/viber/voip/contacts/c/h;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 430
    iput-object p1, p0, Lcom/viber/voip/contacts/c/i;->b:Lcom/viber/voip/contacts/c/h;

    iput-object p2, p0, Lcom/viber/voip/contacts/c/i;->a:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/viber/voip/contacts/c/r;-><init>(Lcom/viber/voip/contacts/c/b;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 433
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

    .line 434
    iget-object v0, p0, Lcom/viber/voip/contacts/c/i;->a:Ljava/lang/String;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/user/UserData;->setImage(Ljava/lang/String;Landroid/net/Uri;)V

    .line 436
    return-void
.end method
