.class public Lcom/viber/voip/stickers/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:[Ljava/lang/String;

.field private static final b:Ljava/lang/String;

.field private static final c:Ljava/lang/String;

.field private static final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 38
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "stickers._id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "generic_col_pos"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "generic_row_pos"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "column_span"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "row_span"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "package_id"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "stickers.flags"

    aput-object v2, v0, v1

    sput-object v0, Lcom/viber/voip/stickers/a/a;->a:[Ljava/lang/String;

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "SELECT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    sget-object v2, Lcom/viber/voip/stickers/a/a;->a:[Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " FROM "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "stickers_packages"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " LEFT JOIN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "stickers"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " ON "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "stickers_packages"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "stickers"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "package_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/stickers/a/a;->b:Ljava/lang/String;

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/viber/voip/stickers/a/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " WHERE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "stickers._id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "=?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/stickers/a/a;->c:Ljava/lang/String;

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/viber/voip/stickers/a/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " WHERE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "package_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "=? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " ORDER BY stickers._id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/stickers/a/a;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/viber/voip/stickers/c/f;)I
    .locals 7
    .parameter

    .prologue
    .line 179
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 180
    const-string/jumbo v1, "visibility"

    invoke-interface {p1}, Lcom/viber/voip/stickers/c/f;->b()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 181
    const-string/jumbo v1, "menu_position"

    invoke-interface {p1}, Lcom/viber/voip/stickers/c/f;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 183
    invoke-virtual {p0}, Lcom/viber/voip/stickers/a/a;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string/jumbo v2, "stickers_packages"

    const-string/jumbo v3, "_id = ? AND (visibility <> ? OR menu_position <> ?)"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-interface {p1}, Lcom/viber/voip/stickers/c/f;->e()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-interface {p1}, Lcom/viber/voip/stickers/c/f;->b()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-interface {p1}, Lcom/viber/voip/stickers/c/f;->a()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected a()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .prologue
    .line 70
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/provider/messages/ViberMessagesProvider;->a(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method public a(I)Lcom/viber/voip/stickers/c/a;
    .locals 8
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 74
    invoke-virtual {p0}, Lcom/viber/voip/stickers/a/a;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string/jumbo v1, "stickers"

    sget-object v2, Lcom/viber/voip/stickers/a/a;->a:[Ljava/lang/String;

    const-string/jumbo v3, "stickers._id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 77
    invoke-static {v0}, Lcom/viber/voip/util/al;->b(Landroid/database/Cursor;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 78
    invoke-virtual {p0, v0}, Lcom/viber/voip/stickers/a/a;->a(Landroid/database/Cursor;)Lcom/viber/voip/stickers/c/a;

    move-result-object v5

    .line 80
    :cond_0
    invoke-static {v0}, Lcom/viber/voip/util/al;->a(Landroid/database/Cursor;)V

    .line 81
    return-object v5
.end method

.method public a(Landroid/database/Cursor;)Lcom/viber/voip/stickers/c/a;
    .locals 9
    .parameter

    .prologue
    const/4 v8, 0x1

    .line 240
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 241
    invoke-interface {p1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 242
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 243
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 244
    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 245
    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 249
    const/4 v0, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 252
    new-instance v0, Lcom/viber/voip/stickers/c/a;

    invoke-direct/range {v0 .. v7}, Lcom/viber/voip/stickers/c/a;-><init>(IIIIIII)V

    .line 254
    invoke-virtual {v0, v8}, Lcom/viber/voip/stickers/c/a;->a(Z)V

    .line 255
    return-object v0
.end method

.method public a(ILjava/lang/String;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 218
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 219
    const-string/jumbo v1, "package_name"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    invoke-virtual {p0}, Lcom/viber/voip/stickers/a/a;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string/jumbo v2, "stickers_packages"

    const-string/jumbo v3, "_id = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 221
    return-void
.end method

.method public a(Lcom/viber/voip/stickers/c/a;)V
    .locals 7
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 141
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 142
    const-string/jumbo v1, "_id"

    iget v2, p1, Lcom/viber/voip/stickers/c/a;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 143
    const-string/jumbo v1, "package_id"

    iget v2, p1, Lcom/viber/voip/stickers/c/a;->t:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 144
    const-string/jumbo v1, "column_span"

    iget v2, p1, Lcom/viber/voip/stickers/c/a;->j:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 145
    const-string/jumbo v1, "row_span"

    iget v2, p1, Lcom/viber/voip/stickers/c/a;->k:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 146
    const-string/jumbo v1, "generic_col_pos"

    iget v2, p1, Lcom/viber/voip/stickers/c/a;->d:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 147
    const-string/jumbo v1, "generic_row_pos"

    iget v2, p1, Lcom/viber/voip/stickers/c/a;->e:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 148
    const-string/jumbo v1, "flags"

    invoke-virtual {p1}, Lcom/viber/voip/stickers/c/a;->i()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 149
    invoke-virtual {p1}, Lcom/viber/voip/stickers/c/a;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 150
    invoke-virtual {p0}, Lcom/viber/voip/stickers/a/a;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string/jumbo v2, "stickers"

    const-string/jumbo v3, "_id = ?"

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget v6, p1, Lcom/viber/voip/stickers/c/a;->b:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 155
    :goto_0
    return-void

    .line 152
    :cond_0
    invoke-virtual {p0}, Lcom/viber/voip/stickers/a/a;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string/jumbo v2, "stickers"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 153
    invoke-virtual {p1, v4}, Lcom/viber/voip/stickers/c/a;->a(Z)V

    goto :goto_0
.end method

.method public a(Lcom/viber/voip/stickers/c/e;)V
    .locals 7
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 189
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 190
    const-string/jumbo v1, "_id"

    invoke-virtual {p1}, Lcom/viber/voip/stickers/c/e;->e()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 191
    const-string/jumbo v1, "package_name"

    invoke-virtual {p1}, Lcom/viber/voip/stickers/c/e;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    const-string/jumbo v1, "flags"

    invoke-virtual {p1}, Lcom/viber/voip/stickers/c/e;->m()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 193
    const-string/jumbo v1, "thumb_axis_shrink_factor"

    invoke-virtual {p1}, Lcom/viber/voip/stickers/c/e;->l()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 194
    const-string/jumbo v1, "menu_position"

    invoke-virtual {p1}, Lcom/viber/voip/stickers/c/e;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 196
    invoke-virtual {p1}, Lcom/viber/voip/stickers/c/e;->e()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/viber/voip/stickers/a/a;->c(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 197
    invoke-virtual {p0}, Lcom/viber/voip/stickers/a/a;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string/jumbo v2, "stickers_packages"

    const-string/jumbo v3, "_id = ?"

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/viber/voip/stickers/c/e;->e()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 203
    :goto_0
    return-void

    .line 200
    :cond_0
    invoke-virtual {p0}, Lcom/viber/voip/stickers/a/a;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string/jumbo v2, "stickers_packages"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 201
    invoke-virtual {p1, v4}, Lcom/viber/voip/stickers/c/e;->e(Z)V

    goto :goto_0
.end method

.method public a(Z)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 228
    if-eqz p1, :cond_0

    .line 229
    invoke-virtual {p0}, Lcom/viber/voip/stickers/a/a;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string/jumbo v1, "stickers"

    invoke-virtual {v0, v1, v3, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 230
    invoke-virtual {p0}, Lcom/viber/voip/stickers/a/a;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string/jumbo v1, "stickers_packages"

    invoke-virtual {v0, v1, v3, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 232
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    const-class v1, Lcom/viber/voip/stickers/a/a;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "db/script_for_filling_stickers_table.sql"

    invoke-virtual {p0}, Lcom/viber/voip/stickers/a/a;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/viber/provider/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 237
    :goto_0
    return-void

    .line 234
    :cond_0
    invoke-virtual {p0}, Lcom/viber/voip/stickers/a/a;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string/jumbo v1, "stickers"

    const-string/jumbo v2, "package_id NOT IN ( 400, -1 )"

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 235
    invoke-virtual {p0}, Lcom/viber/voip/stickers/a/a;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string/jumbo v1, "stickers_packages"

    const-string/jumbo v2, "_id NOT IN ( 400)"

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method public b()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/viber/voip/stickers/c/a;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 98
    invoke-virtual {p0}, Lcom/viber/voip/stickers/a/a;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string/jumbo v1, "stickers"

    sget-object v2, Lcom/viber/voip/stickers/a/a;->a:[Ljava/lang/String;

    const-string/jumbo v7, "stickers._id"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 100
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 101
    invoke-static {v0}, Lcom/viber/voip/util/al;->b(Landroid/database/Cursor;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 103
    :cond_0
    invoke-virtual {p0, v0}, Lcom/viber/voip/stickers/a/a;->a(Landroid/database/Cursor;)Lcom/viber/voip/stickers/c/a;

    move-result-object v2

    .line 104
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 107
    :cond_1
    invoke-static {v0}, Lcom/viber/voip/util/al;->a(Landroid/database/Cursor;)V

    .line 108
    return-object v1
.end method

.method public b(I)Ljava/util/List;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/viber/voip/stickers/c/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/viber/voip/stickers/a/a;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/stickers/a/a;->d:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 87
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 88
    invoke-static {v0}, Lcom/viber/voip/util/al;->b(Landroid/database/Cursor;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 90
    :cond_0
    invoke-virtual {p0, v0}, Lcom/viber/voip/stickers/a/a;->a(Landroid/database/Cursor;)Lcom/viber/voip/stickers/c/a;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 93
    :cond_1
    invoke-static {v0}, Lcom/viber/voip/util/al;->a(Landroid/database/Cursor;)V

    .line 94
    return-object v1
.end method

.method public c()Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/viber/voip/stickers/c/e;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v3, 0x0

    .line 116
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 117
    invoke-virtual {p0}, Lcom/viber/voip/stickers/a/a;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string/jumbo v1, "stickers_packages"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v4, "_id"

    aput-object v4, v2, v10

    const-string/jumbo v4, "package_name"

    aput-object v4, v2, v9

    const-string/jumbo v4, "flags"

    aput-object v4, v2, v11

    const-string/jumbo v4, "thumb_axis_shrink_factor"

    aput-object v4, v2, v12

    const/4 v4, 0x4

    const-string/jumbo v5, "menu_position"

    aput-object v5, v2, v4

    const/4 v4, 0x5

    const-string/jumbo v5, "visibility"

    aput-object v5, v2, v4

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 125
    invoke-static {v0}, Lcom/viber/voip/util/al;->b(Landroid/database/Cursor;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 127
    :cond_0
    new-instance v1, Lcom/viber/voip/stickers/c/e;

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/viber/voip/stickers/c/e;-><init>(ILjava/lang/String;)V

    .line 128
    invoke-interface {v0, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/viber/voip/stickers/c/e;->a(I)V

    .line 129
    invoke-interface {v0, v12}, Landroid/database/Cursor;->getFloat(I)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/viber/voip/stickers/c/e;->a(F)V

    .line 130
    const/4 v2, 0x4

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/viber/voip/stickers/c/e;->b(I)V

    .line 131
    const/4 v2, 0x5

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/viber/voip/stickers/c/e;->c(I)V

    .line 132
    invoke-virtual {v1, v9}, Lcom/viber/voip/stickers/c/e;->e(Z)V

    .line 133
    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 136
    :cond_1
    invoke-static {v0}, Lcom/viber/voip/util/al;->a(Landroid/database/Cursor;)V

    .line 137
    return-object v8
.end method

.method public c(I)Z
    .locals 10
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 206
    .line 207
    invoke-virtual {p0}, Lcom/viber/voip/stickers/a/a;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string/jumbo v1, "stickers_packages"

    new-array v2, v8, [Ljava/lang/String;

    const-string/jumbo v3, "*"

    aput-object v3, v2, v9

    const-string/jumbo v3, "stickers_packages._id=?"

    new-array v4, v8, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v9

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 210
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    move v0, v8

    .line 213
    :goto_0
    invoke-static {v1}, Lcom/viber/voip/util/al;->a(Landroid/database/Cursor;)V

    .line 214
    return v0

    :cond_0
    move v0, v9

    goto :goto_0
.end method

.method public d(I)I
    .locals 6
    .parameter

    .prologue
    .line 224
    invoke-virtual {p0}, Lcom/viber/voip/stickers/a/a;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string/jumbo v1, "stickers_packages"

    const-string/jumbo v2, "_id=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method
