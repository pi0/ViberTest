.class public final enum Lcom/viber/voip/dk;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/viber/voip/dk;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/viber/voip/dk;

.field public static final enum b:Lcom/viber/voip/dk;

.field public static final enum c:Lcom/viber/voip/dk;

.field public static final enum d:Lcom/viber/voip/dk;

.field public static final enum e:Lcom/viber/voip/dk;

.field public static final enum f:Lcom/viber/voip/dk;

.field public static final enum g:Lcom/viber/voip/dk;

.field public static final enum h:Lcom/viber/voip/dk;

.field public static final enum i:Lcom/viber/voip/dk;

.field public static final enum j:Lcom/viber/voip/dk;

.field public static final enum k:Lcom/viber/voip/dk;

.field private static final synthetic l:[Lcom/viber/voip/dk;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 28
    new-instance v0, Lcom/viber/voip/dk;

    const-string/jumbo v1, "UI_THREAD_HANDLER"

    invoke-direct {v0, v1, v3}, Lcom/viber/voip/dk;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/viber/voip/dk;->a:Lcom/viber/voip/dk;

    .line 29
    new-instance v0, Lcom/viber/voip/dk;

    const-string/jumbo v1, "SERVICE_DISPATCHER"

    invoke-direct {v0, v1, v4}, Lcom/viber/voip/dk;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/viber/voip/dk;->b:Lcom/viber/voip/dk;

    .line 30
    new-instance v0, Lcom/viber/voip/dk;

    const-string/jumbo v1, "CONTACTS_HANDLER"

    invoke-direct {v0, v1, v5}, Lcom/viber/voip/dk;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/viber/voip/dk;->c:Lcom/viber/voip/dk;

    .line 31
    new-instance v0, Lcom/viber/voip/dk;

    const-string/jumbo v1, "MESSAGES_HANDLER"

    invoke-direct {v0, v1, v6}, Lcom/viber/voip/dk;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/viber/voip/dk;->d:Lcom/viber/voip/dk;

    .line 32
    new-instance v0, Lcom/viber/voip/dk;

    const-string/jumbo v1, "SEND_HANDLER"

    invoke-direct {v0, v1, v7}, Lcom/viber/voip/dk;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/viber/voip/dk;->e:Lcom/viber/voip/dk;

    .line 33
    new-instance v0, Lcom/viber/voip/dk;

    const-string/jumbo v1, "IN_CALL_TASKS"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/viber/voip/dk;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/viber/voip/dk;->f:Lcom/viber/voip/dk;

    .line 34
    new-instance v0, Lcom/viber/voip/dk;

    const-string/jumbo v1, "IDLE_TASKS"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/viber/voip/dk;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/viber/voip/dk;->g:Lcom/viber/voip/dk;

    .line 35
    new-instance v0, Lcom/viber/voip/dk;

    const-string/jumbo v1, "LOW_PRIORITY"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/viber/voip/dk;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/viber/voip/dk;->h:Lcom/viber/voip/dk;

    .line 36
    new-instance v0, Lcom/viber/voip/dk;

    const-string/jumbo v1, "COMMON_DB_HANDLER"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/viber/voip/dk;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/viber/voip/dk;->i:Lcom/viber/voip/dk;

    .line 37
    new-instance v0, Lcom/viber/voip/dk;

    const-string/jumbo v1, "CALL_PAUSED_HANDLER"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/viber/voip/dk;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/viber/voip/dk;->j:Lcom/viber/voip/dk;

    .line 38
    new-instance v0, Lcom/viber/voip/dk;

    const-string/jumbo v1, "CONVERSATION_BACKGROUNDS_HANDLER"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/viber/voip/dk;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/viber/voip/dk;->k:Lcom/viber/voip/dk;

    .line 26
    const/16 v0, 0xb

    new-array v0, v0, [Lcom/viber/voip/dk;

    sget-object v1, Lcom/viber/voip/dk;->a:Lcom/viber/voip/dk;

    aput-object v1, v0, v3

    sget-object v1, Lcom/viber/voip/dk;->b:Lcom/viber/voip/dk;

    aput-object v1, v0, v4

    sget-object v1, Lcom/viber/voip/dk;->c:Lcom/viber/voip/dk;

    aput-object v1, v0, v5

    sget-object v1, Lcom/viber/voip/dk;->d:Lcom/viber/voip/dk;

    aput-object v1, v0, v6

    sget-object v1, Lcom/viber/voip/dk;->e:Lcom/viber/voip/dk;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/viber/voip/dk;->f:Lcom/viber/voip/dk;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/viber/voip/dk;->g:Lcom/viber/voip/dk;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/viber/voip/dk;->h:Lcom/viber/voip/dk;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/viber/voip/dk;->i:Lcom/viber/voip/dk;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/viber/voip/dk;->j:Lcom/viber/voip/dk;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/viber/voip/dk;->k:Lcom/viber/voip/dk;

    aput-object v2, v0, v1

    sput-object v0, Lcom/viber/voip/dk;->l:[Lcom/viber/voip/dk;

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
    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/viber/voip/dk;
    .locals 1
    .parameter

    .prologue
    .line 26
    const-class v0, Lcom/viber/voip/dk;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/dk;

    return-object v0
.end method

.method public static values()[Lcom/viber/voip/dk;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/viber/voip/dk;->l:[Lcom/viber/voip/dk;

    invoke-virtual {v0}, [Lcom/viber/voip/dk;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/viber/voip/dk;

    return-object v0
.end method


# virtual methods
.method public a()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 41
    invoke-static {p0}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method
