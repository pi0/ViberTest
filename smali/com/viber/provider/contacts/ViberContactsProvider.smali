.class public Lcom/viber/provider/contacts/ViberContactsProvider;
.super Lcom/viber/provider/ViberContentProvider;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x8
.end annotation


# static fields
.field private static final b:Landroid/content/UriMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 78
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/viber/provider/contacts/ViberContactsProvider;->b:Landroid/content/UriMatcher;

    .line 79
    sget-object v0, Lcom/viber/provider/contacts/ViberContactsProvider;->b:Landroid/content/UriMatcher;

    const-string/jumbo v1, "com.viber.provider.vibercontacts"

    const-string/jumbo v2, "updatecontactversion"

    const/16 v3, 0x3e9

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 80
    sget-object v0, Lcom/viber/provider/contacts/ViberContactsProvider;->b:Landroid/content/UriMatcher;

    const-string/jumbo v1, "com.viber.provider.vibercontacts"

    const-string/jumbo v2, "phonebookcontact"

    const/16 v3, 0x1f5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 81
    sget-object v0, Lcom/viber/provider/contacts/ViberContactsProvider;->b:Landroid/content/UriMatcher;

    const-string/jumbo v1, "com.viber.provider.vibercontacts"

    const-string/jumbo v2, "joinfullcontactdata"

    const/16 v3, 0x1f7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 82
    sget-object v0, Lcom/viber/provider/contacts/ViberContactsProvider;->b:Landroid/content/UriMatcher;

    const-string/jumbo v1, "com.viber.provider.vibercontacts"

    const-string/jumbo v2, "joinnumberscontactdata"

    const/16 v3, 0x1f8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 83
    sget-object v0, Lcom/viber/provider/contacts/ViberContactsProvider;->b:Landroid/content/UriMatcher;

    const-string/jumbo v1, "com.viber.provider.vibercontacts"

    const-string/jumbo v2, "composenumberscontactdata"

    const/16 v3, 0x1fa

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 84
    sget-object v0, Lcom/viber/provider/contacts/ViberContactsProvider;->b:Landroid/content/UriMatcher;

    const-string/jumbo v1, "com.viber.provider.vibercontacts"

    const-string/jumbo v2, "joindatavibernumbers"

    const/16 v3, 0x1f9

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 85
    sget-object v0, Lcom/viber/provider/contacts/ViberContactsProvider;->b:Landroid/content/UriMatcher;

    const-string/jumbo v1, "com.viber.provider.vibercontacts"

    const-string/jumbo v2, "phonebookrawcontact"

    const/16 v3, 0x259

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 86
    sget-object v0, Lcom/viber/provider/contacts/ViberContactsProvider;->b:Landroid/content/UriMatcher;

    const-string/jumbo v1, "com.viber.provider.vibercontacts"

    const-string/jumbo v2, "phonebookrcontactrawcontact"

    const/16 v3, 0x25a

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 87
    sget-object v0, Lcom/viber/provider/contacts/ViberContactsProvider;->b:Landroid/content/UriMatcher;

    const-string/jumbo v1, "com.viber.provider.vibercontacts"

    const-string/jumbo v2, "phonebookrcontactrawcontactphonebookdatawithphone"

    const/16 v3, 0x25b

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 88
    sget-object v0, Lcom/viber/provider/contacts/ViberContactsProvider;->b:Landroid/content/UriMatcher;

    const-string/jumbo v1, "com.viber.provider.vibercontacts"

    const-string/jumbo v2, "vibernumbers"

    const/16 v3, 0x2bd

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 89
    sget-object v0, Lcom/viber/provider/contacts/ViberContactsProvider;->b:Landroid/content/UriMatcher;

    const-string/jumbo v1, "com.viber.provider.vibercontacts"

    const-string/jumbo v2, "phonebookdata"

    const/16 v3, 0x321

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 90
    sget-object v0, Lcom/viber/provider/contacts/ViberContactsProvider;->b:Landroid/content/UriMatcher;

    const-string/jumbo v1, "com.viber.provider.vibercontacts"

    const-string/jumbo v2, "phonebookdatanumbersviberblocked"

    const/16 v3, 0x322

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 91
    sget-object v0, Lcom/viber/provider/contacts/ViberContactsProvider;->b:Landroid/content/UriMatcher;

    const-string/jumbo v1, "com.viber.provider.vibercontacts"

    const-string/jumbo v2, "phonebookdatacontact"

    const/16 v3, 0x323

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 92
    sget-object v0, Lcom/viber/provider/contacts/ViberContactsProvider;->b:Landroid/content/UriMatcher;

    const-string/jumbo v1, "com.viber.provider.vibercontacts"

    const-string/jumbo v2, "listunioncontactdata"

    const/16 v3, 0x385

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 93
    sget-object v0, Lcom/viber/provider/contacts/ViberContactsProvider;->b:Landroid/content/UriMatcher;

    const-string/jumbo v1, "com.viber.provider.vibercontacts"

    const-string/jumbo v2, "callsjoincontacts"

    const/16 v3, 0x12f

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 94
    sget-object v0, Lcom/viber/provider/contacts/ViberContactsProvider;->b:Landroid/content/UriMatcher;

    const-string/jumbo v1, "com.viber.provider.vibercontacts"

    const-string/jumbo v2, "calls"

    const/16 v3, 0x12e

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 95
    sget-object v0, Lcom/viber/provider/contacts/ViberContactsProvider;->b:Landroid/content/UriMatcher;

    const-string/jumbo v1, "com.viber.provider.vibercontacts"

    const-string/jumbo v2, "calls/#"

    const/16 v3, 0x12d

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 96
    sget-object v0, Lcom/viber/provider/contacts/ViberContactsProvider;->b:Landroid/content/UriMatcher;

    const-string/jumbo v1, "com.viber.provider.vibercontacts"

    const-string/jumbo v2, "blockednumbers"

    const/16 v3, 0x44d

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 97
    sget-object v0, Lcom/viber/provider/contacts/ViberContactsProvider;->b:Landroid/content/UriMatcher;

    const-string/jumbo v1, "com.viber.provider.vibercontacts"

    const-string/jumbo v2, "blockednumberscontacts"

    const/16 v3, 0x44e

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 98
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/viber/provider/ViberContentProvider;-><init>()V

    return-void
