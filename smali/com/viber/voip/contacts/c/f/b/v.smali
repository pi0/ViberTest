.class Lcom/viber/voip/contacts/c/f/b/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/util/fl;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/viber/voip/contacts/c/f/b/af;

.field final synthetic c:Lcom/viber/voip/contacts/c/f/b/u;


# direct methods
.method constructor <init>(Lcom/viber/voip/contacts/c/f/b/u;ZLcom/viber/voip/contacts/c/f/b/af;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 406
    iput-object p1, p0, Lcom/viber/voip/contacts/c/f/b/v;->c:Lcom/viber/voip/contacts/c/f/b/u;

    iput-boolean p2, p0, Lcom/viber/voip/contacts/c/f/b/v;->a:Z

    iput-object p3, p0, Lcom/viber/voip/contacts/c/f/b/v;->b:Lcom/viber/voip/contacts/c/f/b/af;

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

    .line 410
    const-string/jumbo v0, ""

    .line 413
    if-eqz p3, :cond_4

    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 414
    iget-boolean v2, p0, Lcom/viber/voip/contacts/c/f/b/v;->a:Z

    if-eqz v2, :cond_2

    .line 415
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 417
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 418
    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 419
    :cond_1
    invoke-interface {p3, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 420
    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 421
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 423
    :cond_2
    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v1

    move v4, v1

    move-object v1, v0

    move v0, v4

    .line 425
    :goto_0
    invoke-static {p3}, Lcom/viber/voip/util/al;->a(Landroid/database/Cursor;)V

    .line 427
    iget-object v2, p0, Lcom/viber/voip/contacts/c/f/b/v;->b:Lcom/viber/voip/contacts/c/f/b/af;

    if-eqz v2, :cond_3

    .line 428
    iget-object v2, p0, Lcom/viber/voip/contacts/c/f/b/v;->b:Lcom/viber/voip/contacts/c/f/b/af;

    iget-boolean v3, p0, Lcom/viber/voip/contacts/c/f/b/v;->a:Z

    invoke-interface {v2, v0, v3, v1}, Lcom/viber/voip/contacts/c/f/b/af;->a(IZLjava/lang/String;)V

    .line 430
    :cond_3
    return-void

    :cond_4
    move v4, v1

    move-object v1, v0

    move v0, v4

    goto :goto_0
.end method
