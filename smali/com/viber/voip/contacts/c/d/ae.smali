.class Lcom/viber/voip/contacts/c/d/ae;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/util/fl;


# instance fields
.field final synthetic a:Lcom/viber/voip/contacts/c/d/aq;

.field final synthetic b:Lcom/viber/voip/contacts/c/d/aa;


# direct methods
.method constructor <init>(Lcom/viber/voip/contacts/c/d/aa;Lcom/viber/voip/contacts/c/d/aq;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 456
    iput-object p1, p0, Lcom/viber/voip/contacts/c/d/ae;->b:Lcom/viber/voip/contacts/c/d/aa;

    iput-object p2, p0, Lcom/viber/voip/contacts/c/d/ae;->a:Lcom/viber/voip/contacts/c/d/aq;

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
    .line 460
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 461
    if-eqz p3, :cond_1

    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 463
    :cond_0
    const-string/jumbo v1, "canonized_number"

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "photo"

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 467
    :cond_1
    invoke-static {p3}, Lcom/viber/voip/util/al;->a(Landroid/database/Cursor;)V

    .line 468
    iget-object v1, p0, Lcom/viber/voip/contacts/c/d/ae;->a:Lcom/viber/voip/contacts/c/d/aq;

    if-eqz v1, :cond_2

    .line 469
    iget-object v1, p0, Lcom/viber/voip/contacts/c/d/ae;->a:Lcom/viber/voip/contacts/c/d/aq;

    invoke-interface {v1, v0}, Lcom/viber/voip/contacts/c/d/aq;->a(Ljava/util/Map;)V

    .line 471
    :cond_2
    return-void
.end method