.end method

.method private a(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 421
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 422
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " AND ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0x29

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 425
    iget-object v1, p0, Lcom/viber/provider/contacts/ViberContactsProvider;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v2, "calls"

    invoke-virtual {v1, v2, v0, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 426
    return v0

    .line 422
    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method private a(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 431
    iget-object v0, p0, Lcom/viber/provider/contacts/ViberContactsProvider;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v1, "calls"

    invoke-virtual {v0, v1, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 432
    return v0
.end method

.method private a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 507
    return-void
.end method


# virtual methods
.method protected a()Landroid/database/sqlite/SQLiteOpenHelper;
    .locals 1

    .prologue
    .line 121
    invoke-virtual {p0}, Lcom/viber/provider/contacts/ViberContactsProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/provider/contacts/b/a;->a(Landroid/content/Context;)Landroid/database/sqlite/SQLiteOpenHelper;

    move-result-object v0

    return-object v0
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 341
    new-instance v3, Lcom/viber/provider/g;

    invoke-virtual {p0}, Lcom/viber/provider/contacts/ViberContactsProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/viber/provider/g;-><init>(Landroid/content/Context;)V

    .line 342
    const/4 v1, 0x0

    .line 344
    iget-object v0, p0, Lcom/viber/provider/contacts/ViberContactsProvider;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionWithListener(Landroid/database/sqlite/SQLiteTransactionListener;)V

    .line 346
    :try_start_0
    sget-object v0, Lcom/viber/provider/contacts/ViberContactsProvider;->b:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 407
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unsupported URI:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 412
    :catchall_0
    move-exception v0

    :goto_0
    if-lez v1, :cond_0

    .line 413
    invoke-virtual {v3, p1}, Lcom/viber/provider/g;->a(Landroid/net/Uri;)V

    .line 415
    :cond_0
    iget-object v1, p0, Lcom/viber/provider/contacts/ViberContactsProvider;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    .line 348
    :sswitch_0
    :try_start_1
    invoke-direct {p0, p2, p3}, Lcom/viber/provider/contacts/ViberContactsProvider;->a(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 349
    iget-object v0, p0, Lcom/viber/provider/contacts/ViberContactsProvider;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 412
    :goto_1
    if-lez v1, :cond_1

    .line 413
    invoke-virtual {v3, p1}, Lcom/viber/provider/g;->a(Landroid/net/Uri;)V

    .line 415
    :cond_1
    iget-object v0, p0, Lcom/viber/provider/contacts/ViberContactsProvider;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 417
    return v1

    .line 353
    :sswitch_1
    :try_start_2
    invoke-direct {p0, p1, p2, p3}, Lcom/viber/provider/contacts/ViberContactsProvider;->a(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 354
    iget-object v0, p0, Lcom/viber/provider/contacts/ViberContactsProvider;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    goto :goto_1

    .line 360
    :sswitch_2
    iget-object v0, p0, Lcom/viber/provider/contacts/ViberContactsProvider;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v2, "phonebookcontact"

    invoke-virtual {v0, v2, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 364
    iget-object v0, p0, Lcom/viber/provider/contacts/ViberContactsProvider;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    goto :goto_1

    .line 368
    :sswitch_3
    iget-object v0, p0, Lcom/viber/provider/contacts/ViberContactsProvider;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v2, "vibernumbers"

    invoke-virtual {v0, v2, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 369
    iget-object v0, p0, Lcom/viber/provider/contacts/ViberContactsProvider;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    goto :goto_1

    .line 374
    :sswitch_4
    iget-object v0, p0, Lcom/viber/provider/contacts/ViberContactsProvider;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v2, "phonebookdata"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "raw_id IN ( SELECT _id FROM phonebookrawcontact WHERE "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 377
    iget-object v0, p0, Lcom/viber/provider/contacts/ViberContactsProvider;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v2, "phonebookrawcontact"

    invoke-virtual {v0, v2, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 379
    iget-object v0, p0, Lcom/viber/provider/contacts/ViberContactsProvider;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v4, "phonebookcontact"

    const-string/jumbo v5, "_id NOT IN ( SELECT contact_id FROM phonebookrawcontact)"

    const/4 v6, 0x0

    invoke-virtual {v0, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 393
    :try_start_3
    iget-object v0, p0, Lcom/viber/provider/contacts/ViberContactsProvider;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move v1, v2

    .line 394
    goto :goto_1

    .line 397
    :sswitch_5
    :try_start_4
    iget-object v0, p0, Lcom/viber/provider/contacts/ViberContactsProvider;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v2, "phonebookdata"

    invoke-virtual {v0, v2, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 398
    iget-object v0, p0, Lcom/viber/provider/contacts/ViberContactsProvider;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    goto :goto_1

    .line 402
    :sswitch_6
    iget-object v0, p0, Lcom/viber/provider/contacts/ViberContactsProvider;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v2, "blockednumbers"

    invoke-virtual {v0, v2, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 403
    iget-object v0, p0, Lcom/viber/provider/contacts/ViberContactsProvider;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_1

    .line 412
    :catchall_1
    move-exception v0

    move v1, v2

    goto/16 :goto_0

    .line 346
    :sswitch_data_0
    .sparse-switch
        0x12d -> :sswitch_1
        0x12e -> :sswitch_0
        0x1f5 -> :sswitch_2
        0x259 -> :sswitch_4
        0x2bd -> :sswitch_3
        0x321 -> :sswitch_5
        0x44d -> :sswitch_6
    .end sparse-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 126
    sget-object v0, Lcom/viber/provider/contacts/ViberContactsProvider;->b:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    .line 128
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown URI "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 6
    .parameter
    .parameter
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    .prologue
    const-wide/16 v4, 0x0

    .line 250
    new-instance v1, Lcom/viber/provider/g;

    invoke-virtual {p0}, Lcom/viber/provider/contacts/ViberContactsProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/viber/provider/g;-><init>(Landroid/content/Context;)V

    .line 254
    iget-object v0, p0, Lcom/viber/provider/contacts/ViberContactsProvider;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionWithListener(Landroid/database/sqlite/SQLiteTransactionListener;)V

    .line 256
    :try_start_0
    sget-object v0, Lcom/viber/provider/contacts/ViberContactsProvider;->b:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 331
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown URI "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 334
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/viber/provider/contacts/ViberContactsProvider;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    .line 258
    :sswitch_0
    :try_start_1
    iget-object v0, p0, Lcom/viber/provider/contacts/ViberContactsProvider;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v2, "calls"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 259
    cmp-long v0, v2, v4

    if-gez v0, :cond_0

    .line 260
    new-instance v0, Landroid/database/SQLException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Failed to insert row into "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 262
    :cond_0
    invoke-static {p1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 263
    invoke-virtual {v1, v0}, Lcom/viber/provider/g;->a(Landroid/net/Uri;)V

    .line 264
    iget-object v1, p0, Lcom/viber/provider/contacts/ViberContactsProvider;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 265
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "CALLS.insert: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/viber/provider/contacts/ViberContactsProvider;->a(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 334
    :goto_0
    iget-object v1, p0, Lcom/viber/provider/contacts/ViberContactsProvider;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 336
    return-object v0

    .line 269
    :sswitch_1
    :try_start_2
    const-string/jumbo v0, "phonebookcontact"

    .line 270
    iget-object v2, p0, Lcom/viber/provider/contacts/ViberContactsProvider;->a:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 271
    cmp-long v0, v2, v4

    if-gez v0, :cond_1

    .line 274
    :cond_1
    invoke-static {p1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 275
    invoke-virtual {v1, v0}, Lcom/viber/provider/g;->a(Landroid/net/Uri;)V

    .line 276
    iget-object v1, p0, Lcom/viber/provider/contacts/ViberContactsProvider;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    goto :goto_0

    .line 281
    :sswitch_2
    const-string/jumbo v0, "vibernumbers"

    .line 282
    iget-object v2, p0, Lcom/viber/provider/contacts/ViberContactsProvider;->a:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 283
    cmp-long v0, v2, v4

    if-gez v0, :cond_2

    .line 286
    :cond_2
    invoke-static {p1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 287
    invoke-virtual {v1, v0}, Lcom/viber/provider/g;->a(Landroid/net/Uri;)V

    .line 288
    iget-object v1, p0, Lcom/viber/provider/contacts/ViberContactsProvider;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    goto :goto_0

    .line 293
    :sswitch_3
    const-string/jumbo v0, "phonebookrawcontact"

    .line 294
    iget-object v2, p0, Lcom/viber/provider/contacts/ViberContactsProvider;->a:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 295
    cmp-long v0, v2, v4

    if-gez v0, :cond_3

    .line 298
    :cond_3
    invoke-static {p1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 299
    invoke-virtual {v1, v0}, Lcom/viber/provider/g;->a(Landroid/net/Uri;)V

    .line 300
    iget-object v1, p0, Lcom/viber/provider/contacts/ViberContactsProvider;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    goto :goto_0

    .line 305
    :sswitch_4
    const-string/jumbo v0, "phonebookdata"

    .line 306
    iget-object v2, p0, Lcom/viber/provider/contacts/ViberContactsProvider;->a:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 307
    cmp-long v0, v2, v4

    if-gez v0, :cond_4

    .line 310
    :cond_4
    invoke-static {p1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 311
    invoke-virtual {v1, v0}, Lcom/viber/provider/g;->a(Landroid/net/Uri;)V

    .line 312
    iget-object v1, p0, Lcom/viber/provider/contacts/ViberContactsProvider;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    goto :goto_0

    .line 317
    :sswitch_5
    const-string/jumbo v0, "blockednumbers"

    .line 318
    iget-object v2, p0, Lcom/viber/provider/contacts/ViberContactsProvider;->a:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 319
    cmp-long v0, v2, v4

    if-gez v0, :cond_5

    .line 322
    :cond_5
    invoke-static {p1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 323
    invoke-virtual {v1, v0}, Lcom/viber/provider/g;->a(Landroid/net/Uri;)V

    .line 324
    iget-object v1, p0, Lcom/viber/provider/contacts/ViberContactsProvider;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    goto/16 :goto_0

    .line 329
    :sswitch_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unsupported URI:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 256
    nop

    :sswitch_data_0
    .sparse-switch
        0x12d -> :sswitch_6
        0x12e -> :sswitch_0
        0x1f5 -> :sswitch_1
        0x259 -> :sswitch_3
        0x2bd -> :sswitch_2
        0x321 -> :sswitch_4
        0x44d -> :sswitch_5
    .end sparse-switch
.end method

.method public onCreate()Z
    .locals 2

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/viber/provider/contacts/ViberContactsProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/process/k;->a(Landroid/content/Context;)Lcom/viber/voip/process/k;

    .line 104
    :try_start_0
    invoke-virtual {p0}, Lcom/viber/provider/contacts/ViberContactsProvider;->a()Landroid/database/sqlite/SQLiteOpenHelper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/provider/contacts/ViberContactsProvider;->a:Landroid/database/sqlite/SQLiteDatabase;

    .line 106
    iget-object v0, p0, Lcom/viber/provider/contacts/ViberContactsProvider;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 108
    invoke-virtual {p0}, Lcom/viber/provider/contacts/ViberContactsProvider;->a()Landroid/database/sqlite/SQLiteOpenHelper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/provider/contacts/ViberContactsProvider;->a:Landroid/database/sqlite/SQLiteDatabase;

    .line 109
    iget-object v0, p0, Lcom/viber/provider/contacts/ViberContactsProvider;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0}, Lcom/viber/provider/contacts/ViberContactsProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->setLocale(Ljava/util/Locale;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/viber/provider/contacts/ViberContactsProvider;->a:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    return v0

    .line 111
    :catch_0
    move-exception v0

    .line 112
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/provider/contacts/ViberContactsProvider;->a(Ljava/lang/String;)V

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "All Databases: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/viber/provider/contacts/ViberContactsProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->databaseList()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/provider/contacts/ViberContactsProvider;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 116
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 135
    invoke-virtual {p0, p1, v5, v5}, Lcom/viber/provider/contacts/ViberContactsProvider;->a(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 244
    :goto_0
    return-object v5

    .line 145
    :cond_0
    new-instance v2, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v2}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 148
    sget-object v0, Lcom/viber/provider/contacts/ViberContactsProvider;->b:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 149
    sparse-switch v0, :sswitch_data_0

    .line 237
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unsupported URI:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 151
    :sswitch_0
    const-string/jumbo v0, "phonebookrawcontact"

    move-object v1, v0

    move-object v0, v2

    .line 240
    :goto_1
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 242
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v7, v5

    .line 243
    :goto_2
    iget-object v1, p0, Lcom/viber/provider/contacts/ViberContactsProvider;->a:Landroid/database/sqlite/SQLiteDatabase;

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    goto :goto_0

    .line 155
    :sswitch_1
    const-string/jumbo v0, "phonebookcontact"

    move-object v1, v0

    move-object v0, v2

    .line 156
    goto :goto_1

    .line 159
    :sswitch_2
    const-string/jumbo v0, "vibernumbers"

    move-object v1, v0

    move-object v0, v2

    .line 160
    goto :goto_1

    .line 163
    :sswitch_3
    const-string/jumbo v0, "phonebookdata"

    move-object v1, v0

    move-object v0, v2

    .line 164
    goto :goto_1

    .line 167
    :sswitch_4
    const-string/jumbo v0, "calls"

    move-object v1, v0

    move-object v0, v2

    .line 168
    goto :goto_1

    .line 171
    :sswitch_5
    const-string/jumbo v1, "calls"

    .line 172
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    .line 173
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object v0, v2

    .line 174
    goto :goto_1

    .line 177
    :sswitch_6
    const-string/jumbo v0, "calls"

    .line 178
    new-instance v1, Lcom/viber/voip/i/a/b;

    invoke-direct {v1}, Lcom/viber/voip/i/a/b;-><init>()V

    move-object v8, v0

    move-object v0, v1

    move-object v1, v8

    .line 179
    goto :goto_1

    .line 182
    :sswitch_7
    const-string/jumbo v0, "phonebookcontact"

    .line 183
    new-instance v1, Lcom/viber/voip/i/a/f;

    invoke-direct {v1}, Lcom/viber/voip/i/a/f;-><init>()V

    move-object v8, v0

    move-object v0, v1

    move-object v1, v8

    .line 184
    goto :goto_1

    .line 187
    :sswitch_8
    const-string/jumbo v0, "phonebookcontact"

    .line 188
    new-instance v1, Lcom/viber/voip/i/a/i;

    invoke-direct {v1}, Lcom/viber/voip/i/a/i;-><init>()V

    move-object v8, v0

    move-object v0, v1

    move-object v1, v8

    .line 189
    goto :goto_1

    .line 192
    :sswitch_9
    const-string/jumbo v0, "phonebookcontact"

    .line 193
    new-instance v1, Lcom/viber/voip/i/a/h;

    invoke-direct {v1}, Lcom/viber/voip/i/a/h;-><init>()V

    move-object v8, v0

    move-object v0, v1

    move-object v1, v8

    .line 194
    goto/16 :goto_1

    .line 197
    :sswitch_a
    const-string/jumbo v0, "phonebookcontact"

    .line 198
    new-instance v1, Lcom/viber/voip/i/a/g;

    invoke-direct {v1}, Lcom/viber/voip/i/a/g;-><init>()V

    move-object v8, v0

    move-object v0, v1

    move-object v1, v8

    .line 199
    goto/16 :goto_1

    .line 202
    :sswitch_b
    const-string/jumbo v0, "phonebookcontact"

    .line 203
    new-instance v1, Lcom/viber/voip/i/a/d;

    invoke-direct {v1}, Lcom/viber/voip/i/a/d;-><init>()V

    move-object v8, v0

    move-object v0, v1

    move-object v1, v8

    .line 204
    goto/16 :goto_1

    .line 207
    :sswitch_c
    const-string/jumbo v0, "phonebookcontact"

    .line 208
    new-instance v1, Lcom/viber/voip/i/a/e;

    invoke-direct {v1}, Lcom/viber/voip/i/a/e;-><init>()V

    move-object v8, v0

    move-object v0, v1

    move-object v1, v8

    .line 209
    goto/16 :goto_1

    .line 212
    :sswitch_d
    const-string/jumbo v0, "phonebookdata"

    .line 213
    new-instance v1, Lcom/viber/voip/i/a/p;

    invoke-direct {v1}, Lcom/viber/voip/i/a/p;-><init>()V

    move-object v8, v0

    move-object v0, v1

    move-object v1, v8

    .line 214
    goto/16 :goto_1

    .line 217
    :sswitch_e
    const-string/jumbo v0, "phonebookdata"

    .line 218
    new-instance v1, Lcom/viber/voip/i/a/o;

    invoke-direct {v1}, Lcom/viber/voip/i/a/o;-><init>()V

    move-object v8, v0

    move-object v0, v1

    move-object v1, v8

    .line 219
    goto/16 :goto_1

    .line 222
    :sswitch_f
    const-string/jumbo v0, "phonebookcontact"

    .line 223
    new-instance v1, Lcom/viber/voip/i/a/c;

    invoke-direct {v1}, Lcom/viber/voip/i/a/c;-><init>()V

    move-object v8, v0

    move-object v0, v1

    move-object v1, v8

    .line 224
    goto/16 :goto_1

    .line 227
    :sswitch_10
    const-string/jumbo v0, "blockednumbers"

    move-object v1, v0

    move-object v0, v2

    .line 228
    goto/16 :goto_1

    .line 231
    :sswitch_11
    const-string/jumbo v0, "blockednumbers"

    .line 232
    new-instance v1, Lcom/viber/voip/i/a/a;

    invoke-direct {v1}, Lcom/viber/voip/i/a/a;-><init>()V

    move-object v8, v0

    move-object v0, v1

    move-object v1, v8

    .line 233
    goto/16 :goto_1

    :cond_1
    move-object v7, p5

    .line 242
    goto/16 :goto_2

    .line 149
    nop

    :sswitch_data_0
    .sparse-switch
        0x12d -> :sswitch_5
        0x12e -> :sswitch_4
        0x12f -> :sswitch_6
        0x1f5 -> :sswitch_1
        0x1f7 -> :sswitch_7
        0x1f8 -> :sswitch_8
        0x1f9 -> :sswitch_a
        0x1fa -> :sswitch_9
        0x259 -> :sswitch_0
        0x25a -> :sswitch_b
        0x25b -> :sswitch_c
        0x2bd -> :sswitch_2
        0x321 -> :sswitch_3
        0x322 -> :sswitch_d
        0x323 -> :sswitch_e
        0x385 -> :sswitch_f
        0x44d -> :sswitch_10
        0x44e -> :sswitch_11
    .end sparse-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 438
    new-instance v3, Lcom/viber/provider/g;

    invoke-virtual {p0}, Lcom/viber/provider/contacts/ViberContactsProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/viber/provider/g;-><init>(Landroid/content/Context;)V

    .line 441
    iget-object v0, p0, Lcom/viber/provider/contacts/ViberContactsProvider;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionWithListener(Landroid/database/sqlite/SQLiteTransactionListener;)V

    .line 443
    :try_start_0
    sget-object v0, Lcom/viber/provider/contacts/ViberContactsProvider;->b:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 491
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unsupported URI:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 495
    :catchall_0
    move-exception v0

    :goto_0
    if-lez v1, :cond_0

    .line 496
    invoke-virtual {v3, p1}, Lcom/viber/provider/g;->a(Landroid/net/Uri;)V

    .line 498
    :cond_0
    iget-object v1, p0, Lcom/viber/provider/contacts/ViberContactsProvider;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    .line 445
    :sswitch_0
    :try_start_1
    iget-object v0, p0, Lcom/viber/provider/contacts/ViberContactsProvider;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v2, "calls"

    invoke-virtual {v0, v2, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 446
    iget-object v0, p0, Lcom/viber/provider/contacts/ViberContactsProvider;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 495
    :goto_1
    if-lez v1, :cond_1

    .line 496
    invoke-virtual {v3, p1}, Lcom/viber/provider/g;->a(Landroid/net/Uri;)V

    .line 498
    :cond_1
    iget-object v0, p0, Lcom/viber/provider/contacts/ViberContactsProvider;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 500
    return v1

    .line 450
    :sswitch_1
    :try_start_2
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 451
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "_id="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " AND ("

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v4, 0x29

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 454
    iget-object v2, p0, Lcom/viber/provider/contacts/ViberContactsProvider;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v4, "calls"

    invoke-virtual {v2, v4, p2, v0, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 455
    iget-object v0, p0, Lcom/viber/provider/contacts/ViberContactsProvider;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    goto :goto_1

    .line 451
    :cond_2
    const-string/jumbo v0, ""

    goto :goto_2

    .line 459
    :sswitch_2
    iget-object v0, p0, Lcom/viber/provider/contacts/ViberContactsProvider;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v2, "phonebookcontact"

    invoke-virtual {v0, v2, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 460
    iget-object v0, p0, Lcom/viber/provider/contacts/ViberContactsProvider;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    goto :goto_1

    .line 464
    :sswitch_3
    iget-object v0, p0, Lcom/viber/provider/contacts/ViberContactsProvider;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v2, "vibernumbers"

    invoke-virtual {v0, v2, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 465
    iget-object v0, p0, Lcom/viber/provider/contacts/ViberContactsProvider;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    goto :goto_1

    .line 469
    :sswitch_4
    iget-object v0, p0, Lcom/viber/provider/contacts/ViberContactsProvider;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v2, "phonebookrawcontact"

    invoke-virtual {v0, v2, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 470
    iget-object v0, p0, Lcom/viber/provider/contacts/ViberContactsProvider;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    goto/16 :goto_1

    .line 474
    :sswitch_5
    iget-object v0, p0, Lcom/viber/provider/contacts/ViberContactsProvider;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v2, "phonebookdata"

    invoke-virtual {v0, v2, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 475
    iget-object v0, p0, Lcom/viber/provider/contacts/ViberContactsProvider;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    goto/16 :goto_1

    .line 479
    :sswitch_6
    iget-object v0, p0, Lcom/viber/provider/contacts/ViberContactsProvider;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v2, "blockednumbers"

    invoke-virtual {v0, v2, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 480
    iget-object v0, p0, Lcom/viber/provider/contacts/ViberContactsProvider;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    goto/16 :goto_1

    .line 484
    :sswitch_7
    iget-object v0, p0, Lcom/viber/provider/contacts/ViberContactsProvider;->a:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "UPDATE phonebookcontact SET version=(version + 1)  WHERE ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez p3, :cond_3

    const-string/jumbo p3, " 1=1 "

    :cond_3
    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    if-nez p4, :cond_4

    const/4 v5, 0x0

    new-array p4, v5, [Ljava/lang/String;

    :cond_4
    invoke-virtual {v0, v4, p4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 487
    :try_start_3
    iget-object v0, p0, Lcom/viber/provider/contacts/ViberContactsProvider;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move v1, v2

    .line 488
    goto/16 :goto_1

    .line 495
    :catchall_1
    move-exception v0

    move v1, v2

    goto/16 :goto_0

    .line 443
    :sswitch_data_0
    .sparse-switch
        0x12d -> :sswitch_1
        0x12e -> :sswitch_0
        0x1f5 -> :sswitch_2
        0x259 -> :sswitch_4
        0x2bd -> :sswitch_3
        0x321 -> :sswitch_5
        0x3e9 -> :sswitch_7
        0x44d -> :sswitch_6
    .end sparse-switch
.end method
