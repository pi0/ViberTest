.class public final enum Lcom/android/camera/p;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/camera/p;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/android/camera/p;

.field public static final enum b:Lcom/android/camera/p;

.field public static final enum c:Lcom/android/camera/p;

.field public static final enum d:Lcom/android/camera/p;

.field private static final synthetic e:[Lcom/android/camera/p;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 120
    new-instance v0, Lcom/android/camera/p;

    const-string/jumbo v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/android/camera/p;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/p;->a:Lcom/android/camera/p;

    new-instance v0, Lcom/android/camera/p;

    const-string/jumbo v1, "INTERNAL"

    invoke-direct {v0, v1, v3}, Lcom/android/camera/p;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/p;->b:Lcom/android/camera/p;

    new-instance v0, Lcom/android/camera/p;

    const-string/jumbo v1, "EXTERNAL"

    invoke-direct {v0, v1, v4}, Lcom/android/camera/p;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/p;->c:Lcom/android/camera/p;

    new-instance v0, Lcom/android/camera/p;

    const-string/jumbo v1, "ALL"

    invoke-direct {v0, v1, v5}, Lcom/android/camera/p;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/p;->d:Lcom/android/camera/p;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/camera/p;

    sget-object v1, Lcom/android/camera/p;->a:Lcom/android/camera/p;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/camera/p;->b:Lcom/android/camera/p;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/camera/p;->c:Lcom/android/camera/p;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/camera/p;->d:Lcom/android/camera/p;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/camera/p;->e:[Lcom/android/camera/p;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 120
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/camera/p;
    .locals 1
    .parameter

    .prologue
    .line 120
    const-class v0, Lcom/android/camera/p;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/camera/p;

    return-object v0
.end method

.method public static values()[Lcom/android/camera/p;
    .locals 1

    .prologue
    .line 120
    sget-object v0, Lcom/android/camera/p;->e:[Lcom/android/camera/p;

    invoke-virtual {v0}, [Lcom/android/camera/p;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/p;

    return-object v0
.end method
