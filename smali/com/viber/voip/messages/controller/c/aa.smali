.class Lcom/viber/voip/messages/controller/c/aa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/controller/c/ak;

.field final synthetic b:Lcom/viber/voip/messages/controller/da;

.field final synthetic c:Lcom/viber/voip/messages/controller/c/e;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/controller/c/e;Lcom/viber/voip/messages/controller/c/ak;Lcom/viber/voip/messages/controller/da;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 504
    iput-object p1, p0, Lcom/viber/voip/messages/controller/c/aa;->c:Lcom/viber/voip/messages/controller/c/e;

    iput-object p2, p0, Lcom/viber/voip/messages/controller/c/aa;->a:Lcom/viber/voip/messages/controller/c/ak;

    iput-object p3, p0, Lcom/viber/voip/messages/controller/c/aa;->b:Lcom/viber/voip/messages/controller/da;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 508
    iget-object v0, p0, Lcom/viber/voip/messages/controller/c/aa;->a:Lcom/viber/voip/messages/controller/c/ak;

    iget-object v1, p0, Lcom/viber/voip/messages/controller/c/aa;->b:Lcom/viber/voip/messages/controller/da;

    invoke-interface {v0, v1}, Lcom/viber/voip/messages/controller/c/ak;->a(Lcom/viber/voip/messages/controller/da;)V

    .line 509
    return-void
.end method
