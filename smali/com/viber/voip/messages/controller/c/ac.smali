.class Lcom/viber/voip/messages/controller/c/ac;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/controller/c/aj;

.field final synthetic b:Lcom/viber/voip/messages/controller/cz;

.field final synthetic c:Lcom/viber/voip/messages/controller/c/e;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/controller/c/e;Lcom/viber/voip/messages/controller/c/aj;Lcom/viber/voip/messages/controller/cz;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 520
    iput-object p1, p0, Lcom/viber/voip/messages/controller/c/ac;->c:Lcom/viber/voip/messages/controller/c/e;

    iput-object p2, p0, Lcom/viber/voip/messages/controller/c/ac;->a:Lcom/viber/voip/messages/controller/c/aj;

    iput-object p3, p0, Lcom/viber/voip/messages/controller/c/ac;->b:Lcom/viber/voip/messages/controller/cz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 524
    iget-object v0, p0, Lcom/viber/voip/messages/controller/c/ac;->a:Lcom/viber/voip/messages/controller/c/aj;

    iget-object v1, p0, Lcom/viber/voip/messages/controller/c/ac;->b:Lcom/viber/voip/messages/controller/cz;

    invoke-interface {v0, v1}, Lcom/viber/voip/messages/controller/c/aj;->a(Lcom/viber/voip/messages/controller/cz;)V

    .line 525
    return-void
.end method
