.class final Lcom/viber/voip/stickers/e/e;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 85
    const-string/jumbo v0, "onOpenStickerMarket broadcast"

    invoke-static {v0}, Lcom/viber/voip/stickers/e/c;->a(Ljava/lang/String;)V

    .line 86
    invoke-static {}, Lcom/viber/voip/stickers/e/c;->b()I

    move-result v0

    invoke-static {v0}, Lcom/viber/voip/stickers/e/c;->b(I)V

    .line 87
    invoke-static {}, Lcom/viber/voip/stickers/e/c;->c()V

    .line 88
    return-void
.end method
