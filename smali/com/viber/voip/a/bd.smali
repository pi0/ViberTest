.class Lcom/viber/voip/a/bd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/contacts/c/f/b/ab;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/viber/voip/a/bc;


# direct methods
.method constructor <init>(Lcom/viber/voip/a/bc;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 293
    iput-object p1, p0, Lcom/viber/voip/a/bd;->b:Lcom/viber/voip/a/bc;

    iput p2, p0, Lcom/viber/voip/a/bd;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 10
    .parameter

    .prologue
    const-wide/16 v8, 0x0

    const-wide v6, 0x408f400000000000L

    .line 297
    iget-object v0, p0, Lcom/viber/voip/a/bd;->b:Lcom/viber/voip/a/bc;

    iget-object v1, p0, Lcom/viber/voip/a/bd;->b:Lcom/viber/voip/a/bc;

    invoke-static {v1}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/bc;)Lcom/viber/dexshared/GoogleAnalyticsHelper;

    move-result-object v1

    const/4 v2, 0x1

    int-to-long v3, p1

    invoke-static {v0, v1, v2, v3, v4}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/bc;Lcom/viber/dexshared/GoogleAnalyticsHelper;IJ)V

    .line 299
    iget v0, p0, Lcom/viber/voip/a/bd;->a:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 300
    iget-object v0, p0, Lcom/viber/voip/a/bd;->b:Lcom/viber/voip/a/bc;

    sget-object v1, Lcom/viber/voip/a/a;->s:Lcom/viber/voip/a/l;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-object v4, p0, Lcom/viber/voip/a/bd;->b:Lcom/viber/voip/a/bc;

    invoke-static {v4}, Lcom/viber/voip/a/bc;->b(Lcom/viber/voip/a/bc;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    long-to-double v2, v2

    div-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/viber/voip/a/l;->b(J)Lcom/viber/voip/a/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    .line 305
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/viber/voip/a/bd;->b:Lcom/viber/voip/a/bc;

    invoke-static {v0, v8, v9}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/bc;J)J

    .line 306
    return-void

    .line 301
    :cond_1
    iget v0, p0, Lcom/viber/voip/a/bd;->a:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/viber/voip/a/bd;->b:Lcom/viber/voip/a/bc;

    invoke-static {v0}, Lcom/viber/voip/a/bc;->b(Lcom/viber/voip/a/bc;)J

    move-result-wide v0

    cmp-long v0, v0, v8

    if-lez v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/viber/voip/a/bd;->b:Lcom/viber/voip/a/bc;

    sget-object v1, Lcom/viber/voip/a/a;->s:Lcom/viber/voip/a/l;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-object v4, p0, Lcom/viber/voip/a/bd;->b:Lcom/viber/voip/a/bc;

    invoke-static {v4}, Lcom/viber/voip/a/bc;->b(Lcom/viber/voip/a/bc;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    long-to-double v2, v2

    div-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/viber/voip/a/l;->a(J)Lcom/viber/voip/a/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    .line 303
    iget-object v0, p0, Lcom/viber/voip/a/bd;->b:Lcom/viber/voip/a/bc;

    invoke-static {v0}, Lcom/viber/voip/a/bc;->c(Lcom/viber/voip/a/bc;)V

    goto :goto_0
.end method
