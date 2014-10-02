.class Lcom/viber/voip/messages/conversation/ui/af;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/messages/controller/ai;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/conversation/ui/ConversationFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 730
    iput-object p1, p0, Lcom/viber/voip/messages/conversation/ui/af;->a:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 734
    sget-object v0, Lcom/viber/voip/dk;->a:Lcom/viber/voip/dk;

    invoke-static {v0}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/messages/conversation/ui/ag;

    invoke-direct {v1, p0}, Lcom/viber/voip/messages/conversation/ui/ag;-><init>(Lcom/viber/voip/messages/conversation/ui/af;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 741
    return-void
.end method
