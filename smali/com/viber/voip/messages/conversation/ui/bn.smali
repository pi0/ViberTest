.class Lcom/viber/voip/messages/conversation/ui/bn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/conversation/ui/bj;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/conversation/ui/bj;)V
    .locals 0
    .parameter

    .prologue
    .line 307
    iput-object p1, p0, Lcom/viber/voip/messages/conversation/ui/bn;->a:Lcom/viber/voip/messages/conversation/ui/bj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/bn;->a:Lcom/viber/voip/messages/conversation/ui/bj;

    iget-object v0, v0, Lcom/viber/voip/messages/conversation/ui/bj;->a:Lcom/viber/voip/messages/ui/ad;

    invoke-interface {v0}, Lcom/viber/voip/messages/ui/ad;->f()V

    .line 312
    return-void
.end method
