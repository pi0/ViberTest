.class Lcom/viber/voip/messages/controller/c/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/controller/c/an;

.field final synthetic b:Lcom/viber/voip/messages/controller/dg;

.field final synthetic c:Lcom/viber/voip/messages/controller/c/e;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/controller/c/e;Lcom/viber/voip/messages/controller/c/an;Lcom/viber/voip/messages/controller/dg;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 472
    iput-object p1, p0, Lcom/viber/voip/messages/controller/c/y;->c:Lcom/viber/voip/messages/controller/c/e;

    iput-object p2, p0, Lcom/viber/voip/messages/controller/c/y;->a:Lcom/viber/voip/messages/controller/c/an;

    iput-object p3, p0, Lcom/viber/voip/messages/controller/c/y;->b:Lcom/viber/voip/messages/controller/dg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 476
    iget-object v0, p0, Lcom/viber/voip/messages/controller/c/y;->a:Lcom/viber/voip/messages/controller/c/an;

    iget-object v1, p0, Lcom/viber/voip/messages/controller/c/y;->b:Lcom/viber/voip/messages/controller/dg;

    invoke-interface {v0, v1}, Lcom/viber/voip/messages/controller/c/an;->a(Lcom/viber/voip/messages/controller/dg;)V

    .line 477
    return-void
.end method
