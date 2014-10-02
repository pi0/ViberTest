.class final Lcom/viber/voip/util/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/util/hj;


# instance fields
.field final synthetic a:J

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:I

.field final synthetic d:I

.field final synthetic e:I

.field final synthetic f:J

.field final synthetic g:J

.field final synthetic h:I

.field final synthetic i:Lcom/viber/voip/calls/w;


# direct methods
.method constructor <init>(JLjava/lang/String;IIIJJILcom/viber/voip/calls/w;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 71
    iput-wide p1, p0, Lcom/viber/voip/util/s;->a:J

    iput-object p3, p0, Lcom/viber/voip/util/s;->b:Ljava/lang/String;

    iput p4, p0, Lcom/viber/voip/util/s;->c:I

    iput p5, p0, Lcom/viber/voip/util/s;->d:I

    iput p6, p0, Lcom/viber/voip/util/s;->e:I

    iput-wide p7, p0, Lcom/viber/voip/util/s;->f:J

    iput-wide p9, p0, Lcom/viber/voip/util/s;->g:J

    iput p11, p0, Lcom/viber/voip/util/s;->h:I

    iput-object p12, p0, Lcom/viber/voip/util/s;->i:Lcom/viber/voip/calls/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ZILjava/lang/String;)V
    .locals 15
    .parameter
    .parameter
    .parameter

    .prologue
    .line 77
    if-nez p2, :cond_0

    const/4 v5, 0x1

    .line 78
    :goto_0
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getRecentCallsManager()Lcom/viber/voip/calls/u;

    move-result-object v0

    iget-wide v1, p0, Lcom/viber/voip/util/s;->a:J

    iget-object v3, p0, Lcom/viber/voip/util/s;->b:Ljava/lang/String;

    iget v4, p0, Lcom/viber/voip/util/s;->c:I

    const/4 v6, 0x1

    iget v7, p0, Lcom/viber/voip/util/s;->d:I

    iget v8, p0, Lcom/viber/voip/util/s;->e:I

    iget-wide v9, p0, Lcom/viber/voip/util/s;->f:J

    iget-wide v11, p0, Lcom/viber/voip/util/s;->g:J

    iget v13, p0, Lcom/viber/voip/util/s;->h:I

    iget-object v14, p0, Lcom/viber/voip/util/s;->i:Lcom/viber/voip/calls/w;

    invoke-interface/range {v0 .. v14}, Lcom/viber/voip/calls/u;->a(JLjava/lang/String;IZIIIJJILcom/viber/voip/calls/w;)V

    .line 80
    return-void

    .line 77
    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method
