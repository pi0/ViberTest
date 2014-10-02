.class Lcom/viber/voip/messages/controller/bh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/messages/controller/bx;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/controller/c/ao;

.field final synthetic b:Lcom/viber/voip/messages/controller/ah;

.field final synthetic c:Lcom/viber/voip/messages/controller/ak;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/controller/ak;Lcom/viber/voip/messages/controller/c/ao;Lcom/viber/voip/messages/controller/ah;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 359
    iput-object p1, p0, Lcom/viber/voip/messages/controller/bh;->c:Lcom/viber/voip/messages/controller/ak;

    iput-object p2, p0, Lcom/viber/voip/messages/controller/bh;->a:Lcom/viber/voip/messages/controller/c/ao;

    iput-object p3, p0, Lcom/viber/voip/messages/controller/bh;->b:Lcom/viber/voip/messages/controller/ah;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/viber/voip/messages/controller/x;)V
    .locals 2
    .parameter

    .prologue
    .line 362
    iget-object v0, p0, Lcom/viber/voip/messages/controller/bh;->a:Lcom/viber/voip/messages/controller/c/ao;

    iget-object v1, p0, Lcom/viber/voip/messages/controller/bh;->b:Lcom/viber/voip/messages/controller/ah;

    invoke-interface {p1, v0, v1}, Lcom/viber/voip/messages/controller/x;->a(Lcom/viber/voip/messages/controller/c/ao;Lcom/viber/voip/messages/controller/ah;)V

    .line 363
    return-void
.end method
