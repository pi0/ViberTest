.class public Lcom/viber/service/contacts/sync/c/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/viber/service/contacts/sync/c/a;

.field private final b:Landroid/content/ContentValues;

.field private final c:Lcom/viber/service/contacts/a;

.field private final d:Landroid/content/Context;

.field private e:Z

.field private f:J

.field private g:I

.field private h:Z

.field private i:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;ZLcom/viber/service/contacts/a;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 88
    invoke-direct {p0, p1, p6, p7}, Lcom/viber/service/contacts/sync/c/e;-><init>(Landroid/content/Context;ZLcom/viber/service/contacts/a;)V

    .line 89
    iget-object v0, p0, Lcom/viber/service/contacts/sync/c/e;->c:Lcom/viber/service/contacts/a;

    invoke-virtual {v0}, Lcom/viber/service/contacts/a;->a()I

    move-result v0

    iput v0, p0, Lcom/viber/service/contacts/sync/c/e;->g:I

    .line 90
    iput-boolean v3, p0, Lcom/viber/service/contacts/sync/c/e;->h:Z

    .line 91
    iget-object v0, p0, Lcom/viber/service/contacts/sync/c/e;->b:Landroid/content/ContentValues;

    const-string/jumbo v1, "sourceid"

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/viber/service/contacts/sync/c/e;->b:Landroid/content/ContentValues;

    const-string/jumbo v1, "sync1"

    invoke-virtual {v0, v1, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/viber/service/contacts/sync/c/e;->b:Landroid/content/ContentValues;

    const-string/jumbo v1, "account_type"

    const v2, 0x7f0c07ad

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lcom/viber/service/contacts/sync/c/e;->b:Landroid/content/ContentValues;

    const-string/jumbo v1, "account_name"

    invoke-virtual {v0, v1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    sget-object v0, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p6, v3}, Lcom/viber/service/contacts/sync/c/e;->a(Landroid/net/Uri;ZZ)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/service/contacts/sync/c/e;->b:Landroid/content/ContentValues;

    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 96
    iget-object v1, p0, Lcom/viber/service/contacts/sync/c/e;->c:Lcom/viber/service/contacts/a;

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/viber/service/contacts/a;->a(Landroid/content/ContentProviderOperation;)V

    .line 97
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;JZLcom/viber/service/contacts/a;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 101
    invoke-direct {p0, p1, p4, p5}, Lcom/viber/service/contacts/sync/c/e;-><init>(Landroid/content/Context;ZLcom/viber/service/contacts/a;)V

    .line 102
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/viber/service/contacts/sync/c/e;->h:Z

    .line 103
    iput-wide p2, p0, Lcom/viber/service/contacts/sync/c/e;->f:J

    .line 104
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLcom/viber/service/contacts/a;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/viber/service/contacts/sync/c/e;->b:Landroid/content/ContentValues;

    .line 78
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/viber/service/contacts/sync/c/e;->i:Z

    .line 79
    iput-boolean p2, p0, Lcom/viber/service/contacts/sync/c/e;->e:Z

    .line 80
    iput-object p1, p0, Lcom/viber/service/contacts/sync/c/e;->d:Landroid/content/Context;

    .line 81
    iput-object p3, p0, Lcom/viber/service/contacts/sync/c/e;->c:Lcom/viber/service/contacts/a;

    .line 83
    new-instance v0, Lcom/viber/service/contacts/sync/c/a;

    iget-object v1, p0, Lcom/viber/service/contacts/sync/c/e;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/viber/service/contacts/sync/c/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/viber/service/contacts/sync/c/e;->a:Lcom/viber/service/contacts/sync/c/a;

    .line 84
    return-void
.end method

.method public static a(Landroid/net/Uri;ZZ)Landroid/content/ContentProviderOperation$Builder;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 433
    invoke-static {p0, p1}, Lcom/viber/service/contacts/sync/c/e;->a(Landroid/net/Uri;Z)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/ContentProviderOperation$Builder;->withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/net/Uri;Z)Landroid/net/Uri;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 445
    if-eqz p1, :cond_0

    .line 455
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "caller_is_syncadapter"

    const-string/jumbo v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    .line 457
    :cond_0
    return-object p0
.end method

.method public static a(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;ZLcom/viber/service/contacts/a;)Lcom/viber/service/contacts/sync/c/e;
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 59
    new-instance v0, Lcom/viber/service/contacts/sync/c/e;

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/viber/service/contacts/sync/c/e;-><init>(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;ZLcom/viber/service/contacts/a;)V

    return-object v0
