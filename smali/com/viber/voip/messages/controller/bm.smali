.class Lcom/viber/voip/messages/controller/bm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/messages/controller/bx;


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/viber/voip/messages/controller/ak;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/controller/ak;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 409
    iput-object p1, p0, Lcom/viber/voip/messages/controller/bm;->b:Lcom/viber/voip/messages/controller/ak;

    iput-wide p2, p0, Lcom/viber/voip/messages/controller/bm;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/viber/voip/messages/controller/x;)V
    .locals 2
    .parameter

    .prologue
    .line 412
    iget-wide v0, p0, Lcom/viber/voip/messages/controller/bm;->a:J

    invoke-interface {p1, v0, v1}, Lcom/viber/voip/messages/controller/x;->d(J)V

    .line 413
    return-void
.end method
