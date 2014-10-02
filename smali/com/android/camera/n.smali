.class final enum Lcom/android/camera/n;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/camera/n;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/android/camera/n;

.field public static final enum b:Lcom/android/camera/n;

.field public static final enum c:Lcom/android/camera/n;

.field private static final synthetic d:[Lcom/android/camera/n;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 398
    new-instance v0, Lcom/android/camera/n;

    const-string/jumbo v1, "None"

    invoke-direct {v0, v1, v2}, Lcom/android/camera/n;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/n;->a:Lcom/android/camera/n;

    new-instance v0, Lcom/android/camera/n;

    const-string/jumbo v1, "Move"

    invoke-direct {v0, v1, v3}, Lcom/android/camera/n;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/n;->b:Lcom/android/camera/n;

    new-instance v0, Lcom/android/camera/n;

    const-string/jumbo v1, "Grow"

    invoke-direct {v0, v1, v4}, Lcom/android/camera/n;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/n;->c:Lcom/android/camera/n;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/camera/n;

    sget-object v1, Lcom/android/camera/n;->a:Lcom/android/camera/n;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/camera/n;->b:Lcom/android/camera/n;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/camera/n;->c:Lcom/android/camera/n;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/camera/n;->d:[Lcom/android/camera/n;

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
    .line 398
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/camera/n;
    .locals 1
    .parameter

    .prologue
    .line 398
    const-class v0, Lcom/android/camera/n;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/camera/n;

    return-object v0
.end method

.method public static values()[Lcom/android/camera/n;
    .locals 1

    .prologue
    .line 398
    sget-object v0, Lcom/android/camera/n;->d:[Lcom/android/camera/n;

    invoke-virtual {v0}, [Lcom/android/camera/n;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/n;

    return-object v0
.end method
