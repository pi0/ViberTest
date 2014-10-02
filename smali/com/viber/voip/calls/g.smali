.class Lcom/viber/voip/calls/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/calls/r;


# instance fields
.field final synthetic a:Lcom/viber/voip/calls/s;

.field final synthetic b:Lcom/viber/voip/calls/a;


# direct methods
.method constructor <init>(Lcom/viber/voip/calls/a;Lcom/viber/voip/calls/s;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 202
    iput-object p1, p0, Lcom/viber/voip/calls/g;->b:Lcom/viber/voip/calls/a;

    iput-object p2, p0, Lcom/viber/voip/calls/g;->a:Lcom/viber/voip/calls/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 9
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v7, 0x0

    .line 206
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    .line 207
    iget-object v0, p0, Lcom/viber/voip/calls/g;->b:Lcom/viber/voip/calls/a;

    invoke-static {v0}, Lcom/viber/voip/calls/a;->a(Lcom/viber/voip/calls/a;)Lcom/viber/voip/contacts/c/e/b;

    move-result-object v0

    const/16 v1, 0x63a

    sget-object v3, Lcom/viber/provider/contacts/c;->a:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "date<"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Lcom/viber/voip/calls/h;

    invoke-direct {v6, p0, p1, p2}, Lcom/viber/voip/calls/h;-><init>(Lcom/viber/voip/calls/g;J)V

    move-object v5, v2

    move v8, v7

    invoke-virtual/range {v0 .. v8}, Lcom/viber/voip/contacts/c/e/b;->a(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Lcom/viber/voip/util/fh;ZZ)V

    .line 220
    :cond_0
    :goto_0
    return-void

    .line 217
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/calls/g;->a:Lcom/viber/voip/calls/s;

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/viber/voip/calls/g;->a:Lcom/viber/voip/calls/s;

    invoke-interface {v0, v7, p1, p2}, Lcom/viber/voip/calls/s;->a(ZJ)V

    goto :goto_0
.end method
