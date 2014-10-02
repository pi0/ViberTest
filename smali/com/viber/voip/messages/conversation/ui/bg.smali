.class Lcom/viber/voip/messages/conversation/ui/bg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/conversation/ui/bf;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/conversation/ui/bf;)V
    .locals 0
    .parameter

    .prologue
    .line 218
    iput-object p1, p0, Lcom/viber/voip/messages/conversation/ui/bg;->a:Lcom/viber/voip/messages/conversation/ui/bf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/bg;->a:Lcom/viber/voip/messages/conversation/ui/bf;

    iget-object v0, v0, Lcom/viber/voip/messages/conversation/ui/bf;->a:Lcom/viber/voip/messages/conversation/ui/ba;

    iget-object v0, v0, Lcom/viber/voip/messages/conversation/ui/ba;->m:Lcom/viber/voip/messages/conversation/ui/bu;

    invoke-interface {v0}, Lcom/viber/voip/messages/conversation/ui/bu;->o()V

    .line 223
    return-void
.end method
