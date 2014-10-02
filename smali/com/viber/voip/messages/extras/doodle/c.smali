.class public final enum Lcom/viber/voip/messages/extras/doodle/c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/viber/voip/messages/extras/doodle/c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/viber/voip/messages/extras/doodle/c;

.field public static final enum b:Lcom/viber/voip/messages/extras/doodle/c;

.field public static final enum c:Lcom/viber/voip/messages/extras/doodle/c;

.field public static final enum d:Lcom/viber/voip/messages/extras/doodle/c;

.field private static final synthetic e:[Lcom/viber/voip/messages/extras/doodle/c;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 94
    new-instance v0, Lcom/viber/voip/messages/extras/doodle/c;

    const-string/jumbo v1, "SIMPLE"

    invoke-direct {v0, v1, v2}, Lcom/viber/voip/messages/extras/doodle/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/viber/voip/messages/extras/doodle/c;->a:Lcom/viber/voip/messages/extras/doodle/c;

    new-instance v0, Lcom/viber/voip/messages/extras/doodle/c;

    const-string/jumbo v1, "ERASER"

    invoke-direct {v0, v1, v3}, Lcom/viber/voip/messages/extras/doodle/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/viber/voip/messages/extras/doodle/c;->b:Lcom/viber/voip/messages/extras/doodle/c;

    new-instance v0, Lcom/viber/voip/messages/extras/doodle/c;

    const-string/jumbo v1, "CUSTOM"

    invoke-direct {v0, v1, v4}, Lcom/viber/voip/messages/extras/doodle/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/viber/voip/messages/extras/doodle/c;->c:Lcom/viber/voip/messages/extras/doodle/c;

    new-instance v0, Lcom/viber/voip/messages/extras/doodle/c;

    const-string/jumbo v1, "BLUR"

    invoke-direct {v0, v1, v5}, Lcom/viber/voip/messages/extras/doodle/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/viber/voip/messages/extras/doodle/c;->d:Lcom/viber/voip/messages/extras/doodle/c;

    .line 93
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/viber/voip/messages/extras/doodle/c;

    sget-object v1, Lcom/viber/voip/messages/extras/doodle/c;->a:Lcom/viber/voip/messages/extras/doodle/c;

    aput-object v1, v0, v2

    sget-object v1, Lcom/viber/voip/messages/extras/doodle/c;->b:Lcom/viber/voip/messages/extras/doodle/c;

    aput-object v1, v0, v3

    sget-object v1, Lcom/viber/voip/messages/extras/doodle/c;->c:Lcom/viber/voip/messages/extras/doodle/c;

    aput-object v1, v0, v4

    sget-object v1, Lcom/viber/voip/messages/extras/doodle/c;->d:Lcom/viber/voip/messages/extras/doodle/c;

    aput-object v1, v0, v5

    sput-object v0, Lcom/viber/voip/messages/extras/doodle/c;->e:[Lcom/viber/voip/messages/extras/doodle/c;

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
    .line 93
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/viber/voip/messages/extras/doodle/c;
    .locals 1
    .parameter

    .prologue
    .line 93
    const-class v0, Lcom/viber/voip/messages/extras/doodle/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/extras/doodle/c;

    return-object v0
.end method

.method public static values()[Lcom/viber/voip/messages/extras/doodle/c;
    .locals 1

    .prologue
    .line 93
    sget-object v0, Lcom/viber/voip/messages/extras/doodle/c;->e:[Lcom/viber/voip/messages/extras/doodle/c;

    invoke-virtual {v0}, [Lcom/viber/voip/messages/extras/doodle/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/viber/voip/messages/extras/doodle/c;

    return-object v0
.end method
