.class Lcom/viber/voip/calls/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/util/fl;


# instance fields
.field final synthetic a:Lcom/viber/voip/calls/r;

.field final synthetic b:Lcom/viber/voip/calls/a;


# direct methods
.method constructor <init>(Lcom/viber/voip/calls/a;Lcom/viber/voip/calls/r;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 294
    iput-object p1, p0, Lcom/viber/voip/calls/l;->b:Lcom/viber/voip/calls/a;

    iput-object p2, p0, Lcom/viber/voip/calls/l;->a:Lcom/viber/voip/calls/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 298
    if-eqz p3, :cond_1

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/16 v2, 0x64

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    .line 300
    :goto_0
    if-eqz v0, :cond_2

    .line 301
    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p3, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 302
    invoke-interface {p3, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 306
    :goto_1
    invoke-static {p3}, Lcom/viber/voip/util/al;->a(Landroid/database/Cursor;)V

    .line 308
    iget-object v2, p0, Lcom/viber/voip/calls/l;->a:Lcom/viber/voip/calls/r;

    if-eqz v2, :cond_0

    .line 309
    iget-object v2, p0, Lcom/viber/voip/calls/l;->a:Lcom/viber/voip/calls/r;

    invoke-interface {v2, v0, v1}, Lcom/viber/voip/calls/r;->a(J)V

    .line 311
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 298
    goto :goto_0

    .line 304
    :cond_2
    const-wide/16 v0, 0x0

    goto :goto_1
.end method