.end method

.method private a()V
    .locals 4

    .prologue
    .line 397
    iget-boolean v0, p0, Lcom/viber/service/contacts/sync/c/e;->h:Z

    if-nez v0, :cond_0

    .line 398
    iget-object v0, p0, Lcom/viber/service/contacts/sync/c/e;->b:Landroid/content/ContentValues;

    const-string/jumbo v1, "raw_contact_id"

    iget-wide v2, p0, Lcom/viber/service/contacts/sync/c/e;->f:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 400
    :cond_0
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    iget-boolean v1, p0, Lcom/viber/service/contacts/sync/c/e;->e:Z

    iget-boolean v2, p0, Lcom/viber/service/contacts/sync/c/e;->i:Z

    invoke-static {v0, v1, v2}, Lcom/viber/service/contacts/sync/c/e;->a(Landroid/net/Uri;ZZ)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 401
    iget-object v1, p0, Lcom/viber/service/contacts/sync/c/e;->b:Landroid/content/ContentValues;

    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 402
    iget-boolean v1, p0, Lcom/viber/service/contacts/sync/c/e;->h:Z

    if-eqz v1, :cond_1

    .line 403
    const-string/jumbo v1, "raw_contact_id"

    iget v2, p0, Lcom/viber/service/contacts/sync/c/e;->g:I

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 405
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/viber/service/contacts/sync/c/e;->i:Z

    .line 406
    iget-object v1, p0, Lcom/viber/service/contacts/sync/c/e;->c:Lcom/viber/service/contacts/a;

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/viber/service/contacts/a;->a(Landroid/content/ContentProviderOperation;)V

    .line 407
    return-void
.end method

.method private a(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 411
    iget-boolean v0, p0, Lcom/viber/service/contacts/sync/c/e;->h:Z

    if-nez v0, :cond_0

    .line 412
    iget-object v0, p0, Lcom/viber/service/contacts/sync/c/e;->b:Landroid/content/ContentValues;

    iget-wide v1, p0, Lcom/viber/service/contacts/sync/c/e;->f:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 414
    :cond_0
    iget-boolean v0, p0, Lcom/viber/service/contacts/sync/c/e;->e:Z

    iget-boolean v1, p0, Lcom/viber/service/contacts/sync/c/e;->i:Z

    invoke-static {p1, v0, v1}, Lcom/viber/service/contacts/sync/c/e;->b(Landroid/net/Uri;ZZ)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 415
    iget-object v1, p0, Lcom/viber/service/contacts/sync/c/e;->b:Landroid/content/ContentValues;

    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 416
    iget-boolean v1, p0, Lcom/viber/service/contacts/sync/c/e;->h:Z

    if-eqz v1, :cond_1

    .line 417
    iget v1, p0, Lcom/viber/service/contacts/sync/c/e;->g:I

    invoke-virtual {v0, p2, v1}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 419
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/viber/service/contacts/sync/c/e;->i:Z

    .line 420
    iget-object v1, p0, Lcom/viber/service/contacts/sync/c/e;->c:Lcom/viber/service/contacts/a;

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/viber/service/contacts/a;->a(Landroid/content/ContentProviderOperation;)V

    .line 421
    return-void
.end method

.method public static b(Landroid/net/Uri;ZZ)Landroid/content/ContentProviderOperation$Builder;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 437
    invoke-static {p0, p1}, Lcom/viber/service/contacts/sync/c/e;->a(Landroid/net/Uri;Z)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/ContentProviderOperation$Builder;->withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static c(Landroid/net/Uri;ZZ)Landroid/content/ContentProviderOperation$Builder;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 441
    invoke-static {p0, p1}, Lcom/viber/service/contacts/sync/c/e;->a(Landroid/net/Uri;Z)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/ContentProviderOperation$Builder;->withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(J)Lcom/viber/service/contacts/sync/c/e;
    .locals 3
    .parameter

    .prologue
    .line 173
    iget-object v0, p0, Lcom/viber/service/contacts/sync/c/e;->b:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 174
    iget-object v0, p0, Lcom/viber/service/contacts/sync/c/e;->b:Landroid/content/ContentValues;

    const-string/jumbo v1, "data1"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 175
    iget-object v0, p0, Lcom/viber/service/contacts/sync/c/e;->b:Landroid/content/ContentValues;

    const-string/jumbo v1, "mimetype"

    const-string/jumbo v2, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    invoke-direct {p0}, Lcom/viber/service/contacts/sync/c/e;->a()V

    .line 177
    return-object p0
.end method

.method public a(JLjava/lang/String;)Lcom/viber/service/contacts/sync/c/e;
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 192
    iget-object v0, p0, Lcom/viber/service/contacts/sync/c/e;->b:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 193
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/viber/service/contacts/sync/c/e;->b:Landroid/content/ContentValues;

    const-string/jumbo v1, "data1"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, v2, v2}, Lcom/viber/service/contacts/sync/c/e;->b(Landroid/net/Uri;ZZ)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string/jumbo v1, "_id=?"

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/service/contacts/sync/c/e;->b:Landroid/content/ContentValues;

    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 197
    iget-object v1, p0, Lcom/viber/service/contacts/sync/c/e;->c:Lcom/viber/service/contacts/a;

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/viber/service/contacts/a;->a(Landroid/content/ContentProviderOperation;)V

    .line 199
    :cond_0
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/viber/service/contacts/sync/c/e;
    .locals 3
    .parameter

    .prologue
    .line 119
    iget-object v0, p0, Lcom/viber/service/contacts/sync/c/e;->b:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 121
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/viber/service/contacts/sync/c/e;->b:Landroid/content/ContentValues;

    const-string/jumbo v1, "data1"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/viber/service/contacts/sync/c/e;->b:Landroid/content/ContentValues;

    const-string/jumbo v1, "mimetype"

    const-string/jumbo v2, "vnd.android.cursor.item/name"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/viber/service/contacts/sync/c/e;->b:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 126
    invoke-direct {p0}, Lcom/viber/service/contacts/sync/c/e;->a()V

    .line 128
    :cond_1
    return-object p0
