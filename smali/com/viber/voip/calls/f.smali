.class Lcom/viber/voip/calls/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/util/fl;


# instance fields
.field final synthetic a:Lcom/viber/voip/calls/q;

.field final synthetic b:Lcom/viber/voip/calls/a;


# direct methods
.method constructor <init>(Lcom/viber/voip/calls/a;Lcom/viber/voip/calls/q;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 166
    iput-object p1, p0, Lcom/viber/voip/calls/f;->b:Lcom/viber/voip/calls/a;

    iput-object p2, p0, Lcom/viber/voip/calls/f;->a:Lcom/viber/voip/calls/q;

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

    .line 170
    const/4 v0, 0x0

    .line 172
    if-eqz p3, :cond_2

    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 173
    invoke-static {}, Lcom/viber/voip/calls/a;->a()I

    move-result v0

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 174
    invoke-static {}, Lcom/viber/voip/calls/a;->b()I

    move-result v0

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 176
    :goto_0
    invoke-static {p3}, Lcom/viber/voip/util/al;->a(Landroid/database/Cursor;)V

    .line 179
    iget-object v3, p0, Lcom/viber/voip/calls/f;->a:Lcom/viber/voip/calls/q;

    if-eqz v3, :cond_0

    .line 180
    iget-object v3, p0, Lcom/viber/voip/calls/f;->a:Lcom/viber/voip/calls/q;

    new-instance v4, Lcom/viber/voip/calls/t;

    if-eqz v0, :cond_1

    :goto_1
    invoke-direct {v4, v0, v2, v1}, Lcom/viber/voip/calls/t;-><init>(Ljava/lang/String;ILcom/viber/voip/calls/b;)V

    invoke-interface {v3, v4}, Lcom/viber/voip/calls/q;->a(Lcom/viber/voip/calls/t;)V

    .line 182
    :cond_0
    return-void

    .line 180
    :cond_1
    const-string/jumbo v0, ""

    goto :goto_1

    :cond_2
    move v2, v0

    move-object v0, v1

    goto :goto_0
.end method
