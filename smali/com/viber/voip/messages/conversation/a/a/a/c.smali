.class Lcom/viber/voip/messages/conversation/a/a/a/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/widget/z;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/conversation/a/a/a/b;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/conversation/a/a/a/b;)V
    .locals 0
    .parameter

    .prologue
    .line 290
    iput-object p1, p0, Lcom/viber/voip/messages/conversation/a/a/a/c;->a:Lcom/viber/voip/messages/conversation/a/a/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 293
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/c;->a:Lcom/viber/voip/messages/conversation/a/a/a/b;

    invoke-static {v0}, Lcom/viber/voip/messages/conversation/a/a/a/b;->a(Lcom/viber/voip/messages/conversation/a/a/a/b;)Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->D()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/a/a/a/c;->a:Lcom/viber/voip/messages/conversation/a/a/a/b;

    invoke-static {v1}, Lcom/viber/voip/messages/conversation/a/a/a/b;->a(Lcom/viber/voip/messages/conversation/a/a/a/b;)Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->h()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, p2, v2}, Lcom/viber/voip/util/at;->a(Landroid/content/Context;Landroid/os/IBinder;IILjava/lang/Runnable;)Landroid/content/DialogInterface;

    .line 294
    return-void
.end method
