.class Lcom/viber/voip/messages/controller/c/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/messages/controller/c/al;


# instance fields
.field final synthetic a:I

.field final synthetic b:J

.field final synthetic c:Lcom/viber/voip/messages/controller/c/e;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/controller/c/e;IJ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 418
    iput-object p1, p0, Lcom/viber/voip/messages/controller/c/u;->c:Lcom/viber/voip/messages/controller/c/e;

    iput p2, p0, Lcom/viber/voip/messages/controller/c/u;->a:I

    iput-wide p3, p0, Lcom/viber/voip/messages/controller/c/u;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/viber/voip/messages/controller/dc;)V
    .locals 3
    .parameter

    .prologue
    .line 422
    instance-of v0, p1, Lcom/viber/voip/messages/controller/dj;

    if-eqz v0, :cond_0

    .line 423
    check-cast p1, Lcom/viber/voip/messages/controller/dj;

    iget v0, p0, Lcom/viber/voip/messages/controller/c/u;->a:I

    iget-wide v1, p0, Lcom/viber/voip/messages/controller/c/u;->b:J

    invoke-interface {p1, v0, v1, v2}, Lcom/viber/voip/messages/controller/dj;->a(IJ)V

    .line 425
    :cond_0
    return-void
.end method
