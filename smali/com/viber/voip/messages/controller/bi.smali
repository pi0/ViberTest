.class Lcom/viber/voip/messages/controller/bi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/messages/controller/bx;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/controller/aj;

.field final synthetic b:Lcom/viber/voip/messages/controller/ak;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/controller/ak;Lcom/viber/voip/messages/controller/aj;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 369
    iput-object p1, p0, Lcom/viber/voip/messages/controller/bi;->b:Lcom/viber/voip/messages/controller/ak;

    iput-object p2, p0, Lcom/viber/voip/messages/controller/bi;->a:Lcom/viber/voip/messages/controller/aj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/viber/voip/messages/controller/x;)V
    .locals 1
    .parameter

    .prologue
    .line 372
    iget-object v0, p0, Lcom/viber/voip/messages/controller/bi;->a:Lcom/viber/voip/messages/controller/aj;

    invoke-interface {p1, v0}, Lcom/viber/voip/messages/controller/x;->a(Lcom/viber/voip/messages/controller/aj;)V

    .line 373
    return-void
.end method
