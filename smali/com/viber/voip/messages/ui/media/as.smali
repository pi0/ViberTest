.class Lcom/viber/voip/messages/ui/media/as;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/messages/extras/fb/af;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/ui/media/ViewMediaActivity;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/ui/media/ViewMediaActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 519
    iput-object p1, p0, Lcom/viber/voip/messages/ui/media/as;->a:Lcom/viber/voip/messages/ui/media/ViewMediaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 522
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/as;->a:Lcom/viber/voip/messages/ui/media/ViewMediaActivity;

    new-instance v1, Lcom/viber/voip/messages/ui/media/at;

    invoke-direct {v1, p0}, Lcom/viber/voip/messages/ui/media/at;-><init>(Lcom/viber/voip/messages/ui/media/as;)V

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 528
    return-void
.end method

.method public a(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Throwable;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 536
    return-void
.end method

.method public b(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 532
    return-void
.end method
