.class Lcom/viber/voip/contacts/c/f/a/a/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/util/fl;


# instance fields
.field final synthetic a:Lcom/viber/voip/contacts/c/f/a/a/z;

.field final synthetic b:Lcom/viber/voip/contacts/c/f/a/a/n;


# direct methods
.method constructor <init>(Lcom/viber/voip/contacts/c/f/a/a/n;Lcom/viber/voip/contacts/c/f/a/a/z;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 307
    iput-object p1, p0, Lcom/viber/voip/contacts/c/f/a/a/x;->b:Lcom/viber/voip/contacts/c/f/a/a/n;

    iput-object p2, p0, Lcom/viber/voip/contacts/c/f/a/a/x;->a:Lcom/viber/voip/contacts/c/f/a/a/z;

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
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 312
    if-eqz p3, :cond_1

    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 313
    const-string/jumbo v0, "_id"

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 314
    const-string/jumbo v2, "photo_id"

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 316
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 319
    :cond_0
    invoke-interface {p3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 320
    invoke-interface {p3, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 322
    sget-object v9, Lcom/viber/provider/contacts/d;->a:Landroid/net/Uri;

    invoke-static {v9}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    const-string/jumbo v10, "native_photo_id"

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v9, v10, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "_id="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5, v3}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 327
    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_0

    .line 329
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/a/a/x;->b:Lcom/viber/voip/contacts/c/f/a/a/n;

    invoke-static {v0}, Lcom/viber/voip/contacts/c/f/a/a/n;->a(Lcom/viber/voip/contacts/c/f/a/a/n;)Lcom/viber/voip/util/fe;

    move-result-object v0

    const-string/jumbo v2, "com.viber.provider.vibercontacts"

    new-instance v5, Lcom/viber/voip/contacts/c/f/a/a/y;

    invoke-direct {v5, p0}, Lcom/viber/voip/contacts/c/f/a/a/y;-><init>(Lcom/viber/voip/contacts/c/f/a/a/x;)V

    move v6, v1

    move v7, v1

    invoke-virtual/range {v0 .. v7}, Lcom/viber/voip/util/fe;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/util/List;Lcom/viber/voip/util/ff;ZZ)V

    .line 343
    :goto_0
    invoke-static {p3}, Lcom/viber/voip/util/al;->a(Landroid/database/Cursor;)V

    .line 344
    return-void

    .line 341
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/a/a/x;->a:Lcom/viber/voip/contacts/c/f/a/a/z;

    invoke-interface {v0}, Lcom/viber/voip/contacts/c/f/a/a/z;->a()V

    goto :goto_0
.end method
