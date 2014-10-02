.class Lcom/viber/voip/calls/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/util/fh;


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/viber/voip/calls/g;


# direct methods
.method constructor <init>(Lcom/viber/voip/calls/g;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 208
    iput-object p1, p0, Lcom/viber/voip/calls/h;->b:Lcom/viber/voip/calls/g;

    iput-wide p2, p0, Lcom/viber/voip/calls/h;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeleteComplete(ILjava/lang/Object;I)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 212
    iget-object v0, p0, Lcom/viber/voip/calls/h;->b:Lcom/viber/voip/calls/g;

    iget-object v0, v0, Lcom/viber/voip/calls/g;->a:Lcom/viber/voip/calls/s;

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/viber/voip/calls/h;->b:Lcom/viber/voip/calls/g;

    iget-object v1, v0, Lcom/viber/voip/calls/g;->a:Lcom/viber/voip/calls/s;

    if-lez p3, :cond_1

    const/4 v0, 0x1

    :goto_0
    iget-wide v2, p0, Lcom/viber/voip/calls/h;->a:J

    invoke-interface {v1, v0, v2, v3}, Lcom/viber/voip/calls/s;->a(ZJ)V

    .line 215
    :cond_0
    return-void

    .line 213
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
