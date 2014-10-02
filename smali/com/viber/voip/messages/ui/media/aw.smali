.class Lcom/viber/voip/messages/ui/media/aw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/ui/media/av;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/ui/media/av;)V
    .locals 0
    .parameter

    .prologue
    .line 579
    iput-object p1, p0, Lcom/viber/voip/messages/ui/media/aw;->a:Lcom/viber/voip/messages/ui/media/av;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 582
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/aw;->a:Lcom/viber/voip/messages/ui/media/av;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/media/av;->a:Lcom/viber/voip/messages/ui/media/au;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/media/au;->b:Lcom/viber/voip/messages/ui/media/ViewMediaActivity;

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->finish()V

    .line 583
    return-void
.end method
