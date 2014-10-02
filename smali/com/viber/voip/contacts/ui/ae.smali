.class abstract enum Lcom/viber/voip/contacts/ui/ae;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/viber/voip/contacts/ui/ae;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/viber/voip/contacts/ui/ae;

.field public static final enum b:Lcom/viber/voip/contacts/ui/ae;

.field private static final synthetic c:[Lcom/viber/voip/contacts/ui/ae;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1115
    new-instance v0, Lcom/viber/voip/contacts/ui/af;

    const-string/jumbo v1, "REGULAR_CALL"

    invoke-direct {v0, v1, v2}, Lcom/viber/voip/contacts/ui/af;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/viber/voip/contacts/ui/ae;->a:Lcom/viber/voip/contacts/ui/ae;

    .line 1124
    new-instance v0, Lcom/viber/voip/contacts/ui/ag;

    const-string/jumbo v1, "REGULAR_MESSAGE"

    invoke-direct {v0, v1, v3}, Lcom/viber/voip/contacts/ui/ag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/viber/voip/contacts/ui/ae;->b:Lcom/viber/voip/contacts/ui/ae;

    .line 1114
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/viber/voip/contacts/ui/ae;

    sget-object v1, Lcom/viber/voip/contacts/ui/ae;->a:Lcom/viber/voip/contacts/ui/ae;

    aput-object v1, v0, v2

    sget-object v1, Lcom/viber/voip/contacts/ui/ae;->b:Lcom/viber/voip/contacts/ui/ae;

    aput-object v1, v0, v3

    sput-object v0, Lcom/viber/voip/contacts/ui/ae;->c:[Lcom/viber/voip/contacts/ui/ae;

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
    .line 1114
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/viber/voip/contacts/ui/a;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1114
    invoke-direct {p0, p1, p2}, Lcom/viber/voip/contacts/ui/ae;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/viber/voip/contacts/ui/ae;
    .locals 1
    .parameter

    .prologue
    .line 1114
    const-class v0, Lcom/viber/voip/contacts/ui/ae;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/contacts/ui/ae;

    return-object v0
.end method

.method public static values()[Lcom/viber/voip/contacts/ui/ae;
    .locals 1

    .prologue
    .line 1114
    sget-object v0, Lcom/viber/voip/contacts/ui/ae;->c:[Lcom/viber/voip/contacts/ui/ae;

    invoke-virtual {v0}, [Lcom/viber/voip/contacts/ui/ae;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/viber/voip/contacts/ui/ae;

    return-object v0
.end method


# virtual methods
.method abstract a(Ljava/lang/String;)Landroid/content/Intent;
.end method
