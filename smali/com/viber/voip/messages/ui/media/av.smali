.class Lcom/viber/voip/messages/ui/media/av;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/messages/extras/twitter/z;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/ui/media/au;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/ui/media/au;)V
    .locals 0
    .parameter

    .prologue
    .line 576
    iput-object p1, p0, Lcom/viber/voip/messages/ui/media/av;->a:Lcom/viber/voip/messages/ui/media/au;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 579
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/av;->a:Lcom/viber/voip/messages/ui/media/au;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/media/au;->b:Lcom/viber/voip/messages/ui/media/ViewMediaActivity;

    new-instance v1, Lcom/viber/voip/messages/ui/media/aw;

    invoke-direct {v1, p0}, Lcom/viber/voip/messages/ui/media/aw;-><init>(Lcom/viber/voip/messages/ui/media/av;)V

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 585
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 593
    return-void
.end method

.method public b()V
    .locals 0

    .prologue
    .line 589
    return-void
.end method
