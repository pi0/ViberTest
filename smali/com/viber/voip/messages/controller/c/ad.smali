.class Lcom/viber/voip/messages/controller/c/ad;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/messages/controller/c/am;


# instance fields
.field final synthetic a:J

.field final synthetic b:J

.field final synthetic c:Z

.field final synthetic d:Lcom/viber/voip/messages/controller/c/e;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/controller/c/e;JJZ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 176
    iput-object p1, p0, Lcom/viber/voip/messages/controller/c/ad;->d:Lcom/viber/voip/messages/controller/c/e;

    iput-wide p2, p0, Lcom/viber/voip/messages/controller/c/ad;->a:J

    iput-wide p4, p0, Lcom/viber/voip/messages/controller/c/ad;->b:J

    iput-boolean p6, p0, Lcom/viber/voip/messages/controller/c/ad;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/viber/voip/messages/controller/de;)V
    .locals 6
    .parameter

    .prologue
    .line 180
    iget-wide v1, p0, Lcom/viber/voip/messages/controller/c/ad;->a:J

    iget-wide v3, p0, Lcom/viber/voip/messages/controller/c/ad;->b:J

    iget-boolean v5, p0, Lcom/viber/voip/messages/controller/c/ad;->c:Z

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Lcom/viber/voip/messages/controller/de;->a(JJZ)V

    .line 181
    return-void
.end method