.end method

.method public a(Ljava/lang/String;I)Lcom/viber/service/contacts/sync/c/e;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 156
    iget-object v0, p0, Lcom/viber/service/contacts/sync/c/e;->b:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 157
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/viber/service/contacts/sync/c/e;->b:Landroid/content/ContentValues;

    const-string/jumbo v1, "data1"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    iget-object v0, p0, Lcom/viber/service/contacts/sync/c/e;->b:Landroid/content/ContentValues;

    const-string/jumbo v1, "data2"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 160
    iget-object v0, p0, Lcom/viber/service/contacts/sync/c/e;->b:Landroid/content/ContentValues;

    const-string/jumbo v1, "mimetype"

    const-string/jumbo v2, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    invoke-direct {p0}, Lcom/viber/service/contacts/sync/c/e;->a()V

    .line 163
    :cond_0
    return-object p0
.end method

.method public b(J)Lcom/viber/service/contacts/sync/c/e;
    .locals 3
    .parameter

    .prologue
    .line 241
    iget-object v0, p0, Lcom/viber/service/contacts/sync/c/e;->b:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 242
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/viber/service/contacts/sync/c/e;->b:Landroid/content/ContentValues;

    const-string/jumbo v1, "type"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 244
    iget-object v0, p0, Lcom/viber/service/contacts/sync/c/e;->b:Landroid/content/ContentValues;

    const-string/jumbo v1, "raw_contact_id1"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 245
    sget-object v0, Landroid/provider/ContactsContract$AggregationExceptions;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v1, "raw_contact_id2"

    invoke-direct {p0, v0, v1}, Lcom/viber/service/contacts/sync/c/e;->a(Landroid/net/Uri;Ljava/lang/String;)V

    .line 247
    :cond_0
    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/viber/service/contacts/sync/c/e;
    .locals 6
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 181
    iget-object v0, p0, Lcom/viber/service/contacts/sync/c/e;->b:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 182
    iget-boolean v0, p0, Lcom/viber/service/contacts/sync/c/e;->h:Z

    if-nez v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/viber/service/contacts/sync/c/e;->b:Landroid/content/ContentValues;

    const-string/jumbo v1, "sync1"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    sget-object v0, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, v2, v2}, Lcom/viber/service/contacts/sync/c/e;->b(Landroid/net/Uri;ZZ)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string/jumbo v1, "_id=?"

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-wide v4, p0, Lcom/viber/service/contacts/sync/c/e;->f:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/service/contacts/sync/c/e;->b:Landroid/content/ContentValues;

    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 186
    iget-object v1, p0, Lcom/viber/service/contacts/sync/c/e;->c:Lcom/viber/service/contacts/a;

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/viber/service/contacts/a;->a(Landroid/content/ContentProviderOperation;)V

    .line 188
    :cond_0
    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/viber/service/contacts/sync/c/e;
    .locals 2
    .parameter

    .prologue
    .line 208
    iget-object v0, p0, Lcom/viber/service/contacts/sync/c/e;->b:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 209
    iget-object v0, p0, Lcom/viber/service/contacts/sync/c/e;->a:Lcom/viber/service/contacts/sync/c/a;

    iget-object v1, p0, Lcom/viber/service/contacts/sync/c/e;->b:Landroid/content/ContentValues;

    invoke-virtual {v0, v1, p1}, Lcom/viber/service/contacts/sync/c/a;->a(Landroid/content/ContentValues;Ljava/lang/String;)Landroid/content/ContentValues;

    .line 210
    invoke-direct {p0}, Lcom/viber/service/contacts/sync/c/e;->a()V

    .line 211
    return-object p0
