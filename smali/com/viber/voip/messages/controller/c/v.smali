.class Lcom/viber/voip/messages/controller/c/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/messages/controller/c/al;


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lcom/viber/voip/messages/controller/c/e;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/controller/c/e;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 430
    iput-object p1, p0, Lcom/viber/voip/messages/controller/c/v;->c:Lcom/viber/voip/messages/controller/c/e;

    iput p2, p0, Lcom/viber/voip/messages/controller/c/v;->a:I

    iput p3, p0, Lcom/viber/voip/messages/controller/c/v;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/viber/voip/messages/controller/dc;)V
    .locals 2
    .parameter

    .prologue
    .line 434
    instance-of v0, p1, Lcom/viber/voip/messages/controller/dj;

    if-eqz v0, :cond_0

    .line 435
    check-cast p1, Lcom/viber/voip/messages/controller/dj;

    iget v0, p0, Lcom/viber/voip/messages/controller/c/v;->a:I

    iget v1, p0, Lcom/viber/voip/messages/controller/c/v;->b:I

    invoke-interface {p1, v0, v1}, Lcom/viber/voip/messages/controller/dj;->c(II)V

    .line 437
    :cond_0
    return-void
.end method
