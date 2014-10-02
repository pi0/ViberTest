.class public Lcom/viber/voip/util/al;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Landroid/content/ContentValues;

.field private static b:Landroid/content/ContentValues;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 112
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    sput-object v0, Lcom/viber/voip/util/al;->a:Landroid/content/ContentValues;

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    sput-object v0, Lcom/viber/voip/util/al;->b:Landroid/content/ContentValues;

    return-void
.end method

.method public static final a(Landroid/database/Cursor;)V
    .locals 1
    .parameter

    .prologue
    .line 19
    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 21
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    :cond_0
    :goto_0
    return-void

    .line 22
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static final b(Landroid/database/Cursor;)Z
    .locals 1
    .parameter

    .prologue
    .line 28
    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
