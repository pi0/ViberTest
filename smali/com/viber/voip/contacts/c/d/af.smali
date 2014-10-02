.class Lcom/viber/voip/contacts/c/d/af;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/util/fl;


# instance fields
.field final synthetic a:I

.field final synthetic b:J

.field final synthetic c:Lcom/viber/voip/contacts/c/d/ap;

.field final synthetic d:Lcom/viber/voip/contacts/c/d/aa;


# direct methods
.method constructor <init>(Lcom/viber/voip/contacts/c/d/aa;IJLcom/viber/voip/contacts/c/d/ap;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 477
    iput-object p1, p0, Lcom/viber/voip/contacts/c/d/af;->d:Lcom/viber/voip/contacts/c/d/aa;

    iput p2, p0, Lcom/viber/voip/contacts/c/d/af;->a:I

    iput-wide p3, p0, Lcom/viber/voip/contacts/c/d/af;->b:J

    iput-object p5, p0, Lcom/viber/voip/contacts/c/d/af;->c:Lcom/viber/voip/contacts/c/d/ap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 11
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x0

    .line 481
    if-eqz p3, :cond_1

    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 482
    const-string/jumbo v0, "flags"

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 483
    invoke-interface {p3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 484
    iget v1, p0, Lcom/viber/voip/contacts/c/d/af;->a:I

    invoke-static {v0, v1}, Lcom/viber/voip/util/bk;->a(II)I

    move-result v0

    .line 486
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 487
    const-string/jumbo v1, "flags"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 488
    iget-object v0, p0, Lcom/viber/voip/contacts/c/d/af;->d:Lcom/viber/voip/contacts/c/d/aa;

    invoke-static {v0}, Lcom/viber/voip/contacts/c/d/aa;->a(Lcom/viber/voip/contacts/c/d/aa;)Lcom/viber/voip/contacts/c/e/b;

    move-result-object v0

    const/16 v1, 0x630

    const/4 v2, 0x0

    sget-object v3, Lcom/viber/provider/contacts/d;->a:Landroid/net/Uri;

    const-string/jumbo v5, "_id=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    iget-wide v9, p0, Lcom/viber/voip/contacts/c/d/af;->b:J

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    new-instance v7, Lcom/viber/voip/contacts/c/d/ag;

    invoke-direct {v7, p0}, Lcom/viber/voip/contacts/c/d/ag;-><init>(Lcom/viber/voip/contacts/c/d/af;)V

    move v9, v8

    invoke-virtual/range {v0 .. v9}, Lcom/viber/voip/contacts/c/e/b;->a(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Lcom/viber/voip/util/fn;ZZ)V

    .line 504
    :cond_0
    :goto_0
    invoke-static {p3}, Lcom/viber/voip/util/al;->a(Landroid/database/Cursor;)V

    .line 506
    return-void

    .line 500
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/contacts/c/d/af;->c:Lcom/viber/voip/contacts/c/d/ap;

    if-eqz v0, :cond_0

    .line 501
    iget-object v0, p0, Lcom/viber/voip/contacts/c/d/af;->c:Lcom/viber/voip/contacts/c/d/ap;

    invoke-interface {v0}, Lcom/viber/voip/contacts/c/d/ap;->a()V

    goto :goto_0
.end method
