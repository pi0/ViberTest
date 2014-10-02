.class Lcom/viber/voip/contacts/c/f/a/a/r;
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
    .line 167
    iput-object p1, p0, Lcom/viber/voip/contacts/c/f/a/a/r;->b:Lcom/viber/voip/contacts/c/f/a/a/n;

    iput-object p2, p0, Lcom/viber/voip/contacts/c/f/a/a/r;->a:Lcom/viber/voip/contacts/c/f/a/a/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 12
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 171
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 173
    if-eqz p3, :cond_1

    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 174
    const-string/jumbo v0, "_id"

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 175
    const-string/jumbo v2, "data2"

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 176
    const-string/jumbo v5, "data3"

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 178
    :cond_0
    invoke-interface {p3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 179
    invoke-interface {p3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 180
    invoke-interface {p3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 182
    sget-object v10, Lcom/viber/provider/contacts/f;->a:Landroid/net/Uri;

    invoke-static {v10}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v10

    const-string/jumbo v11, "data5"

    invoke-virtual {v10, v11, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    const-string/jumbo v10, "data4"

    invoke-virtual {v8, v10, v9}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "_id="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6, v3}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-nez v6, :cond_0

    .line 187
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/a/a/r;->b:Lcom/viber/voip/contacts/c/f/a/a/n;

    invoke-static {v0}, Lcom/viber/voip/contacts/c/f/a/a/n;->a(Lcom/viber/voip/contacts/c/f/a/a/n;)Lcom/viber/voip/util/fe;

    move-result-object v0

    const-string/jumbo v2, "com.viber.provider.vibercontacts"

    new-instance v5, Lcom/viber/voip/contacts/c/f/a/a/s;

    invoke-direct {v5, p0}, Lcom/viber/voip/contacts/c/f/a/a/s;-><init>(Lcom/viber/voip/contacts/c/f/a/a/r;)V

    move v6, v1

    move v7, v1

    invoke-virtual/range {v0 .. v7}, Lcom/viber/voip/util/fe;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/util/List;Lcom/viber/voip/util/ff;ZZ)V

    .line 198
    :goto_0
    invoke-static {p3}, Lcom/viber/voip/util/al;->a(Landroid/database/Cursor;)V

    .line 199
    return-void

    .line 196
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/a/a/r;->a:Lcom/viber/voip/contacts/c/f/a/a/z;

    invoke-interface {v0}, Lcom/viber/voip/contacts/c/f/a/a/z;->a()V

    goto :goto_0
.end method
