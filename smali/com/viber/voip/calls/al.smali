.class final enum Lcom/viber/voip/calls/al;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/viber/voip/calls/al;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/viber/voip/calls/al;

.field public static final enum b:Lcom/viber/voip/calls/al;

.field public static final enum c:Lcom/viber/voip/calls/al;

.field private static final synthetic d:[Lcom/viber/voip/calls/al;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 47
    new-instance v0, Lcom/viber/voip/calls/al;

    const-string/jumbo v1, "PREPARE"

    invoke-direct {v0, v1, v2}, Lcom/viber/voip/calls/al;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/viber/voip/calls/al;->a:Lcom/viber/voip/calls/al;

    .line 48
    new-instance v0, Lcom/viber/voip/calls/al;

    const-string/jumbo v1, "UPDATE"

    invoke-direct {v0, v1, v3}, Lcom/viber/voip/calls/al;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/viber/voip/calls/al;->b:Lcom/viber/voip/calls/al;

    .line 49
    new-instance v0, Lcom/viber/voip/calls/al;

    const-string/jumbo v1, "DELETED"

    invoke-direct {v0, v1, v4}, Lcom/viber/voip/calls/al;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/viber/voip/calls/al;->c:Lcom/viber/voip/calls/al;

    .line 46
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/viber/voip/calls/al;

    sget-object v1, Lcom/viber/voip/calls/al;->a:Lcom/viber/voip/calls/al;

    aput-object v1, v0, v2

    sget-object v1, Lcom/viber/voip/calls/al;->b:Lcom/viber/voip/calls/al;

    aput-object v1, v0, v3

    sget-object v1, Lcom/viber/voip/calls/al;->c:Lcom/viber/voip/calls/al;

    aput-object v1, v0, v4

    sput-object v0, Lcom/viber/voip/calls/al;->d:[Lcom/viber/voip/calls/al;

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
    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/viber/voip/calls/al;
    .locals 1
    .parameter

    .prologue
    .line 46
    const-class v0, Lcom/viber/voip/calls/al;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/calls/al;

    return-object v0
.end method

.method public static values()[Lcom/viber/voip/calls/al;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/viber/voip/calls/al;->d:[Lcom/viber/voip/calls/al;

    invoke-virtual {v0}, [Lcom/viber/voip/calls/al;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/viber/voip/calls/al;

    return-object v0
.end method
