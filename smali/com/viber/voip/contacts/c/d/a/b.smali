.class Lcom/viber/voip/contacts/c/d/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Lcom/viber/voip/contacts/c/d/d;

.field final synthetic b:Lcom/viber/voip/contacts/c/d/a/a;

.field private c:J

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Z


# direct methods
.method public constructor <init>(Lcom/viber/voip/contacts/c/d/a/a;Lcom/viber/voip/contacts/c/d/d;JLjava/lang/String;Z)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 128
    iput-object p1, p0, Lcom/viber/voip/contacts/c/d/a/b;->b:Lcom/viber/voip/contacts/c/d/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/viber/voip/contacts/c/d/a/b;->c:J

    .line 129
    iput-wide p3, p0, Lcom/viber/voip/contacts/c/d/a/b;->c:J

    .line 130
    iput-object p5, p0, Lcom/viber/voip/contacts/c/d/a/b;->d:Ljava/lang/String;

    .line 131
    iput-object p2, p0, Lcom/viber/voip/contacts/c/d/a/b;->a:Lcom/viber/voip/contacts/c/d/d;

    .line 132
    iput-boolean p6, p0, Lcom/viber/voip/contacts/c/d/a/b;->f:Z

    .line 133
    return-void
.end method

.method public constructor <init>(Lcom/viber/voip/contacts/c/d/a/a;Lcom/viber/voip/contacts/c/d/d;Ljava/lang/String;Z)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 135
    iput-object p1, p0, Lcom/viber/voip/contacts/c/d/a/b;->b:Lcom/viber/voip/contacts/c/d/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/viber/voip/contacts/c/d/a/b;->c:J

    .line 136
    iput-object p2, p0, Lcom/viber/voip/contacts/c/d/a/b;->a:Lcom/viber/voip/contacts/c/d/d;

    .line 137
    iput-object p3, p0, Lcom/viber/voip/contacts/c/d/a/b;->e:Ljava/lang/String;

    .line 138
    iput-boolean p4, p0, Lcom/viber/voip/contacts/c/d/a/b;->f:Z

    .line 139
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/contacts/c/d/a/b;J)J
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 121
    iput-wide p1, p0, Lcom/viber/voip/contacts/c/d/a/b;->c:J

    return-wide p1
.end method

.method static synthetic a(Lcom/viber/voip/contacts/c/d/a/b;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 121
    iput-object p1, p0, Lcom/viber/voip/contacts/c/d/a/b;->d:Ljava/lang/String;

    return-object p1
.end method

.method private a()V
    .locals 3

    .prologue
    .line 167
    iget-object v0, p0, Lcom/viber/voip/contacts/c/d/a/b;->b:Lcom/viber/voip/contacts/c/d/a/a;

    invoke-static {v0}, Lcom/viber/voip/contacts/c/d/a/a;->a(Lcom/viber/voip/contacts/c/d/a/a;)Lcom/viber/voip/contacts/c/d/aa;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/contacts/c/d/a/b;->e:Ljava/lang/String;

    new-instance v2, Lcom/viber/voip/contacts/c/d/a/c;

    invoke-direct {v2, p0}, Lcom/viber/voip/contacts/c/d/a/c;-><init>(Lcom/viber/voip/contacts/c/d/a/b;)V

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/contacts/c/d/aa;->a(Ljava/lang/String;Lcom/viber/voip/contacts/c/d/i;)V

    .line 179
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/contacts/c/d/a/b;)V
    .locals 0
    .parameter

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/viber/voip/contacts/c/d/a/b;->b()V

    return-void
.end method

