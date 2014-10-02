.class public abstract Lcom/viber/provider/i;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"


# instance fields
.field protected a:Landroid/content/Context;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 41
    const/4 v0, 0x0

    const/16 v1, 0x35

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 42
    iput-object p1, p0, Lcom/viber/provider/i;->a:Landroid/content/Context;

    .line 43
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 50
    invoke-static {p0, p2}, Lcom/viber/voip/i/c;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 52
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 56
    :try_start_0
    invoke-virtual {p3, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 57
    :catch_0
    move-exception v0

    goto :goto_0

    .line 62
    :cond_0
    return-void
.end method


# virtual methods
.method protected final a()Landroid/content/Context;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/viber/provider/i;->a:Landroid/content/Context;

    return-object v0
.end method
