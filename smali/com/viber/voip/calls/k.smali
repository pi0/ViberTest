.class Lcom/viber/voip/calls/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/util/fl;


# instance fields
.field final synthetic a:Lcom/viber/voip/calls/t;

.field final synthetic b:Lcom/viber/voip/calls/o;

.field final synthetic c:Lcom/viber/voip/calls/a;


# direct methods
.method constructor <init>(Lcom/viber/voip/calls/a;Lcom/viber/voip/calls/t;Lcom/viber/voip/calls/o;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 268
    iput-object p1, p0, Lcom/viber/voip/calls/k;->c:Lcom/viber/voip/calls/a;

    iput-object p2, p0, Lcom/viber/voip/calls/k;->a:Lcom/viber/voip/calls/t;

    iput-object p3, p0, Lcom/viber/voip/calls/k;->b:Lcom/viber/voip/calls/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 272
    if-eqz p3, :cond_2

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    iget-object v2, p0, Lcom/viber/voip/calls/k;->a:Lcom/viber/voip/calls/t;

    iget v2, v2, Lcom/viber/voip/calls/t;->b:I

    if-eq v0, v2, :cond_2

    const/4 v0, 0x1

    .line 273
    :goto_0
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 275
    if-eqz v0, :cond_1

    if-eqz p3, :cond_1

    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 277
    :cond_0
    invoke-interface {p3, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 278
    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 280
    :cond_1
    invoke-static {p3}, Lcom/viber/voip/util/al;->a(Landroid/database/Cursor;)V

    .line 283
    if-eqz v0, :cond_3

    .line 284
    iget-object v0, p0, Lcom/viber/voip/calls/k;->c:Lcom/viber/voip/calls/a;

    iget-object v1, p0, Lcom/viber/voip/calls/k;->b:Lcom/viber/voip/calls/o;

    invoke-static {v0, v2, v1}, Lcom/viber/voip/calls/a;->a(Lcom/viber/voip/calls/a;Ljava/util/Set;Lcom/viber/voip/calls/o;)V

    .line 288
    :goto_1
    return-void

    :cond_2
    move v0, v1

    .line 272
    goto :goto_0

    .line 286
    :cond_3
    iget-object v0, p0, Lcom/viber/voip/calls/k;->b:Lcom/viber/voip/calls/o;

    invoke-interface {v0, v1}, Lcom/viber/voip/calls/o;->a(Z)V

    goto :goto_1
.end method
