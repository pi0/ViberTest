.class Lcom/viber/voip/messages/controller/aw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/messages/controller/bx;


# instance fields
.field final synthetic a:J

.field final synthetic b:I

.field final synthetic c:Lcom/viber/voip/messages/controller/ak;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/controller/ak;JI)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 238
    iput-object p1, p0, Lcom/viber/voip/messages/controller/aw;->c:Lcom/viber/voip/messages/controller/ak;

    iput-wide p2, p0, Lcom/viber/voip/messages/controller/aw;->a:J

    iput p4, p0, Lcom/viber/voip/messages/controller/aw;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/viber/voip/messages/controller/x;)V
    .locals 3
    .parameter

    .prologue
    .line 241
    iget-wide v0, p0, Lcom/viber/voip/messages/controller/aw;->a:J

    iget v2, p0, Lcom/viber/voip/messages/controller/aw;->b:I

    invoke-interface {p1, v0, v1, v2}, Lcom/viber/voip/messages/controller/x;->b(JI)V

    .line 242
    return-void
.end method
