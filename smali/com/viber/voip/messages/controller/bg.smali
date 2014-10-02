.class Lcom/viber/voip/messages/controller/bg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/messages/controller/bx;


# instance fields
.field final synthetic a:J

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/viber/voip/messages/controller/ak;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/controller/ak;JLjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 349
    iput-object p1, p0, Lcom/viber/voip/messages/controller/bg;->c:Lcom/viber/voip/messages/controller/ak;

    iput-wide p2, p0, Lcom/viber/voip/messages/controller/bg;->a:J

    iput-object p4, p0, Lcom/viber/voip/messages/controller/bg;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/viber/voip/messages/controller/x;)V
    .locals 3
    .parameter

    .prologue
    .line 352
    iget-wide v0, p0, Lcom/viber/voip/messages/controller/bg;->a:J

    iget-object v2, p0, Lcom/viber/voip/messages/controller/bg;->b:Ljava/lang/String;

    invoke-interface {p1, v0, v1, v2}, Lcom/viber/voip/messages/controller/x;->b(JLjava/lang/String;)V

    .line 353
    return-void
.end method
