.class Lcom/viber/voip/ui/r;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/viber/voip/ui/q;


# direct methods
.method constructor <init>(Lcom/viber/voip/ui/q;)V
    .locals 0
    .parameter

    .prologue
    .line 25
    iput-object p1, p0, Lcom/viber/voip/ui/r;->a:Lcom/viber/voip/ui/q;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/viber/voip/ui/r;->a:Lcom/viber/voip/ui/q;

    invoke-static {}, Lcom/viber/voip/stickers/e/c;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/ui/q;->onNewStickerPackageCountChanged(I)V

    .line 29
    return-void
.end method
