.class public abstract Lcom/viber/voip/util/fd;
.super Landroid/support/v4/util/LruCache;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/support/v4/util/LruCache",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-class v0, Lcom/viber/voip/util/fd;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/util/fd;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;F)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 24
    invoke-static {p1, p2, p3}, Lcom/viber/voip/util/fd;->a(Landroid/content/Context;Ljava/lang/String;F)I

    move-result v0

    invoke-direct {p0, v0}, Landroid/support/v4/util/LruCache;-><init>(I)V

    .line 25
    iput-object p2, p0, Lcom/viber/voip/util/fd;->b:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;FF)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 19
    invoke-static {p1, p2, p3, p4}, Lcom/viber/voip/util/fd;->a(Landroid/content/Context;Ljava/lang/String;FF)I

    move-result v0

    invoke-direct {p0, v0}, Landroid/support/v4/util/LruCache;-><init>(I)V

    .line 20
    iput-object p2, p0, Lcom/viber/voip/util/fd;->b:Ljava/lang/String;

    .line 21
    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;F)I
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 29
    const/high16 v0, -0x4080

    invoke-static {p0, p1, p2, v0}, Lcom/viber/voip/util/fd;->a(Landroid/content/Context;Ljava/lang/String;FF)I

    move-result v0

    return v0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;FF)I
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 33
    const-string/jumbo v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v0

    .line 35
    const/high16 v1, -0x4080

    cmpl-float v1, p3, v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/viber/voip/util/fd;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 36
    :goto_0
    const/high16 v1, 0x10

    mul-int/2addr v0, v1

    int-to-float v0, v0

    mul-float/2addr v0, p3

    float-to-int v0, v0

    .line 38
    return v0

    :cond_0
    move p3, p2

    .line 35
    goto :goto_0
.end method

.method private static a(I)Z
    .locals 1
    .parameter

    .prologue
    .line 42
    const/16 v0, 0x40

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
