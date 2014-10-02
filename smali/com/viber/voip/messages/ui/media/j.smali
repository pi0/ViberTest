.class Lcom/viber/voip/messages/ui/media/j;
.super Lcom/viber/voip/messages/extras/map/l;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:Lcom/viber/voip/messages/ui/media/GoogleApiMapPreviewActivityV2;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/ui/media/GoogleApiMapPreviewActivityV2;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 83
    iput-object p1, p0, Lcom/viber/voip/messages/ui/media/j;->b:Lcom/viber/voip/messages/ui/media/GoogleApiMapPreviewActivityV2;

    iput-object p2, p0, Lcom/viber/voip/messages/ui/media/j;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/viber/voip/messages/extras/map/l;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 86
    invoke-super {p0, p1}, Lcom/viber/voip/messages/extras/map/l;->onActivityCreated(Landroid/os/Bundle;)V

    .line 87
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/j;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 88
    return-void
.end method
