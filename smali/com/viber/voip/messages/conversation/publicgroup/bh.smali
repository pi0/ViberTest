.class Lcom/viber/voip/messages/conversation/publicgroup/bh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:Lcom/viber/voip/messages/conversation/publicgroup/bg;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/conversation/publicgroup/bg;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 399
    iput-object p1, p0, Lcom/viber/voip/messages/conversation/publicgroup/bh;->b:Lcom/viber/voip/messages/conversation/publicgroup/bg;

    iput-object p2, p0, Lcom/viber/voip/messages/conversation/publicgroup/bh;->a:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 402
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/bh;->b:Lcom/viber/voip/messages/conversation/publicgroup/bg;

    iget-object v0, v0, Lcom/viber/voip/messages/conversation/publicgroup/bg;->a:Lcom/viber/voip/messages/conversation/publicgroup/bf;

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/bh;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/conversation/publicgroup/bf;->a(Ljava/util/ArrayList;)V

    .line 403
    return-void
.end method
