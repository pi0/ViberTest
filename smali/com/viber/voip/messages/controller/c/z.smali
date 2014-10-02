.class Lcom/viber/voip/messages/controller/c/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/controller/c/al;

.field final synthetic b:Lcom/viber/voip/messages/controller/dc;

.field final synthetic c:Lcom/viber/voip/messages/controller/c/e;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/controller/c/e;Lcom/viber/voip/messages/controller/c/al;Lcom/viber/voip/messages/controller/dc;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 488
    iput-object p1, p0, Lcom/viber/voip/messages/controller/c/z;->c:Lcom/viber/voip/messages/controller/c/e;

    iput-object p2, p0, Lcom/viber/voip/messages/controller/c/z;->a:Lcom/viber/voip/messages/controller/c/al;

    iput-object p3, p0, Lcom/viber/voip/messages/controller/c/z;->b:Lcom/viber/voip/messages/controller/dc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 492
    iget-object v0, p0, Lcom/viber/voip/messages/controller/c/z;->a:Lcom/viber/voip/messages/controller/c/al;

    iget-object v1, p0, Lcom/viber/voip/messages/controller/c/z;->b:Lcom/viber/voip/messages/controller/dc;

    invoke-interface {v0, v1}, Lcom/viber/voip/messages/controller/c/al;->a(Lcom/viber/voip/messages/controller/dc;)V

    .line 493
    return-void
.end method
