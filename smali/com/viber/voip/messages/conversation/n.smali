.class Lcom/viber/voip/messages/conversation/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/controller/c/ao;

.field final synthetic b:Ljava/util/ArrayList;

.field final synthetic c:Lcom/viber/voip/messages/conversation/m;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/conversation/m;Lcom/viber/voip/messages/controller/c/ao;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 146
    iput-object p1, p0, Lcom/viber/voip/messages/conversation/n;->c:Lcom/viber/voip/messages/conversation/m;

    iput-object p2, p0, Lcom/viber/voip/messages/conversation/n;->a:Lcom/viber/voip/messages/controller/c/ao;

    iput-object p3, p0, Lcom/viber/voip/messages/conversation/n;->b:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 150
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/n;->a:Lcom/viber/voip/messages/controller/c/ao;

    invoke-virtual {v0}, Lcom/viber/voip/messages/controller/c/ao;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/conversation/n;->a:Lcom/viber/voip/messages/controller/c/ao;

    invoke-virtual {v0}, Lcom/viber/voip/messages/controller/c/ao;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/n;->c:Lcom/viber/voip/messages/conversation/m;

    iget-object v1, v1, Lcom/viber/voip/messages/conversation/m;->a:Lcom/viber/voip/messages/conversation/i;

    iget-object v1, v1, Lcom/viber/voip/messages/conversation/i;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/n;->c:Lcom/viber/voip/messages/conversation/m;

    iget-object v0, v0, Lcom/viber/voip/messages/conversation/m;->a:Lcom/viber/voip/messages/conversation/i;

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/n;->b:Ljava/util/ArrayList;

    iput-object v1, v0, Lcom/viber/voip/messages/conversation/i;->l:Ljava/util/ArrayList;

    .line 152
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/n;->c:Lcom/viber/voip/messages/conversation/m;

    iget-object v0, v0, Lcom/viber/voip/messages/conversation/m;->a:Lcom/viber/voip/messages/conversation/i;

    invoke-static {v0}, Lcom/viber/voip/messages/conversation/i;->c(Lcom/viber/voip/messages/conversation/i;)Lcom/viber/provider/e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/n;->c:Lcom/viber/voip/messages/conversation/m;

    iget-object v0, v0, Lcom/viber/voip/messages/conversation/m;->a:Lcom/viber/voip/messages/conversation/i;

    invoke-static {v0}, Lcom/viber/voip/messages/conversation/i;->d(Lcom/viber/voip/messages/conversation/i;)Lcom/viber/provider/e;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/n;->c:Lcom/viber/voip/messages/conversation/m;

    iget-object v1, v1, Lcom/viber/voip/messages/conversation/m;->a:Lcom/viber/voip/messages/conversation/i;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/viber/provider/e;->a(Lcom/viber/provider/b;Z)V

    .line 156
    :cond_0
    return-void
.end method
