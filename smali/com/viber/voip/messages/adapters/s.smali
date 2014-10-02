.class Lcom/viber/voip/messages/adapters/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/viber/voip/messages/adapters/r;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/adapters/r;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 113
    iput-object p1, p0, Lcom/viber/voip/messages/adapters/s;->b:Lcom/viber/voip/messages/adapters/r;

    iput-object p2, p0, Lcom/viber/voip/messages/adapters/s;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/s;->b:Lcom/viber/voip/messages/adapters/r;

    iget-object v0, v0, Lcom/viber/voip/messages/adapters/r;->f:Lcom/viber/voip/messages/adapters/q;

    iget-object v1, p0, Lcom/viber/voip/messages/adapters/s;->a:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/viber/voip/messages/adapters/q;->a(Lcom/viber/voip/messages/adapters/q;Ljava/util/List;)Ljava/util/List;

    .line 118
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/s;->b:Lcom/viber/voip/messages/adapters/r;

    iget-object v0, v0, Lcom/viber/voip/messages/adapters/r;->f:Lcom/viber/voip/messages/adapters/q;

    invoke-virtual {v0}, Lcom/viber/voip/messages/adapters/q;->notifyDataSetChanged()V

    .line 119
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/s;->b:Lcom/viber/voip/messages/adapters/r;

    iget-object v0, v0, Lcom/viber/voip/messages/adapters/r;->d:Lcom/viber/voip/messages/adapters/u;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/s;->b:Lcom/viber/voip/messages/adapters/r;

    iget-object v0, v0, Lcom/viber/voip/messages/adapters/r;->d:Lcom/viber/voip/messages/adapters/u;

    invoke-interface {v0}, Lcom/viber/voip/messages/adapters/u;->a()V

    .line 121
    :cond_0
    return-void
.end method
