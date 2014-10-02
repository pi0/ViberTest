.class public Lcom/viber/voip/billing/cn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/billing/cm;


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:[Ljava/lang/String;


# instance fields
.field private c:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 20
    const-class v0, Lcom/viber/voip/billing/cn;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/billing/cn;->a:Ljava/lang/String;

    .line 26
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "order_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "type"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "category"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "package_name"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "product_id"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "purchase_time"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "purchase_state"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "dev_payload"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "token"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "json"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "signature"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "verified"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "consumed"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "pending"

    aput-object v2, v0, v1

    sput-object v0, Lcom/viber/voip/billing/cn;->b:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/provider/messages/ViberMessagesProvider;->a(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/billing/cn;->c:Landroid/database/sqlite/SQLiteDatabase;

    .line 66
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 173
    return-void
.end method

.method private a(Landroid/database/Cursor;)[Lcom/viber/voip/billing/bu;
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 132
    invoke-static {p1}, Lcom/viber/voip/util/al;->b(Landroid/database/Cursor;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 133
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    new-array v2, v1, [Lcom/viber/voip/billing/bu;

    .line 136
    :goto_0
    add-int/lit8 v1, v0, 0x1

    invoke-direct {p0, p1}, Lcom/viber/voip/billing/cn;->b(Landroid/database/Cursor;)Lcom/viber/voip/billing/bu;

    move-result-object v3

    aput-object v3, v2, v0

    .line 137
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_1

    move-object v0, v2

    .line 141
    :goto_1
    invoke-static {p1}, Lcom/viber/voip/util/al;->a(Landroid/database/Cursor;)V

    .line 142
    return-object v0

    .line 139
    :cond_0
    new-array v0, v0, [Lcom/viber/voip/billing/bu;

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private b(Landroid/database/Cursor;)Lcom/viber/voip/billing/bu;
    .locals 14
    .parameter

    .prologue
    .line 146
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 151
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 152
    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/billing/bn;->a(Ljava/lang/String;)Lcom/viber/voip/billing/bn;

    move-result-object v3

    .line 153
    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 154
    const/4 v0, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 155
    const/4 v0, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 156
    const/16 v0, 0x8

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 157
    const/16 v0, 0x9

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 158
    const/16 v0, 0xa

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 160
    const/16 v0, 0xb

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v11, 0x1

    .line 161
    :goto_0
    const/16 v0, 0xc

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v12, 0x1

    .line 162
    :goto_1
    const/16 v0, 0xd

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v13, 0x1

    .line 164
    :goto_2
    new-instance v0, Lcom/viber/voip/billing/bu;

    invoke-direct/range {v0 .. v13}, Lcom/viber/voip/billing/bu;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/viber/voip/billing/bn;JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)V

    .line 165
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/viber/voip/billing/bu;->d(Z)V

    .line 166
    return-object v0

    .line 160
    :cond_0
    const/4 v11, 0x0

    goto :goto_0

    .line 161
    :cond_1
    const/4 v12, 0x0

    goto :goto_1

    .line 162
    :cond_2
    const/4 v13, 0x0

    goto :goto_2
.end method


# virtual methods
.method public a(Lcom/viber/voip/billing/bu;)V
    .locals 7
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "savePurchase "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/viber/voip/billing/bu;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "UPDATE "

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/billing/cn;->a(Ljava/lang/String;)V

    .line 101
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 102
    const-string/jumbo v0, "order_id"

    invoke-virtual {p1}, Lcom/viber/voip/billing/bu;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const-string/jumbo v0, "type"

    invoke-virtual {p1}, Lcom/viber/voip/billing/bu;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    const-string/jumbo v0, "category"

    invoke-virtual {p1}, Lcom/viber/voip/billing/bu;->d()Lcom/viber/voip/billing/bn;

    move-result-object v4

    invoke-virtual {v4}, Lcom/viber/voip/billing/bn;->a()Lcom/viber/voip/billing/bt;

    move-result-object v4

    invoke-virtual {v4}, Lcom/viber/voip/billing/bt;->a()Lcom/viber/voip/billing/bp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/viber/voip/billing/bp;->ordinal()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 105
    const-string/jumbo v0, "package_name"

    invoke-virtual {p1}, Lcom/viber/voip/billing/bu;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    const-string/jumbo v0, "product_id"

    invoke-virtual {p1}, Lcom/viber/voip/billing/bu;->d()Lcom/viber/voip/billing/bn;

    move-result-object v4

    invoke-virtual {v4}, Lcom/viber/voip/billing/bn;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    const-string/jumbo v0, "purchase_time"

    invoke-virtual {p1}, Lcom/viber/voip/billing/bu;->e()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 108
    const-string/jumbo v0, "purchase_state"

    invoke-virtual {p1}, Lcom/viber/voip/billing/bu;->f()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 109
    const-string/jumbo v0, "dev_payload"

    invoke-virtual {p1}, Lcom/viber/voip/billing/bu;->g()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    const-string/jumbo v0, "token"

    invoke-virtual {p1}, Lcom/viber/voip/billing/bu;->h()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    const-string/jumbo v0, "json"

    invoke-virtual {p1}, Lcom/viber/voip/billing/bu;->i()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    const-string/jumbo v0, "signature"

    invoke-virtual {p1}, Lcom/viber/voip/billing/bu;->j()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const-string/jumbo v4, "verified"

    invoke-virtual {p1}, Lcom/viber/voip/billing/bu;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 114
    const-string/jumbo v4, "consumed"

    invoke-virtual {p1}, Lcom/viber/voip/billing/bu;->l()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 115
    const-string/jumbo v4, "pending"

    invoke-virtual {p1}, Lcom/viber/voip/billing/bu;->m()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 117
    invoke-virtual {p1}, Lcom/viber/voip/billing/bu;->n()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 118
    iget-object v0, p0, Lcom/viber/voip/billing/cn;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v4, "purchase"

    const-string/jumbo v5, "order_id = ?"

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {p1}, Lcom/viber/voip/billing/bu;->b()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v2

    invoke-virtual {v0, v4, v3, v5, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 123
    :goto_4
    return-void

    .line 100
    :cond_0
    const-string/jumbo v0, "INSERT "

    goto/16 :goto_0

    :cond_1
    move v0, v2

    .line 113
    goto :goto_1

    :cond_2
    move v0, v2

    .line 114
    goto :goto_2

    :cond_3
    move v0, v2

    .line 115
    goto :goto_3

    .line 120
    :cond_4
    iget-object v0, p0, Lcom/viber/voip/billing/cn;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v2, "purchase"

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 121
    invoke-virtual {p1, v1}, Lcom/viber/voip/billing/bu;->d(Z)V

    goto :goto_4
.end method

.method public a()[Lcom/viber/voip/billing/bu;
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 82
    iget-object v0, p0, Lcom/viber/voip/billing/cn;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v1, "purchase"

    sget-object v2, Lcom/viber/voip/billing/cn;->b:[Ljava/lang/String;

    const-string/jumbo v3, "pending = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "1"

    aput-object v7, v4, v6

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 83
    invoke-direct {p0, v0}, Lcom/viber/voip/billing/cn;->a(Landroid/database/Cursor;)[Lcom/viber/voip/billing/bu;

    move-result-object v0

    return-object v0
.end method
