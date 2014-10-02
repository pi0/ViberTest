.class public Lcom/viber/service/contacts/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/viber/service/contacts/a/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/service/contacts/a/a;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 118
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 127
    :cond_0
    :goto_0
    return-void

    .line 121
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "com.viber.provider.vibercontacts"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 122
    :catch_0
    move-exception v0

    goto :goto_0

    .line 124
    :catch_1
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/content/Context;)I
    .locals 14
    .parameter
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 36
    invoke-static {p1}, Lcom/viber/voip/util/a/a;->a(Landroid/content/Context;)V

    .line 38
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_1

    move v0, v6

    .line 114
    :cond_0
    :goto_0
    return v0

    .line 46
    :cond_1
    new-array v8, v6, [J

    .line 51
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/viber/provider/contacts/d;->a:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "native_id"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 53
    if-eqz v7, :cond_9

    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 54
    const-string/jumbo v0, "native_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 56
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    new-array v0, v0, [J

    move v1, v6

    .line 59
    :cond_2
    invoke-interface {v7, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    int-to-long v3, v3

    aput-wide v3, v0, v1

    .line 60
    add-int/lit8 v1, v1, 0x1

    .line 61
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result v3

    if-nez v3, :cond_2

    move-object v3, v0

    .line 64
    :goto_1
    if-eqz v7, :cond_3

    invoke-static {v7}, Lcom/viber/voip/util/al;->a(Landroid/database/Cursor;)V

    .line 71
    :cond_3
    :try_start_2
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 72
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "_id"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string/jumbo v5, "phonetic_name"

    aput-object v5, v2, v4

    const/4 v4, 0x2

    const-string/jumbo v5, "sort_key"

    aput-object v5, v2, v4

    const/4 v4, 0x3

    const-string/jumbo v5, "display_name"

    aput-object v5, v2, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "_id IN ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v3}, Lcom/viber/voip/i/a;->a([J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 77
    if-eqz v7, :cond_8

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 78
    const-string/jumbo v0, "_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 79
    const-string/jumbo v0, "phonetic_name"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 80
    const-string/jumbo v0, "sort_key"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 81
    const-string/jumbo v0, "display_name"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object v0, v8

    move v1, v6

    .line 84
    :cond_4
    invoke-interface {v7, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 85
    invoke-interface {v7, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v7, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v6, v10, v11}, Lcom/viber/voip/util/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/viber/voip/util/a/b;

    move-result-object v6

    .line 88
    sget-object v10, Lcom/viber/provider/contacts/d;->a:Landroid/net/Uri;

    invoke-static {v10}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v10

    const-string/jumbo v11, "_id=?"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v12, v13

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    const-string/jumbo v9, "display_name"

    iget-object v10, v6, Lcom/viber/voip/util/a/b;->a:Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    const-string/jumbo v9, "phonetic_name"

    iget-object v10, v6, Lcom/viber/voip/util/a/b;->b:Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    const-string/jumbo v9, "low_display_name"

    iget-object v10, v6, Lcom/viber/voip/util/a/b;->c:Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    const-string/jumbo v9, "phone_label"

    iget-object v6, v6, Lcom/viber/voip/util/a/b;->d:Ljava/lang/String;

    invoke-virtual {v8, v9, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/16 v8, 0x32

    if-le v6, v8, :cond_5

    .line 98
    invoke-direct {p0, p1, v0}, Lcom/viber/service/contacts/a/a;->a(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 99
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v1, v0

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 104
    :cond_5
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-nez v6, :cond_4

    .line 106
    invoke-direct {p0, p1, v0}, Lcom/viber/service/contacts/a/a;->a(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 107
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v0

    add-int v6, v1, v0

    move v0, v6

    .line 111
    :goto_2
    if-eqz v7, :cond_0

    invoke-static {v7}, Lcom/viber/voip/util/al;->a(Landroid/database/Cursor;)V

    goto/16 :goto_0

    .line 64
    :catchall_0
    move-exception v0

    move-object v1, v7

    :goto_3
    if-eqz v1, :cond_6

    invoke-static {v1}, Lcom/viber/voip/util/al;->a(Landroid/database/Cursor;)V

    :cond_6
    throw v0

    .line 111
    :catchall_1
    move-exception v0

    if-eqz v7, :cond_7

    invoke-static {v7}, Lcom/viber/voip/util/al;->a(Landroid/database/Cursor;)V

    :cond_7
    throw v0

    .line 64
    :catchall_2
    move-exception v0

    move-object v1, v7

    goto :goto_3

    :cond_8
    move v0, v6

    goto :goto_2

    :cond_9
    move-object v3, v8

    goto/16 :goto_1
.end method
