.class Lcom/viber/voip/messages/ui/media/bp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/ui/media/bo;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/ui/media/bo;)V
    .locals 0
    .parameter

    .prologue
    .line 87
    iput-object p1, p0, Lcom/viber/voip/messages/ui/media/bp;->a:Lcom/viber/voip/messages/ui/media/bo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/bp;->a:Lcom/viber/voip/messages/ui/media/bo;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/media/bo;->a:Lcom/viber/voip/messages/ui/media/WebMapPreViewActivity;

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/media/WebMapPreViewActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/bp;->a:Lcom/viber/voip/messages/ui/media/bo;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/media/bo;->a:Lcom/viber/voip/messages/ui/media/WebMapPreViewActivity;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/media/WebMapPreViewActivity;->a(Lcom/viber/voip/messages/ui/media/WebMapPreViewActivity;)Lcom/viber/voip/messages/ui/media/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/media/ab;->a()Lcom/actionbarsherlock/ActionBarSherlock;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/ActionBarSherlock;->setProgressBarIndeterminateVisibility(Z)V

    .line 94
    :cond_0
    return-void
.end method
