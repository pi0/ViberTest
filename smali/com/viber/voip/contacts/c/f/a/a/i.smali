.class final enum Lcom/viber/voip/contacts/c/f/a/a/i;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/viber/voip/contacts/c/f/a/a/i;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/viber/voip/contacts/c/f/a/a/i;

.field public static final enum b:Lcom/viber/voip/contacts/c/f/a/a/i;

.field public static final enum c:Lcom/viber/voip/contacts/c/f/a/a/i;

.field private static final synthetic d:[Lcom/viber/voip/contacts/c/f/a/a/i;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 72
    new-instance v0, Lcom/viber/voip/contacts/c/f/a/a/i;

    const-string/jumbo v1, "Update"

    invoke-direct {v0, v1, v2}, Lcom/viber/voip/contacts/c/f/a/a/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/viber/voip/contacts/c/f/a/a/i;->a:Lcom/viber/voip/contacts/c/f/a/a/i;

    .line 73
    new-instance v0, Lcom/viber/voip/contacts/c/f/a/a/i;

    const-string/jumbo v1, "Insert"

    invoke-direct {v0, v1, v3}, Lcom/viber/voip/contacts/c/f/a/a/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/viber/voip/contacts/c/f/a/a/i;->b:Lcom/viber/voip/contacts/c/f/a/a/i;

    .line 74
    new-instance v0, Lcom/viber/voip/contacts/c/f/a/a/i;

    const-string/jumbo v1, "Delete"

    invoke-direct {v0, v1, v4}, Lcom/viber/voip/contacts/c/f/a/a/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/viber/voip/contacts/c/f/a/a/i;->c:Lcom/viber/voip/contacts/c/f/a/a/i;

    .line 71
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/viber/voip/contacts/c/f/a/a/i;

    sget-object v1, Lcom/viber/voip/contacts/c/f/a/a/i;->a:Lcom/viber/voip/contacts/c/f/a/a/i;

    aput-object v1, v0, v2

    sget-object v1, Lcom/viber/voip/contacts/c/f/a/a/i;->b:Lcom/viber/voip/contacts/c/f/a/a/i;

    aput-object v1, v0, v3

    sget-object v1, Lcom/viber/voip/contacts/c/f/a/a/i;->c:Lcom/viber/voip/contacts/c/f/a/a/i;

    aput-object v1, v0, v4

    sput-object v0, Lcom/viber/voip/contacts/c/f/a/a/i;->d:[Lcom/viber/voip/contacts/c/f/a/a/i;

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
    .line 71
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/viber/voip/contacts/c/f/a/a/i;
    .locals 1
    .parameter

    .prologue
    .line 71
    const-class v0, Lcom/viber/voip/contacts/c/f/a/a/i;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/contacts/c/f/a/a/i;

    return-object v0
.end method

.method public static values()[Lcom/viber/voip/contacts/c/f/a/a/i;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/viber/voip/contacts/c/f/a/a/i;->d:[Lcom/viber/voip/contacts/c/f/a/a/i;

    invoke-virtual {v0}, [Lcom/viber/voip/contacts/c/f/a/a/i;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/viber/voip/contacts/c/f/a/a/i;

    return-object v0
.end method
