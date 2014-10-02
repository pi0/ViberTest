.class Lcom/viber/voip/messages/conversation/publicgroup/ay;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/conversation/publicgroup/ax;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/conversation/publicgroup/ax;)V
    .locals 0
    .parameter

    .prologue
    .line 241
    iput-object p1, p0, Lcom/viber/voip/messages/conversation/publicgroup/ay;->a:Lcom/viber/voip/messages/conversation/publicgroup/ax;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 244
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/ay;->a:Lcom/viber/voip/messages/conversation/publicgroup/ax;

    iget-object v0, v0, Lcom/viber/voip/messages/conversation/publicgroup/ax;->a:Lcom/viber/voip/messages/conversation/publicgroup/ParticipantControlsContainer;

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/ay;->a:Lcom/viber/voip/messages/conversation/publicgroup/ax;

    invoke-static {v1}, Lcom/viber/voip/messages/conversation/publicgroup/ax;->a(Lcom/viber/voip/messages/conversation/publicgroup/ax;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/conversation/publicgroup/ParticipantControlsContainer;->setMinimumWidth(I)V

    .line 245
    return-void
.end method
