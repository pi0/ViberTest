.class Lcom/viber/voip/contacts/c/d/b/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Lcom/viber/voip/contacts/c/d/d;

.field final synthetic b:Lcom/viber/voip/contacts/c/d/b/a;

.field private c:J

.field private d:Ljava/lang/String;

.field private e:Z

.field private f:Z


# direct methods
.method public constructor <init>(Lcom/viber/voip/contacts/c/d/b/a;Lcom/viber/voip/contacts/c/d/d;JZ)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 109
    iput-object p1, p0, Lcom/viber/voip/contacts/c/d/b/b;->b:Lcom/viber/voip/contacts/c/d/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/viber/voip/contacts/c/d/b/b;->c:J

    .line 110
    iput-wide p3, p0, Lcom/viber/voip/contacts/c/d/b/b;->c:J

    .line 111
    iput-boolean p5, p0, Lcom/viber/voip/contacts/c/d/b/b;->e:Z

    .line 112
    iput-object p2, p0, Lcom/viber/voip/contacts/c/d/b/b;->a:Lcom/viber/voip/contacts/c/d/d;

    .line 113
    return-void
.end method

.method public constructor <init>(Lcom/viber/voip/contacts/c/d/b/a;Lcom/viber/voip/contacts/c/d/d;Ljava/lang/String;Z)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 115
    iput-object p1, p0, Lcom/viber/voip/contacts/c/d/b/b;->b:Lcom/viber/voip/contacts/c/d/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/viber/voip/contacts/c/d/b/b;->c:J

    .line 116
    iput-object p2, p0, Lcom/viber/voip/contacts/c/d/b/b;->a:Lcom/viber/voip/contacts/c/d/d;

    .line 117
    iput-boolean p4, p0, Lcom/viber/voip/contacts/c/d/b/b;->e:Z

    .line 118
    iput-object p3, p0, Lcom/viber/voip/contacts/c/d/b/b;->d:Ljava/lang/String;

    .line 119
    return-void
.end method