.end method

.method public c(J)V
    .locals 5
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 251
    iget-boolean v0, p0, Lcom/viber/service/contacts/sync/c/e;->h:Z

    if-nez v0, :cond_0

    .line 252
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    iget-boolean v1, p0, Lcom/viber/service/contacts/sync/c/e;->e:Z

    invoke-static {v0, v1, v2}, Lcom/viber/service/contacts/sync/c/e;->c(Landroid/net/Uri;ZZ)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string/jumbo v1, "_id=?"

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 254
    iget-object v1, p0, Lcom/viber/service/contacts/sync/c/e;->c:Lcom/viber/service/contacts/a;

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/viber/service/contacts/a;->a(Landroid/content/ContentProviderOperation;)V

    .line 256
    :cond_0
    return-void
.end method

.method public d(Ljava/lang/String;)Lcom/viber/service/contacts/sync/c/e;
    .locals 2
    .parameter

    .prologue
    .line 220
    iget-object v0, p0, Lcom/viber/service/contacts/sync/c/e;->b:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 221
    iget-object v0, p0, Lcom/viber/service/contacts/sync/c/e;->a:Lcom/viber/service/contacts/sync/c/a;

    iget-object v1, p0, Lcom/viber/service/contacts/sync/c/e;->b:Landroid/content/ContentValues;

    invoke-virtual {v0, v1, p1}, Lcom/viber/service/contacts/sync/c/a;->b(Landroid/content/ContentValues;Ljava/lang/String;)Landroid/content/ContentValues;

    .line 222
    invoke-direct {p0}, Lcom/viber/service/contacts/sync/c/e;->a()V

    .line 223
    return-object p0
.end method

.method public e(Ljava/lang/String;)Lcom/viber/service/contacts/sync/c/e;
    .locals 2
    .parameter

    .prologue
    .line 227
    iget-object v0, p0, Lcom/viber/service/contacts/sync/c/e;->b:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 228
    iget-object v0, p0, Lcom/viber/service/contacts/sync/c/e;->a:Lcom/viber/service/contacts/sync/c/a;

    iget-object v1, p0, Lcom/viber/service/contacts/sync/c/e;->b:Landroid/content/ContentValues;

    invoke-virtual {v0, v1, p1}, Lcom/viber/service/contacts/sync/c/a;->c(Landroid/content/ContentValues;Ljava/lang/String;)Landroid/content/ContentValues;

    .line 229
    invoke-direct {p0}, Lcom/viber/service/contacts/sync/c/e;->a()V

    .line 230
    return-object p0
.end method

.method public f(Ljava/lang/String;)Lcom/viber/service/contacts/sync/c/e;
    .locals 2
    .parameter

    .prologue
    .line 234
    iget-object v0, p0, Lcom/viber/service/contacts/sync/c/e;->b:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 235
    iget-object v0, p0, Lcom/viber/service/contacts/sync/c/e;->a:Lcom/viber/service/contacts/sync/c/a;

    iget-object v1, p0, Lcom/viber/service/contacts/sync/c/e;->b:Landroid/content/ContentValues;

    invoke-virtual {v0, v1, p1}, Lcom/viber/service/contacts/sync/c/a;->d(Landroid/content/ContentValues;Ljava/lang/String;)Landroid/content/ContentValues;

    .line 236
    invoke-direct {p0}, Lcom/viber/service/contacts/sync/c/e;->a()V

    .line 237
    return-object p0
.end method
