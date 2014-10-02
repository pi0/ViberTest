.class public Lcom/viber/voip/calls/entities/impl/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:[Ljava/lang/String;

.field private static c:I

.field private static d:I

.field private static e:I

.field private static f:Z

.field private static g:Z

.field private static h:Z

.field private static i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x7

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 24
    const-class v0, Lcom/viber/voip/calls/entities/impl/e;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/calls/entities/impl/e;->a:Ljava/lang/String;

    .line 28
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    aput-object v1, v0, v3

    const-string/jumbo v1, "name"

    aput-object v1, v0, v4

    const/4 v1, 0x2

    const-string/jumbo v2, "numberlabel"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "numbertype"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "number"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "date"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "duration"

    aput-object v2, v0, v1

    const-string/jumbo v1, "type"

    aput-object v1, v0, v5

    sput-object v0, Lcom/viber/voip/calls/entities/impl/e;->b:[Ljava/lang/String;

    .line 50
    sput v5, Lcom/viber/voip/calls/entities/impl/e;->c:I

    .line 56
    sput-boolean v3, Lcom/viber/voip/calls/entities/impl/e;->f:Z

    .line 57
    sput-boolean v3, Lcom/viber/voip/calls/entities/impl/e;->g:Z

    .line 58
    sput-boolean v4, Lcom/viber/voip/calls/entities/impl/e;->h:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    return-void
.end method

.method public static a(Lcom/viber/voip/ViberApplication;)V
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 62
    sget-boolean v0, Lcom/viber/voip/calls/entities/impl/e;->i:Z

    if-eqz v0, :cond_0

    .line 93
    :goto_0
    return-void

    .line 66
    :cond_0
    sput-boolean v7, Lcom/viber/voip/calls/entities/impl/e;->i:Z

    .line 69
    :try_start_0
    invoke-virtual {p0}, Lcom/viber/voip/ViberApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 70
    if-eqz v1, :cond_2

    .line 71
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 72
    const/4 v0, 0x0

    .line 73
    const-string/jumbo v3, "lookup_uri"

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 74
    const/4 v0, 0x1

    sput-boolean v0, Lcom/viber/voip/calls/entities/impl/e;->g:Z

    .line 77
    sget v0, Lcom/viber/voip/calls/entities/impl/e;->c:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/viber/voip/calls/entities/impl/e;->d:I

    .line 78
    sget-object v0, Lcom/viber/voip/calls/entities/impl/e;->b:[Ljava/lang/String;

    const-string/jumbo v3, "lookup_uri"

    const-class v4, Ljava/lang/String;

    invoke-static {v0, v3, v4}, Lcom/viber/voip/util/e;->a([Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    sput-object v0, Lcom/viber/voip/calls/entities/impl/e;->b:[Ljava/lang/String;

    move v0, v7

    .line 80
    :cond_1
    const-string/jumbo v3, "raw_contact_id"

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 81
    const/4 v2, 0x1

    sput-boolean v2, Lcom/viber/voip/calls/entities/impl/e;->f:Z

    .line 82
    add-int/lit8 v0, v0, 0x1

    .line 84
    sget v2, Lcom/viber/voip/calls/entities/impl/e;->c:I

    add-int/2addr v0, v2

    sput v0, Lcom/viber/voip/calls/entities/impl/e;->e:I

    .line 85
    sget-object v0, Lcom/viber/voip/calls/entities/impl/e;->b:[Ljava/lang/String;

    const-string/jumbo v2, "raw_contact_id"

    const-class v3, Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/viber/voip/util/e;->a([Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    sput-object v0, Lcom/viber/voip/calls/entities/impl/e;->b:[Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 91
    :cond_2
    invoke-static {v1}, Lcom/viber/voip/util/al;->a(Landroid/database/Cursor;)V

    goto :goto_0

    .line 88
    :catch_0
    move-exception v0

    move-object v0, v6

    .line 91
    :goto_1
    invoke-static {v0}, Lcom/viber/voip/util/al;->a(Landroid/database/Cursor;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v6

    :goto_2
    invoke-static {v1}, Lcom/viber/voip/util/al;->a(Landroid/database/Cursor;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_2

    .line 88
    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_1
.end method

.method static synthetic a()Z
    .locals 1

    .prologue
    .line 22
    sget-boolean v0, Lcom/viber/voip/calls/entities/impl/e;->g:Z

    return v0
.end method

.method static synthetic b()I
    .locals 1

    .prologue
    .line 22
    sget v0, Lcom/viber/voip/calls/entities/impl/e;->d:I

    return v0
.end method

.method static synthetic c()Z
    .locals 1

    .prologue
    .line 22
    sget-boolean v0, Lcom/viber/voip/calls/entities/impl/e;->f:Z

    return v0
.end method

.method static synthetic d()I
    .locals 1

    .prologue
    .line 22
    sget v0, Lcom/viber/voip/calls/entities/impl/e;->e:I

    return v0
.end method

.method static synthetic e()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/viber/voip/calls/entities/impl/e;->b:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f()Z
    .locals 1

    .prologue
    .line 22
    sget-boolean v0, Lcom/viber/voip/calls/entities/impl/e;->h:Z

    return v0
.end method
