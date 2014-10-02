.class Lcom/viber/voip/messages/conversation/publicgroup/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/messages/extras/a/c;


# instance fields
.field final synthetic a:Landroid/os/Bundle;

.field final synthetic b:Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;Landroid/os/Bundle;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 313
    iput-object p1, p0, Lcom/viber/voip/messages/conversation/publicgroup/q;->b:Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;

    iput-object p2, p0, Lcom/viber/voip/messages/conversation/publicgroup/q;->a:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/location/Address;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 316
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/q;->b:Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;

    new-instance v1, Lcom/viber/voip/messages/conversation/publicgroup/r;

    invoke-direct {v1, p0, p1, p2}, Lcom/viber/voip/messages/conversation/publicgroup/r;-><init>(Lcom/viber/voip/messages/conversation/publicgroup/q;Landroid/location/Address;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 342
    return-void
.end method
