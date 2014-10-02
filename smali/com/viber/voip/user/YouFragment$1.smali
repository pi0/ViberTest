.class Lcom/viber/voip/user/YouFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/messages/controller/dh;


# instance fields
.field final synthetic this$0:Lcom/viber/voip/user/YouFragment;


# direct methods
.method constructor <init>(Lcom/viber/voip/user/YouFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 217
    iput-object p1, p0, Lcom/viber/voip/user/YouFragment$1;->this$0:Lcom/viber/voip/user/YouFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Ljava/util/Set;Z)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 224
    return-void
.end method

.method public onChangeOwner()V
    .locals 2

    .prologue
    .line 232
    sget-object v0, Lcom/viber/voip/dk;->a:Lcom/viber/voip/dk;

    invoke-static {v0}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/user/YouFragment$1$1;

    invoke-direct {v1, p0}, Lcom/viber/voip/user/YouFragment$1$1;-><init>(Lcom/viber/voip/user/YouFragment$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 240
    return-void
.end method

.method public onInitCache()V
    .locals 0

    .prologue
    .line 228
    return-void
.end method

.method public onNewInfo(Ljava/util/Set;Z)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 220
    return-void
.end method
