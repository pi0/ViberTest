.class Lcom/viber/voip/messages/controller/bn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/messages/controller/bx;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/controller/ac;

.field final synthetic b:Lcom/viber/voip/messages/controller/ak;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/controller/ak;Lcom/viber/voip/messages/controller/ac;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 419
    iput-object p1, p0, Lcom/viber/voip/messages/controller/bn;->b:Lcom/viber/voip/messages/controller/ak;

    iput-object p2, p0, Lcom/viber/voip/messages/controller/bn;->a:Lcom/viber/voip/messages/controller/ac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/viber/voip/messages/controller/x;)V
    .locals 1
    .parameter

    .prologue
    .line 422
    iget-object v0, p0, Lcom/viber/voip/messages/controller/bn;->a:Lcom/viber/voip/messages/controller/ac;

    invoke-interface {p1, v0}, Lcom/viber/voip/messages/controller/x;->a(Lcom/viber/voip/messages/controller/ac;)V

    .line 423
    return-void
.end method
