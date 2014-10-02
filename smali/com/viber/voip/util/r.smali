.class final Lcom/viber/voip/util/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/util/hj;


# instance fields
.field final synthetic a:J

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:I

.field final synthetic e:I

.field final synthetic f:J

.field final synthetic g:J

.field final synthetic h:Lcom/viber/voip/calls/w;


# direct methods
.method constructor <init>(JIIIIJJLcom/viber/voip/calls/w;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 49
    iput-wide p1, p0, Lcom/viber/voip/util/r;->a:J

    iput p3, p0, Lcom/viber/voip/util/r;->b:I

    iput p4, p0, Lcom/viber/voip/util/r;->c:I

    iput p5, p0, Lcom/viber/voip/util/r;->d:I

    iput p6, p0, Lcom/viber/voip/util/r;->e:I

    iput-wide p7, p0, Lcom/viber/voip/util/r;->f:J

    iput-wide p9, p0, Lcom/viber/voip/util/r;->g:J

    iput-object p11, p0, Lcom/viber/voip/util/r;->h:Lcom/viber/voip/calls/w;

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
    .line 52
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getRecentCallsManager()Lcom/viber/voip/calls/u;

    move-result-object v0

    iget-wide v1, p0, Lcom/viber/voip/util/r;->a:J

    iget v4, p0, Lcom/viber/voip/util/r;->b:I

    if-nez p2, :cond_0

    const/4 v5, 0x1

    :goto_0
    iget v6, p0, Lcom/viber/voip/util/r;->c:I

    iget v7, p0, Lcom/viber/voip/util/r;->d:I

    iget v8, p0, Lcom/viber/voip/util/r;->e:I

    iget-wide v9, p0, Lcom/viber/voip/util/r;->f:J

    iget-wide v11, p0, Lcom/viber/voip/util/r;->g:J

    const/4 v13, 0x0

    iget-object v14, p0, Lcom/viber/voip/util/r;->h:Lcom/viber/voip/calls/w;

    move-object/from16 v3, p3

    invoke-interface/range {v0 .. v14}, Lcom/viber/voip/calls/u;->a(JLjava/lang/String;IZIIIJJILcom/viber/voip/calls/w;)V

    .line 56
    return-void

    .line 52
    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method
