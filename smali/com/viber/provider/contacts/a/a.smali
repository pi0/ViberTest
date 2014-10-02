.class public abstract Lcom/viber/provider/contacts/a/a;
.super Lcom/viber/provider/i;
.source "SourceFile"


# static fields
.field public static final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcom/viber/provider/contacts/a/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/provider/contacts/a/a;->b:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 41
    const-string/jumbo v0, "viber_data"

    invoke-direct {p0, p1, v0}, Lcom/viber/provider/i;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 42
    return-void
.end method


# virtual methods
.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 60
    return-void
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter

    .prologue
    .line 46
    invoke-super {p0, p1}, Lcom/viber/provider/i;->onOpen(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 48
    :try_start_0
    const-string/jumbo v0, "PRAGMA synchronous = OFF"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    :goto_0
    return-void

    .line 49
    :catch_0
    move-exception v0

    .line 50
    invoke-virtual {v0}, Landroid/database/SQLException;->printStackTrace()V

    goto :goto_0
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 64
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    if-le p2, p3, :cond_0

    .line 65
    invoke-virtual {p0, p1, p2, p3}, Lcom/viber/provider/contacts/a/a;->onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 70
    :goto_0
    return-void

    .line 69
    :cond_0
    invoke-virtual {p0}, Lcom/viber/provider/contacts/a/a;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0, p1, p2, p3}, Lcom/viber/provider/contacts/a/b;->a(Landroid/content/Context;Lcom/viber/provider/contacts/a/a;Landroid/database/sqlite/SQLiteDatabase;II)V

    goto :goto_0
.end method
