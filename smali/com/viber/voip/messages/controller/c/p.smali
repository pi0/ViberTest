.class Lcom/viber/voip/messages/controller/c/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/messages/controller/c/al;


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/viber/voip/messages/controller/c/e;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/controller/c/e;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 362
    iput-object p1, p0, Lcom/viber/voip/messages/controller/c/p;->b:Lcom/viber/voip/messages/controller/c/e;

    iput-wide p2, p0, Lcom/viber/voip/messages/controller/c/p;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/viber/voip/messages/controller/dc;)V
    .locals 2
    .parameter

    .prologue
    .line 366
    iget-wide v0, p0, Lcom/viber/voip/messages/controller/c/p;->a:J

    invoke-interface {p1, v0, v1}, Lcom/viber/voip/messages/controller/dc;->b(J)V

    .line 367
    return-void
.end method
