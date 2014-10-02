.class Lcom/viber/voip/contacts/c/f/a/a/at;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/util/fl;


# instance fields
.field final synthetic a:Lcom/viber/voip/contacts/c/f/a/a/au;

.field final synthetic b:Lcom/viber/voip/contacts/c/f/a/a/al;


# direct methods
.method constructor <init>(Lcom/viber/voip/contacts/c/f/a/a/al;Lcom/viber/voip/contacts/c/f/a/a/au;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 316
    iput-object p1, p0, Lcom/viber/voip/contacts/c/f/a/a/at;->b:Lcom/viber/voip/contacts/c/f/a/a/al;

    iput-object p2, p0, Lcom/viber/voip/contacts/c/f/a/a/at;->a:Lcom/viber/voip/contacts/c/f/a/a/au;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    .line 320
    .line 322
    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/a/a/at;->b:Lcom/viber/voip/contacts/c/f/a/a/al;

    invoke-static {v0}, Lcom/viber/voip/contacts/c/f/a/a/al;->h(Lcom/viber/voip/contacts/c/f/a/a/al;)Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/viber/provider/contacts/d;->a:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "contact_lookup_key"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 325
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 326
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 328
    :cond_0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 329
    const/16 v1, 0x2c

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 330
    :cond_1
    const/16 v1, 0x27

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x27

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 331
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 333
    :cond_2
    invoke-static {v0}, Lcom/viber/voip/util/al;->a(Landroid/database/Cursor;)V

    .line 335
    if-eqz p3, :cond_3

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_3

    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 336
    iget-object v6, p0, Lcom/viber/voip/contacts/c/f/a/a/at;->b:Lcom/viber/voip/contacts/c/f/a/a/al;

    new-instance v0, Lcom/viber/voip/contacts/c/f/a/a/ae;

    const/4 v1, 0x0

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v2, 0x1

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/contacts/c/f/a/a/ae;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v6, v0}, Lcom/viber/voip/contacts/c/f/a/a/al;->a(Lcom/viber/voip/contacts/c/f/a/a/al;Lcom/viber/voip/contacts/c/f/a/a/ae;)Lcom/viber/voip/contacts/c/f/a/a/ae;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 346
    :goto_0
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/a/a/at;->b:Lcom/viber/voip/contacts/c/f/a/a/al;

    invoke-static {v0, v7}, Lcom/viber/voip/contacts/c/f/a/a/al;->b(Lcom/viber/voip/contacts/c/f/a/a/al;Z)Z

    .line 347
    invoke-static {p3}, Lcom/viber/voip/util/al;->a(Landroid/database/Cursor;)V

    .line 348
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/a/a/at;->b:Lcom/viber/voip/contacts/c/f/a/a/al;

    iget-object v1, p0, Lcom/viber/voip/contacts/c/f/a/a/at;->a:Lcom/viber/voip/contacts/c/f/a/a/au;

    invoke-static {v0, v1}, Lcom/viber/voip/contacts/c/f/a/a/al;->a(Lcom/viber/voip/contacts/c/f/a/a/al;Lcom/viber/voip/contacts/c/f/a/a/au;)V

    .line 349
    return-void

    .line 339
    :cond_3
    :try_start_1
    iget-object v6, p0, Lcom/viber/voip/contacts/c/f/a/a/at;->b:Lcom/viber/voip/contacts/c/f/a/a/al;

    new-instance v0, Lcom/viber/voip/contacts/c/f/a/a/ae;

    const/4 v1, 0x0

    const-string/jumbo v2, ""

    const-string/jumbo v3, ""

    const-string/jumbo v4, ""

    const-string/jumbo v5, ""

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/contacts/c/f/a/a/ae;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v6, v0}, Lcom/viber/voip/contacts/c/f/a/a/al;->a(Lcom/viber/voip/contacts/c/f/a/a/al;Lcom/viber/voip/contacts/c/f/a/a/ae;)Lcom/viber/voip/contacts/c/f/a/a/ae;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 341
    :catch_0
    move-exception v0

    .line 342
    const/4 v1, 0x6

    invoke-static {}, Lcom/viber/voip/contacts/c/f/a/a/al;->e()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onQueryComplete log error"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3, v0}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 344
    iget-object v6, p0, Lcom/viber/voip/contacts/c/f/a/a/at;->b:Lcom/viber/voip/contacts/c/f/a/a/al;

    new-instance v0, Lcom/viber/voip/contacts/c/f/a/a/ae;

    const-string/jumbo v2, ""

    const-string/jumbo v3, ""

    const-string/jumbo v4, ""

    const-string/jumbo v5, ""

    move v1, v7

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/contacts/c/f/a/a/ae;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v6, v0}, Lcom/viber/voip/contacts/c/f/a/a/al;->a(Lcom/viber/voip/contacts/c/f/a/a/al;Lcom/viber/voip/contacts/c/f/a/a/ae;)Lcom/viber/voip/contacts/c/f/a/a/ae;

    goto :goto_0
.end method
