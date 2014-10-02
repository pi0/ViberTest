.class Lcom/viber/voip/messages/conversation/publicgroup/bg;
.super Lcom/viber/voip/messages/controller/aj;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/conversation/publicgroup/bf;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/conversation/publicgroup/bf;)V
    .locals 0
    .parameter

    .prologue
    .line 396
    iput-object p1, p0, Lcom/viber/voip/messages/conversation/publicgroup/bg;->a:Lcom/viber/voip/messages/conversation/publicgroup/bf;

    invoke-direct {p0}, Lcom/viber/voip/messages/controller/aj;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/ArrayList;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/viber/jni/PublicGroupInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 399
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/bg;->a:Lcom/viber/voip/messages/conversation/publicgroup/bf;

    new-instance v1, Lcom/viber/voip/messages/conversation/publicgroup/bh;

    invoke-direct {v1, p0, p1}, Lcom/viber/voip/messages/conversation/publicgroup/bh;-><init>(Lcom/viber/voip/messages/conversation/publicgroup/bg;Ljava/util/ArrayList;)V

    invoke-static {v0, v1}, Lcom/viber/voip/messages/conversation/publicgroup/bf;->a(Lcom/viber/voip/messages/conversation/publicgroup/bf;Ljava/lang/Runnable;)V

    .line 405
    return-void
.end method
