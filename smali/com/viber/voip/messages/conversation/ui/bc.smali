.class Lcom/viber/voip/messages/conversation/ui/bc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/k/h;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/conversation/ui/ba;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/conversation/ui/ba;)V
    .locals 0
    .parameter

    .prologue
    .line 627
    iput-object p1, p0, Lcom/viber/voip/messages/conversation/ui/bc;->a:Lcom/viber/voip/messages/conversation/ui/ba;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/zoobe/sdk/helper/ZoobeResult;)V
    .locals 1
    .parameter

    .prologue
    .line 630
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/bc;->a:Lcom/viber/voip/messages/conversation/ui/ba;

    iget-object v0, v0, Lcom/viber/voip/messages/conversation/ui/ba;->h:Lcom/viber/voip/messages/ui/MessageComposerView;

    invoke-virtual {v0, p1}, Lcom/viber/voip/messages/ui/MessageComposerView;->a(Lcom/zoobe/sdk/helper/ZoobeResult;)V

    .line 631
    return-void
.end method
