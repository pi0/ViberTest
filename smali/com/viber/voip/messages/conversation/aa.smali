.class Lcom/viber/voip/messages/conversation/aa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/viber/voip/messages/conversation/z;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/conversation/z;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lcom/viber/voip/messages/conversation/aa;->b:Lcom/viber/voip/messages/conversation/z;

    iput-wide p2, p0, Lcom/viber/voip/messages/conversation/aa;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 84
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/aa;->b:Lcom/viber/voip/messages/conversation/z;

    iget-object v0, v0, Lcom/viber/voip/messages/conversation/z;->a:Lcom/viber/voip/messages/conversation/w;

    invoke-static {v0}, Lcom/viber/voip/messages/conversation/w;->a(Lcom/viber/voip/messages/conversation/w;)Lcom/viber/voip/messages/conversation/ad;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/conversation/aa;->b:Lcom/viber/voip/messages/conversation/z;

    iget-object v0, v0, Lcom/viber/voip/messages/conversation/z;->a:Lcom/viber/voip/messages/conversation/w;

    invoke-static {v0}, Lcom/viber/voip/messages/conversation/w;->a(Lcom/viber/voip/messages/conversation/w;)Lcom/viber/voip/messages/conversation/ad;

    move-result-object v0

    iget-wide v1, p0, Lcom/viber/voip/messages/conversation/aa;->a:J

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/messages/conversation/ad;->a(J)V

    .line 85
    :cond_0
    return-void
.end method
