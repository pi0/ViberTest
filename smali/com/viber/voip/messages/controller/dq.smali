.class Lcom/viber/voip/messages/controller/dq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/controller/du;

.field final synthetic b:Lcom/viber/voip/messages/controller/dp;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/controller/dp;Lcom/viber/voip/messages/controller/du;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 28
    iput-object p1, p0, Lcom/viber/voip/messages/controller/dq;->b:Lcom/viber/voip/messages/controller/dp;

    iput-object p2, p0, Lcom/viber/voip/messages/controller/dq;->a:Lcom/viber/voip/messages/controller/du;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/viber/voip/messages/controller/dq;->a:Lcom/viber/voip/messages/controller/du;

    iget-object v1, p0, Lcom/viber/voip/messages/controller/dq;->b:Lcom/viber/voip/messages/controller/dp;

    invoke-static {v1}, Lcom/viber/voip/messages/controller/dp;->a(Lcom/viber/voip/messages/controller/dp;)Lcom/viber/voip/messages/controller/dn;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/viber/voip/messages/controller/du;->a(Lcom/viber/voip/messages/controller/dn;)V

    .line 33
    return-void
.end method
