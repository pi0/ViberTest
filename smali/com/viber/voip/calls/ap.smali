.class Lcom/viber/voip/calls/ap;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/util/fl;


# instance fields
.field final synthetic a:Lcom/viber/voip/calls/ao;


# direct methods
.method constructor <init>(Lcom/viber/voip/calls/ao;)V
    .locals 0
    .parameter

    .prologue
    .line 97
    iput-object p1, p0, Lcom/viber/voip/calls/ap;->a:Lcom/viber/voip/calls/ao;

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
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 101
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 103
    if-eqz p3, :cond_1

    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 104
    const-string/jumbo v0, "_id"

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 105
    const-string/jumbo v0, "display_name"

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 107
    :cond_0
    invoke-interface {p3, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 108
    invoke-interface {p3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 109
    :goto_0
    sget-object v8, Lcom/viber/provider/contacts/d;->a:Landroid/net/Uri;

    invoke-static {v8}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    const-string/jumbo v9, "numbers_name"

    iget-object v10, p0, Lcom/viber/voip/calls/ap;->a:Lcom/viber/voip/calls/ao;

    invoke-virtual {v10, v0}, Lcom/viber/voip/calls/ao;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v9, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "_id="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6, v3}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Landroid/content/ContentProviderOperation$Builder;->withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/viber/voip/calls/ap;->a:Lcom/viber/voip/calls/ao;

    invoke-static {v0}, Lcom/viber/voip/calls/ao;->a(Lcom/viber/voip/calls/ao;)Lcom/viber/voip/util/fe;

    move-result-object v0

    const-string/jumbo v2, "com.viber.provider.vibercontacts"

    move-object v5, v3

    move v6, v1

    move v7, v1

    invoke-virtual/range {v0 .. v7}, Lcom/viber/voip/util/fe;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/util/List;Lcom/viber/voip/util/ff;ZZ)V

    .line 116
    :cond_1
    invoke-static {p3}, Lcom/viber/voip/util/al;->a(Landroid/database/Cursor;)V

    .line 117
    return-void

    :cond_2
    move-object v0, v3

    .line 108
    goto :goto_0
.end method
