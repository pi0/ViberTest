.class Lcom/viber/voip/messages/ui/al;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/ui/aj;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/ui/aj;)V
    .locals 0
    .parameter

    .prologue
    .line 118
    iput-object p1, p0, Lcom/viber/voip/messages/ui/al;->a:Lcom/viber/voip/messages/ui/aj;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 121
    iget-object v0, p0, Lcom/viber/voip/messages/ui/al;->a:Lcom/viber/voip/messages/ui/aj;

    invoke-static {}, Lcom/viber/voip/stickers/e/c;->a()I

    move-result v1

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/aj;->a(Lcom/viber/voip/messages/ui/aj;I)V

    .line 122
    return-void
.end method
