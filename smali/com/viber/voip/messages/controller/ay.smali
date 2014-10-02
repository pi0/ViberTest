.class Lcom/viber/voip/messages/controller/ay;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/messages/controller/bx;


# instance fields
.field final synthetic a:J

.field final synthetic b:Z

.field final synthetic c:Lcom/viber/voip/messages/controller/ak;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/controller/ak;JZ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 269
    iput-object p1, p0, Lcom/viber/voip/messages/controller/ay;->c:Lcom/viber/voip/messages/controller/ak;

    iput-wide p2, p0, Lcom/viber/voip/messages/controller/ay;->a:J

    iput-boolean p4, p0, Lcom/viber/voip/messages/controller/ay;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/viber/voip/messages/controller/x;)V
    .locals 3
    .parameter

    .prologue
    .line 272
    iget-wide v0, p0, Lcom/viber/voip/messages/controller/ay;->a:J

    iget-boolean v2, p0, Lcom/viber/voip/messages/controller/ay;->b:Z

    invoke-interface {p1, v0, v1, v2}, Lcom/viber/voip/messages/controller/x;->a(JZ)V

    .line 273
    return-void
.end method