.method private a()Lcom/viber/voip/contacts/b/b/i;
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 168
    .line 171
    :try_start_0
    sget-object v7, Lcom/viber/voip/contacts/b/b/i;->a:Lcom/viber/voip/messages/orm/creator/Creator;

    .line 172
    iget-object v0, p0, Lcom/viber/voip/contacts/c/d/b/b;->b:Lcom/viber/voip/contacts/c/d/b/a;

    invoke-static {v0}, Lcom/viber/voip/contacts/c/d/b/a;->a(Lcom/viber/voip/contacts/c/d/b/a;)Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v7}, Lcom/viber/voip/messages/orm/creator/Creator;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v7}, Lcom/viber/voip/messages/orm/creator/Creator;->getProjections()[Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "phonebookcontact._id IN (SELECT contact_id FROM phonebookdata WHERE mime_type=0 AND data2=?)"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v8, p0, Lcom/viber/voip/contacts/c/d/b/b;->d:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 178
    if-eqz v1, :cond_1

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 179
    invoke-virtual {v7, v1}, Lcom/viber/voip/messages/orm/creator/Creator;->createInstance(Landroid/database/Cursor;)Lcom/viber/voip/messages/orm/entity/Entity;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/contacts/b/b/i;

    .line 180
    invoke-virtual {v0}, Lcom/viber/voip/contacts/b/b/i;->i()Lcom/viber/voip/contacts/b/i;

    move-result-object v2

    .line 182
    if-eqz v2, :cond_0

    .line 183
    invoke-interface {v2}, Lcom/viber/voip/contacts/b/i;->a()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/viber/voip/contacts/c/d/b/b;->d:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 190
    :cond_0
    :goto_0
    invoke-static {v1}, Lcom/viber/voip/util/al;->a(Landroid/database/Cursor;)V

    .line 192
    return-object v0

    :cond_1
    move-object v0, v6

    .line 186
    goto :goto_0

    .line 190
    :catchall_0
    move-exception v0

    :goto_1
    invoke-static {v6}, Lcom/viber/voip/util/al;->a(Landroid/database/Cursor;)V

    throw v0

    :catchall_1
    move-exception v0

    move-object v6, v1

    goto :goto_1
.end method

.method private a(J)Ljava/lang/String;
    .locals 8
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 130
    .line 134
    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/contacts/c/d/b/b;->b:Lcom/viber/voip/contacts/c/d/b/a;

    invoke-static {v0}, Lcom/viber/voip/contacts/c/d/b/a;->a(Lcom/viber/voip/contacts/c/d/b/a;)Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/viber/provider/contacts/f;->a:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "data2"

    aput-object v4, v2, v3

    const-string/jumbo v3, "mime_type=0 AND contact_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 139
    if-eqz v1, :cond_0

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 143
    :goto_0
    invoke-static {v1}, Lcom/viber/voip/util/al;->a(Landroid/database/Cursor;)V

    .line 146
    return-object v0

    .line 143
    :catchall_0
    move-exception v0

    :goto_1
    invoke-static {v6}, Lcom/viber/voip/util/al;->a(Landroid/database/Cursor;)V

    throw v0

    :catchall_1
    move-exception v0

    move-object v6, v1

    goto :goto_1

    :cond_0
    move-object v0, v6

    goto :goto_0
.end method

.method private a(Lcom/viber/voip/contacts/b/b/i;)V
    .locals 2
    .parameter

    .prologue
    .line 206
    sget-object v0, Lcom/viber/voip/dk;->a:Lcom/viber/voip/dk;

    invoke-static {v0}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/contacts/c/d/b/d;

    invoke-direct {v1, p0, p1}, Lcom/viber/voip/contacts/c/d/b/d;-><init>(Lcom/viber/voip/contacts/c/d/b/b;Lcom/viber/voip/contacts/b/b/i;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 213
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/contacts/c/d/b/b;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 101
    invoke-direct {p0, p1}, Lcom/viber/voip/contacts/c/d/b/b;->b(Z)V

    return-void
.end method

.method static synthetic a(Lcom/viber/voip/contacts/c/d/b/b;)Z
    .locals 1
    .parameter

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/viber/voip/contacts/c/d/b/b;->e:Z

    return v0
.end method

.method static synthetic b(Lcom/viber/voip/contacts/c/d/b/b;)J
    .locals 2
    .parameter

    .prologue
    .line 101
    iget-wide v0, p0, Lcom/viber/voip/contacts/c/d/b/b;->c:J

    return-wide v0
.end method

.method private b(Z)V
    .locals 0
    .parameter

    .prologue
    .line 150
    invoke-direct {p0, p1}, Lcom/viber/voip/contacts/c/d/b/b;->c(Z)V

    .line 151
    return-void
.end method

.method private c(Z)V
    .locals 2
    .parameter

    .prologue
    .line 196
    sget-object v0, Lcom/viber/voip/dk;->i:Lcom/viber/voip/dk;

    invoke-static {v0}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/contacts/c/d/b/c;

    invoke-direct {v1, p0, p1}, Lcom/viber/voip/contacts/c/d/b/c;-><init>(Lcom/viber/voip/contacts/c/d/b/b;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 203
    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 4
    .parameter

    .prologue
    const-wide/16 v2, 0x0

    .line 154
    iget-wide v0, p0, Lcom/viber/voip/contacts/c/d/b/b;->c:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 155
    iget-wide v0, p0, Lcom/viber/voip/contacts/c/d/b/b;->c:J

    invoke-direct {p0, v0, v1}, Lcom/viber/voip/contacts/c/d/b/b;->a(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/contacts/c/d/b/b;->d:Ljava/lang/String;

    .line 156
    iput-wide v2, p0, Lcom/viber/voip/contacts/c/d/b/b;->c:J

    .line 159
    :cond_0
    invoke-direct {p0}, Lcom/viber/voip/contacts/c/d/b/b;->a()Lcom/viber/voip/contacts/b/b/i;

    move-result-object v0

    .line 160
    iget-boolean v1, p0, Lcom/viber/voip/contacts/c/d/b/b;->f:Z

    if-nez v1, :cond_1

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 161
    :cond_1
    invoke-direct {p0}, Lcom/viber/voip/contacts/c/d/b/b;->a()Lcom/viber/voip/contacts/b/b/i;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/contacts/c/d/b/b;->a(Lcom/viber/voip/contacts/b/b/i;)V

    .line 163
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/viber/voip/contacts/c/d/b/b;->f:Z

    .line 164
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter

    .prologue
    .line 222
    instance-of v0, p1, Lcom/viber/voip/contacts/c/d/b/b;

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/viber/voip/contacts/c/d/b/b;->a:Lcom/viber/voip/contacts/c/d/d;

    check-cast p1, Lcom/viber/voip/contacts/c/d/b/b;

    iget-object v1, p1, Lcom/viber/voip/contacts/c/d/b/b;->a:Lcom/viber/voip/contacts/c/d/d;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 225
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 217
    const/4 v0, 0x0

    return v0
.end method
