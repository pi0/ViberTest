.class Lcom/viber/voip/messages/controller/c/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/messages/controller/c/al;


# instance fields
.field final synthetic a:J

.field final synthetic b:I

.field final synthetic c:Lcom/viber/voip/messages/controller/c/e;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/controller/c/e;JI)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 320
    iput-object p1, p0, Lcom/viber/voip/messages/controller/c/l;->c:Lcom/viber/voip/messages/controller/c/e;

    iput-wide p2, p0, Lcom/viber/voip/messages/controller/c/l;->a:J

    iput p4, p0, Lcom/viber/voip/messages/controller/c/l;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/viber/voip/messages/controller/dc;)V
    .locals 3
    .parameter

    .prologue
    .line 324
    instance-of v0, p1, Lcom/viber/voip/messages/controller/dj;

    if-eqz v0, :cond_0

    .line 325
    check-cast p1, Lcom/viber/voip/messages/controller/dj;

    iget-wide v0, p0, Lcom/viber/voip/messages/controller/c/l;->a:J

    iget v2, p0, Lcom/viber/voip/messages/controller/c/l;->b:I

    invoke-interface {p1, v0, v1, v2}, Lcom/viber/voip/messages/controller/dj;->a(JI)V

    .line 327
    :cond_0
    return-void
.end method