.method private b()V
    .locals 4

    .prologue
    .line 182
    iget-wide v0, p0, Lcom/viber/voip/contacts/c/d/a/b;->c:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 225
    :goto_0
    return-void

    .line 186
    :cond_0
    sget-object v0, Lcom/viber/voip/dk;->i:Lcom/viber/voip/dk;

    invoke-static {v0}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/contacts/c/d/a/d;

    invoke-direct {v1, p0}, Lcom/viber/voip/contacts/c/d/a/d;-><init>(Lcom/viber/voip/contacts/c/d/a/b;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method static synthetic b(Lcom/viber/voip/contacts/c/d/a/b;)V
    .locals 0
    .parameter

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/viber/voip/contacts/c/d/a/b;->a()V

    return-void
.end method

.method static synthetic c(Lcom/viber/voip/contacts/c/d/a/b;)Z
    .locals 1
    .parameter

    .prologue
    .line 121
    iget-boolean v0, p0, Lcom/viber/voip/contacts/c/d/a/b;->f:Z

    return v0
.end method

.method static synthetic d(Lcom/viber/voip/contacts/c/d/a/b;)J
    .locals 2
    .parameter

    .prologue
    .line 121
    iget-wide v0, p0, Lcom/viber/voip/contacts/c/d/a/b;->c:J

    return-wide v0
.end method

.method static synthetic e(Lcom/viber/voip/contacts/c/d/a/b;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 121
    iget-object v0, p0, Lcom/viber/voip/contacts/c/d/a/b;->d:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/util/Map;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 155
    iget-wide v0, p0, Lcom/viber/voip/contacts/c/d/a/b;->c:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/viber/voip/contacts/c/d/a/b;->e:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 157
    if-eqz v0, :cond_0

    .line 158
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/viber/voip/contacts/c/d/a/b;->c:J

    .line 159
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/viber/voip/contacts/c/d/a/b;->d:Ljava/lang/String;

    .line 160
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/viber/voip/contacts/c/d/a/b;->e:Ljava/lang/String;

    .line 161
    invoke-direct {p0}, Lcom/viber/voip/contacts/c/d/a/b;->b()V

    .line 164
    :cond_0
    return-void
.end method

.method public a(Ljava/util/Set;Ljava/util/Set;)V
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 142
    iget-wide v0, p0, Lcom/viber/voip/contacts/c/d/a/b;->c:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 143
    invoke-direct {p0}, Lcom/viber/voip/contacts/c/d/a/b;->b()V

    .line 152
    :cond_0
    :goto_0
    return-void

    .line 144
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/contacts/c/d/a/b;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/viber/voip/contacts/c/d/a/b;->d:Ljava/lang/String;

    const-string/jumbo v1, "\\."

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 146
    invoke-interface {p2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 147
    invoke-direct {p0}, Lcom/viber/voip/contacts/c/d/a/b;->b()V

    goto :goto_0

    .line 145
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public a(ZJJ)V
    .locals 14
    .parameter
    .parameter
    .parameter

    .prologue
    .line 230
    const-wide/16 v0, -0x1

    cmp-long v0, p2, v0

    if-eqz v0, :cond_a

    .line 231
    sget-object v6, Lcom/viber/voip/contacts/b/b/a/e;->a:Lcom/viber/voip/messages/orm/creator/Creator;

    .line 232
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 233
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 234
    iget-object v0, p0, Lcom/viber/voip/contacts/c/d/a/b;->b:Lcom/viber/voip/contacts/c/d/a/a;

    invoke-static {v0}, Lcom/viber/voip/contacts/c/d/a/a;->b(Lcom/viber/voip/contacts/c/d/a/a;)Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v6}, Lcom/viber/voip/messages/orm/creator/Creator;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v6}, Lcom/viber/voip/messages/orm/creator/Creator;->getProjections()[Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "contact_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-wide v10, p0, Lcom/viber/voip/contacts/c/d/a/b;->c:J

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 236
    if-eqz v2, :cond_5

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 238
    :cond_0
    const/4 v1, 0x1

    .line 240
    invoke-virtual {v6, v2}, Lcom/viber/voip/messages/orm/creator/Creator;->createInstance(Landroid/database/Cursor;)Lcom/viber/voip/messages/orm/entity/Entity;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/contacts/b/b/a/e;

    .line 241
    const-string/jumbo v3, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v0}, Lcom/viber/voip/contacts/b/b/a/e;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 242
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_1

    const/16 v3, 0x2c

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 243
    :cond_1
    const/16 v3, 0x27

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/viber/voip/contacts/b/b/a/e;->b()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x27

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 247
    :cond_2
    const-string/jumbo v3, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v0}, Lcom/viber/voip/contacts/b/b/a/e;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Lcom/viber/voip/contacts/b/b/a/e;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 249
    const/4 v1, 0x0

    .line 253
    :cond_3
    if-eqz v1, :cond_4

    .line 254
    invoke-interface {v8, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 256
    :cond_4
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 258
    :cond_5
    invoke-static {v2}, Lcom/viber/voip/util/al;->a(Landroid/database/Cursor;)V

    .line 260
    const/4 v7, 0x0

    .line 261
    const/4 v6, 0x0

    .line 263
    sget-object v10, Lcom/viber/voip/contacts/b/b/a/a;->D:Lcom/viber/voip/messages/orm/creator/CreatorHelper;

    .line 264
    iget-object v0, p0, Lcom/viber/voip/contacts/c/d/a/b;->b:Lcom/viber/voip/contacts/c/d/a/a;

    invoke-static {v0}, Lcom/viber/voip/contacts/c/d/a/a;->b(Lcom/viber/voip/contacts/c/d/a/a;)Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v10}, Lcom/viber/voip/messages/orm/creator/Creator;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v10}, Lcom/viber/voip/messages/orm/creator/Creator;->getProjections()[Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-wide v11, p0, Lcom/viber/voip/contacts/c/d/a/b;->c:J

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 266
    if-eqz v2, :cond_b

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 267
    invoke-virtual {v10, v2}, Lcom/viber/voip/messages/orm/creator/Creator;->createInstance(Landroid/database/Cursor;)Lcom/viber/voip/messages/orm/entity/Entity;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/contacts/b/b/a/a;

    .line 268
    invoke-virtual {v0}, Lcom/viber/voip/contacts/b/b/a/a;->x()I

    move-result v1

    .line 269
    invoke-virtual {v0}, Lcom/viber/voip/contacts/b/b/a/a;->u()Z

    move-result v6

    move v7, v1

    .line 271
    :goto_0
    invoke-static {v2}, Lcom/viber/voip/util/al;->a(Landroid/database/Cursor;)V

    .line 273
    sget-object v10, Lcom/viber/voip/contacts/b/b/k;->a:Lcom/viber/voip/messages/orm/creator/CreatorHelper;

    .line 274
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 275
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 276
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 277
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "phonebookdata.data1 IN ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") OR "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "phonebookdata"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "data2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " IN ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 280
    iget-object v0, p0, Lcom/viber/voip/contacts/c/d/a/b;->b:Lcom/viber/voip/contacts/c/d/a/a;

    invoke-static {v0}, Lcom/viber/voip/contacts/c/d/a/a;->b(Lcom/viber/voip/contacts/c/d/a/a;)Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v10}, Lcom/viber/voip/messages/orm/creator/CreatorHelper;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v10}, Lcom/viber/voip/messages/orm/creator/CreatorHelper;->getProjections()[Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 282
    if-eqz v1, :cond_8

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 284
    :cond_6
    invoke-virtual {v10, v1}, Lcom/viber/voip/messages/orm/creator/CreatorHelper;->createInstance(Landroid/database/Cursor;)Lcom/viber/voip/messages/orm/entity/Entity;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/contacts/b/b/k;

    .line 285
    invoke-virtual {v0}, Lcom/viber/voip/contacts/b/b/k;->f()Lcom/viber/voip/contacts/b/i;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 286
    invoke-virtual {v0}, Lcom/viber/voip/contacts/b/b/k;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/viber/voip/contacts/b/b/k;->f()Lcom/viber/voip/contacts/b/i;

    move-result-object v3

    invoke-interface {v9, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    invoke-virtual {v0}, Lcom/viber/voip/contacts/b/b/k;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/viber/voip/contacts/b/b/k;->f()Lcom/viber/voip/contacts/b/i;

    move-result-object v3

    invoke-interface {v9, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    :cond_7
    invoke-virtual {v0}, Lcom/viber/voip/contacts/b/b/k;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/viber/voip/contacts/b/b/k;->h()Lcom/viber/voip/contacts/b/a;

    move-result-object v0

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v11, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_6

    .line 292
    :cond_8
    invoke-static {v1}, Lcom/viber/voip/util/al;->a(Landroid/database/Cursor;)V

    .line 294
    new-instance v0, Lcom/viber/voip/contacts/b/b/i;

    iget-object v1, p0, Lcom/viber/voip/contacts/c/d/a/b;->b:Lcom/viber/voip/contacts/c/d/a/a;

    invoke-static {v1}, Lcom/viber/voip/contacts/c/d/a/a;->b(Lcom/viber/voip/contacts/c/d/a/a;)Lcom/viber/voip/ViberApplication;

    move-result-object v1

    move-object v2, v8

    move-object v3, v9

    move-object v4, v11

    move v5, v7

    invoke-direct/range {v0 .. v6}, Lcom/viber/voip/contacts/b/b/i;-><init>(Lcom/viber/voip/ViberApplication;Ljava/util/Set;Ljava/util/Map;Ljava/util/Map;IZ)V

    .line 304
    :goto_2
    sget-object v1, Lcom/viber/voip/dk;->a:Lcom/viber/voip/dk;

    invoke-static {v1}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/viber/voip/contacts/c/d/a/e;

    invoke-direct {v2, p0, p1, v0}, Lcom/viber/voip/contacts/c/d/a/e;-><init>(Lcom/viber/voip/contacts/c/d/a/b;ZLcom/viber/voip/contacts/b/b/i;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 311
    return-void

    .line 289
    :cond_9
    const/4 v0, 0x0

    goto :goto_1

    .line 301
    :cond_a
    const/4 v0, 0x0

    goto :goto_2

    :cond_b
    move v13, v6

    move v6, v7

    move v7, v13

    goto/16 :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter

    .prologue
    .line 320
    instance-of v0, p1, Lcom/viber/voip/contacts/c/d/a/b;

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/viber/voip/contacts/c/d/a/b;->a:Lcom/viber/voip/contacts/c/d/d;

    check-cast p1, Lcom/viber/voip/contacts/c/d/a/b;

    iget-object v1, p1, Lcom/viber/voip/contacts/c/d/a/b;->a:Lcom/viber/voip/contacts/c/d/d;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 323
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 315
    const/4 v0, 0x0

    return v0
.end method
