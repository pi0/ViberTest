.class Lcom/viber/voip/messages/ui/media/ak;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/ui/media/ai;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/ui/media/ai;)V
    .locals 0
    .parameter

    .prologue
    .line 275
    iput-object p1, p0, Lcom/viber/voip/messages/ui/media/ak;->a:Lcom/viber/voip/messages/ui/media/ai;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 278
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ak;->a:Lcom/viber/voip/messages/ui/media/ai;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/ak;->a:Lcom/viber/voip/messages/ui/media/ai;

    invoke-static {v1}, Lcom/viber/voip/messages/ui/media/ai;->b(Lcom/viber/voip/messages/ui/media/ai;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/ui/media/ai;->a(Landroid/net/Uri;)V

    .line 280
    return-void
.end method
