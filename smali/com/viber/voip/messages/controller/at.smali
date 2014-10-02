.class Lcom/viber/voip/messages/controller/at;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/messages/controller/bx;


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/viber/voip/messages/controller/ag;

.field final synthetic c:Lcom/viber/voip/messages/controller/ak;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/controller/ak;JLcom/viber/voip/messages/controller/ag;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 216
    iput-object p1, p0, Lcom/viber/voip/messages/controller/at;->c:Lcom/viber/voip/messages/controller/ak;

    iput-wide p2, p0, Lcom/viber/voip/messages/controller/at;->a:J

    iput-object p4, p0, Lcom/viber/voip/messages/controller/at;->b:Lcom/viber/voip/messages/controller/ag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/viber/voip/messages/controller/x;)V
    .locals 3
    .parameter

    .prologue
    .line 220
    iget-wide v0, p0, Lcom/viber/voip/messages/controller/at;->a:J

    iget-object v2, p0, Lcom/viber/voip/messages/controller/at;->b:Lcom/viber/voip/messages/controller/ag;

    invoke-interface {p1, v0, v1, v2}, Lcom/viber/voip/messages/controller/x;->a(JLcom/viber/voip/messages/controller/ag;)V

    .line 221
    return-void
.end method
