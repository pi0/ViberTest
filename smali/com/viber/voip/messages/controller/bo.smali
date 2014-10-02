.class Lcom/viber/voip/messages/controller/bo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/messages/controller/bx;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/viber/voip/messages/controller/ai;

.field final synthetic c:Lcom/viber/voip/messages/controller/ak;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/controller/ak;Ljava/lang/String;Lcom/viber/voip/messages/controller/ai;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 429
    iput-object p1, p0, Lcom/viber/voip/messages/controller/bo;->c:Lcom/viber/voip/messages/controller/ak;

    iput-object p2, p0, Lcom/viber/voip/messages/controller/bo;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/viber/voip/messages/controller/bo;->b:Lcom/viber/voip/messages/controller/ai;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/viber/voip/messages/controller/x;)V
    .locals 2
    .parameter

    .prologue
    .line 432
    iget-object v0, p0, Lcom/viber/voip/messages/controller/bo;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/viber/voip/messages/controller/bo;->b:Lcom/viber/voip/messages/controller/ai;

    invoke-interface {p1, v0, v1}, Lcom/viber/voip/messages/controller/x;->a(Ljava/lang/String;Lcom/viber/voip/messages/controller/ai;)V

    .line 433
    return-void
.end method
