.class Lcom/viber/voip/messages/controller/be;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/messages/controller/bx;


# instance fields
.field final synthetic a:J

.field final synthetic b:Z

.field final synthetic c:Lcom/viber/voip/messages/controller/ai;

.field final synthetic d:Lcom/viber/voip/messages/controller/ak;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/controller/ak;JZLcom/viber/voip/messages/controller/ai;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 52
    iput-object p1, p0, Lcom/viber/voip/messages/controller/be;->d:Lcom/viber/voip/messages/controller/ak;

    iput-wide p2, p0, Lcom/viber/voip/messages/controller/be;->a:J

    iput-boolean p4, p0, Lcom/viber/voip/messages/controller/be;->b:Z

    iput-object p5, p0, Lcom/viber/voip/messages/controller/be;->c:Lcom/viber/voip/messages/controller/ai;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/viber/voip/messages/controller/x;)V
    .locals 4
    .parameter

    .prologue
    .line 56
    iget-wide v0, p0, Lcom/viber/voip/messages/controller/be;->a:J

    iget-boolean v2, p0, Lcom/viber/voip/messages/controller/be;->b:Z

    iget-object v3, p0, Lcom/viber/voip/messages/controller/be;->c:Lcom/viber/voip/messages/controller/ai;

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/viber/voip/messages/controller/x;->a(JZLcom/viber/voip/messages/controller/ai;)V

    .line 57
    return-void
.end method
