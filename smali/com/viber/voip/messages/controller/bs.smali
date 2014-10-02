.class Lcom/viber/voip/messages/controller/bs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/messages/controller/bx;


# instance fields
.field final synthetic a:J

.field final synthetic b:J

.field final synthetic c:J

.field final synthetic d:Lcom/viber/voip/messages/controller/ak;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/controller/ak;JJJ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 74
    iput-object p1, p0, Lcom/viber/voip/messages/controller/bs;->d:Lcom/viber/voip/messages/controller/ak;

    iput-wide p2, p0, Lcom/viber/voip/messages/controller/bs;->a:J

    iput-wide p4, p0, Lcom/viber/voip/messages/controller/bs;->b:J

    iput-wide p6, p0, Lcom/viber/voip/messages/controller/bs;->c:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/viber/voip/messages/controller/x;)V
    .locals 7
    .parameter

    .prologue
    .line 78
    iget-wide v1, p0, Lcom/viber/voip/messages/controller/bs;->a:J

    iget-wide v3, p0, Lcom/viber/voip/messages/controller/bs;->b:J

    iget-wide v5, p0, Lcom/viber/voip/messages/controller/bs;->c:J

    move-object v0, p1

    invoke-interface/range {v0 .. v6}, Lcom/viber/voip/messages/controller/x;->a(JJJ)V

    .line 79
    return-void
.end method
