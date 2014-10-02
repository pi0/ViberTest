.class public Lcom/android/camera/a/f;
.super Lcom/android/camera/a/b;
.source "SourceFile"

# interfaces
.implements Lcom/android/camera/a/d;


# static fields
.field static final g:[Ljava/lang/String;

.field private static final h:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 35
    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v1, "image/jpeg"

    aput-object v1, v0, v2

    const-string/jumbo v1, "image/png"

    aput-object v1, v0, v3

    const-string/jumbo v1, "image/gif"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/camera/a/f;->h:[Ljava/lang/String;

    .line 101
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    aput-object v1, v0, v2

    const-string/jumbo v1, "_data"

    aput-object v1, v0, v3

    const-string/jumbo v1, "datetaken"

    aput-object v1, v0, v4

    const-string/jumbo v1, "mini_thumb_magic"

    aput-object v1, v0, v5

    const/4 v1, 0x4

    const-string/jumbo v2, "orientation"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "mime_type"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "date_modified"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/camera/a/f;->g:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/ContentResolver;Landroid/net/Uri;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 63
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/camera/a/b;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;ILjava/lang/String;)V

    .line 64
    return-void
.end method


# virtual methods
.method protected a(Landroid/database/Cursor;)Lcom/android/camera/a/a;
    .locals 17
    .parameter

    .prologue
    .line 127
    const/4 v1, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 128
    const/4 v1, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 129
    const/4 v1, 0x2

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 130
    const-wide/16 v1, 0x0

    cmp-long v1, v12, v1

    if-nez v1, :cond_0

    .line 131
    const/4 v1, 0x7

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    const-wide/16 v6, 0x3e8

    mul-long v12, v1, v6

    .line 133
    :cond_0
    const/4 v1, 0x3

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 134
    const/4 v1, 0x4

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 135
    const/4 v1, 0x5

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 136
    const/4 v1, 0x6

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 137
    if-eqz v14, :cond_1

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    move-object v14, v8

    .line 141
    :cond_2
    new-instance v1, Lcom/android/camera/a/e;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/a/f;->a:Landroid/content/ContentResolver;

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getPosition()I

    move-result v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/android/camera/a/f;->a(J)Landroid/net/Uri;

    move-result-object v7

    move-object/from16 v2, p0

    move-object v15, v14

    invoke-direct/range {v1 .. v16}, Lcom/android/camera/a/e;-><init>(Lcom/android/camera/a/b;Landroid/content/ContentResolver;JILandroid/net/Uri;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;Ljava/lang/String;I)V

    return-object v1
.end method

.method protected b(Landroid/database/Cursor;)J
    .locals 2
    .parameter

    .prologue
    .line 122
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method protected d()Landroid/database/Cursor;
    .locals 6

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/camera/a/f;->a:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/camera/a/f;->c:Landroid/net/Uri;

    sget-object v2, Lcom/android/camera/a/f;->g:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/camera/a/f;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/camera/a/f;->h()[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/camera/a/f;->f()Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Landroid/provider/MediaStore$Images$Media;->query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 98
    return-object v0
.end method

.method protected g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/camera/a/f;->e:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string/jumbo v0, "(mime_type in (?, ?, ?))"

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "(mime_type in (?, ?, ?)) AND bucket_id = ?"

    goto :goto_0
.end method

.method protected h()[Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 83
    iget-object v0, p0, Lcom/android/camera/a/f;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 84
    sget-object v0, Lcom/android/camera/a/f;->h:[Ljava/lang/String;

    array-length v1, v0

    .line 85
    add-int/lit8 v0, v1, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 86
    sget-object v2, Lcom/android/camera/a/f;->h:[Ljava/lang/String;

    invoke-static {v2, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 87
    iget-object v2, p0, Lcom/android/camera/a/f;->e:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 90
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/camera/a/f;->h:[Ljava/lang/String;

    goto :goto_0
.end method
