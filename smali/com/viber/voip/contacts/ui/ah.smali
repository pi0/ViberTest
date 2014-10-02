.class final enum Lcom/viber/voip/contacts/ui/ah;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/viber/voip/contacts/ui/ah;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/viber/voip/contacts/ui/ah;

.field public static final enum b:Lcom/viber/voip/contacts/ui/ah;

.field private static final synthetic c:[Lcom/viber/voip/contacts/ui/ah;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1066
    new-instance v0, Lcom/viber/voip/contacts/ui/ah;

    const-string/jumbo v1, "FREE_CALL"

    invoke-direct {v0, v1, v2}, Lcom/viber/voip/contacts/ui/ah;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/viber/voip/contacts/ui/ah;->a:Lcom/viber/voip/contacts/ui/ah;

    new-instance v0, Lcom/viber/voip/contacts/ui/ah;

    const-string/jumbo v1, "FREE_MESSAGE"

    invoke-direct {v0, v1, v3}, Lcom/viber/voip/contacts/ui/ah;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/viber/voip/contacts/ui/ah;->b:Lcom/viber/voip/contacts/ui/ah;

    .line 1065
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/viber/voip/contacts/ui/ah;

    sget-object v1, Lcom/viber/voip/contacts/ui/ah;->a:Lcom/viber/voip/contacts/ui/ah;

    aput-object v1, v0, v2

    sget-object v1, Lcom/viber/voip/contacts/ui/ah;->b:Lcom/viber/voip/contacts/ui/ah;

    aput-object v1, v0, v3

    sput-object v0, Lcom/viber/voip/contacts/ui/ah;->c:[Lcom/viber/voip/contacts/ui/ah;

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
    .line 1065
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/viber/voip/contacts/ui/ah;
    .locals 1
    .parameter

    .prologue
    .line 1065
    const-class v0, Lcom/viber/voip/contacts/ui/ah;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/contacts/ui/ah;

    return-object v0
.end method

.method public static values()[Lcom/viber/voip/contacts/ui/ah;
    .locals 1

    .prologue
    .line 1065
    sget-object v0, Lcom/viber/voip/contacts/ui/ah;->c:[Lcom/viber/voip/contacts/ui/ah;

    invoke-virtual {v0}, [Lcom/viber/voip/contacts/ui/ah;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/viber/voip/contacts/ui/ah;

    return-object v0
.end method
