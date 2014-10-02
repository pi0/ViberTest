.class Lcom/viber/voip/settings/ui/br;
.super Lcom/viber/voip/messages/extras/twitter/t;
.source "SourceFile"


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/viber/voip/settings/ui/bj;


# direct methods
.method constructor <init>(Lcom/viber/voip/settings/ui/bj;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 188
    iput-object p1, p0, Lcom/viber/voip/settings/ui/br;->b:Lcom/viber/voip/settings/ui/bj;

    iput-boolean p2, p0, Lcom/viber/voip/settings/ui/br;->a:Z

    invoke-direct {p0}, Lcom/viber/voip/messages/extras/twitter/t;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthComplete()V
    .locals 1

    .prologue
    .line 192
    iget-boolean v0, p0, Lcom/viber/voip/settings/ui/br;->a:Z

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/viber/voip/settings/ui/br;->b:Lcom/viber/voip/settings/ui/bj;

    invoke-static {v0}, Lcom/viber/voip/settings/ui/bj;->c(Lcom/viber/voip/settings/ui/bj;)Lcom/viber/voip/messages/extras/twitter/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/messages/extras/twitter/l;->d()V

    .line 195
    :cond_0
    return-void
.end method

.method public onAuthError(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 199
    invoke-super {p0, p1}, Lcom/viber/voip/messages/extras/twitter/t;->onAuthError(Ljava/lang/String;)V

    .line 200
    return-void
.end method
