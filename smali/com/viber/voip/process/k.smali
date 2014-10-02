.class public final enum Lcom/viber/voip/process/k;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/viber/voip/process/k;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/viber/voip/process/k;

.field public static final enum b:Lcom/viber/voip/process/k;

.field public static final enum c:Lcom/viber/voip/process/k;

.field public static final enum d:Lcom/viber/voip/process/k;

.field public static final enum e:Lcom/viber/voip/process/k;

.field public static final enum f:Lcom/viber/voip/process/k;

.field private static g:Lcom/viber/voip/process/k;

.field private static final synthetic h:[Lcom/viber/voip/process/k;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 12
    new-instance v0, Lcom/viber/voip/process/k;

    const-string/jumbo v1, "MAIN"

    invoke-direct {v0, v1, v3}, Lcom/viber/voip/process/k;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/viber/voip/process/k;->a:Lcom/viber/voip/process/k;

    .line 13
    new-instance v0, Lcom/viber/voip/process/k;

    const-string/jumbo v1, "GALLERY"

    invoke-direct {v0, v1, v4}, Lcom/viber/voip/process/k;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/viber/voip/process/k;->b:Lcom/viber/voip/process/k;

    .line 14
    new-instance v0, Lcom/viber/voip/process/k;

    const-string/jumbo v1, "BROWSER"

    invoke-direct {v0, v1, v5}, Lcom/viber/voip/process/k;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/viber/voip/process/k;->c:Lcom/viber/voip/process/k;

    .line 15
    new-instance v0, Lcom/viber/voip/process/k;

    const-string/jumbo v1, "ZOOBE"

    invoke-direct {v0, v1, v6}, Lcom/viber/voip/process/k;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/viber/voip/process/k;->d:Lcom/viber/voip/process/k;

    .line 16
    new-instance v0, Lcom/viber/voip/process/k;

    const-string/jumbo v1, "REMOTE"

    invoke-direct {v0, v1, v7}, Lcom/viber/voip/process/k;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/viber/voip/process/k;->e:Lcom/viber/voip/process/k;

    .line 17
    new-instance v0, Lcom/viber/voip/process/k;

    const-string/jumbo v1, "UNKNOWN"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/viber/voip/process/k;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/viber/voip/process/k;->f:Lcom/viber/voip/process/k;

    .line 11
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/viber/voip/process/k;

    sget-object v1, Lcom/viber/voip/process/k;->a:Lcom/viber/voip/process/k;

    aput-object v1, v0, v3

    sget-object v1, Lcom/viber/voip/process/k;->b:Lcom/viber/voip/process/k;

    aput-object v1, v0, v4

    sget-object v1, Lcom/viber/voip/process/k;->c:Lcom/viber/voip/process/k;

    aput-object v1, v0, v5

    sget-object v1, Lcom/viber/voip/process/k;->d:Lcom/viber/voip/process/k;

    aput-object v1, v0, v6

    sget-object v1, Lcom/viber/voip/process/k;->e:Lcom/viber/voip/process/k;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/viber/voip/process/k;->f:Lcom/viber/voip/process/k;

    aput-object v2, v0, v1

    sput-object v0, Lcom/viber/voip/process/k;->h:[Lcom/viber/voip/process/k;

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
    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a()Lcom/viber/voip/process/k;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/viber/voip/process/k;->g:Lcom/viber/voip/process/k;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lcom/viber/voip/process/k;
    .locals 5
    .parameter

    .prologue
    .line 25
    sget-object v0, Lcom/viber/voip/process/k;->g:Lcom/viber/voip/process/k;

    if-nez v0, :cond_1

    .line 26
    const-string/jumbo v1, ""

    .line 27
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    .line 28
    const-string/jumbo v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 29
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 30
    iget v4, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v4, v2, :cond_2

    .line 31
    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    :goto_1
    move-object v1, v0

    goto :goto_0

    .line 34
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/viber/voip/process/k;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/viber/voip/process/k;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/process/k;->g:Lcom/viber/voip/process/k;

    .line 40
    :cond_1
    sget-object v0, Lcom/viber/voip/process/k;->g:Lcom/viber/voip/process/k;

    return-object v0

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Lcom/viber/voip/process/k;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 43
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 46
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 47
    sget-object v0, Lcom/viber/voip/process/k;->a:Lcom/viber/voip/process/k;

    .line 57
    :goto_0
    return-object v0

    .line 48
    :cond_1
    const-string/jumbo v0, ":gallery"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 49
    sget-object v0, Lcom/viber/voip/process/k;->b:Lcom/viber/voip/process/k;

    goto :goto_0

    .line 50
    :cond_2
    const-string/jumbo v0, ":browser"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 51
    sget-object v0, Lcom/viber/voip/process/k;->c:Lcom/viber/voip/process/k;

    goto :goto_0

    .line 52
    :cond_3
    const-string/jumbo v0, ":zoobesdk"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 53
    sget-object v0, Lcom/viber/voip/process/k;->d:Lcom/viber/voip/process/k;

    goto :goto_0

    .line 54
    :cond_4
    const-string/jumbo v0, ":remote"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 55
    sget-object v0, Lcom/viber/voip/process/k;->e:Lcom/viber/voip/process/k;

    goto :goto_0

    .line 57
    :cond_5
    sget-object v0, Lcom/viber/voip/process/k;->f:Lcom/viber/voip/process/k;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/viber/voip/process/k;
    .locals 1
    .parameter

    .prologue
    .line 11
    const-class v0, Lcom/viber/voip/process/k;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/process/k;

    return-object v0
.end method

.method public static values()[Lcom/viber/voip/process/k;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/viber/voip/process/k;->h:[Lcom/viber/voip/process/k;

    invoke-virtual {v0}, [Lcom/viber/voip/process/k;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/viber/voip/process/k;

    return-object v0
.end method
