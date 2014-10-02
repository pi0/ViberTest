.class Lcom/viber/voip/messages/ui/media/at;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/ui/media/as;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/ui/media/as;)V
    .locals 0
    .parameter

    .prologue
    .line 522
    iput-object p1, p0, Lcom/viber/voip/messages/ui/media/at;->a:Lcom/viber/voip/messages/ui/media/as;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 525
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/at;->a:Lcom/viber/voip/messages/ui/media/as;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/media/as;->a:Lcom/viber/voip/messages/ui/media/ViewMediaActivity;

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->finish()V

    .line 526
    return-void
.end method
