.class final enum Lcom/viber/voip/contacts/c/f/a/a/au;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/viber/voip/contacts/c/f/a/a/au;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/viber/voip/contacts/c/f/a/a/au;

.field public static final enum b:Lcom/viber/voip/contacts/c/f/a/a/au;

.field public static final enum c:Lcom/viber/voip/contacts/c/f/a/a/au;

.field public static final enum d:Lcom/viber/voip/contacts/c/f/a/a/au;

.field public static final enum e:Lcom/viber/voip/contacts/c/f/a/a/au;

.field public static final enum f:Lcom/viber/voip/contacts/c/f/a/a/au;

.field private static final synthetic g:[Lcom/viber/voip/contacts/c/f/a/a/au;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 42
    new-instance v0, Lcom/viber/voip/contacts/c/f/a/a/au;

    const-string/jumbo v1, "UPDATE_REQUEST"

    invoke-direct {v0, v1, v3}, Lcom/viber/voip/contacts/c/f/a/a/au;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/viber/voip/contacts/c/f/a/a/au;->a:Lcom/viber/voip/contacts/c/f/a/a/au;

    .line 43
    new-instance v0, Lcom/viber/voip/contacts/c/f/a/a/au;

    const-string/jumbo v1, "UPDATE_REQUEST_APPLIED"

    invoke-direct {v0, v1, v4}, Lcom/viber/voip/contacts/c/f/a/a/au;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/viber/voip/contacts/c/f/a/a/au;->b:Lcom/viber/voip/contacts/c/f/a/a/au;

    .line 44
    new-instance v0, Lcom/viber/voip/contacts/c/f/a/a/au;

    const-string/jumbo v1, "CHECK_DELETED_STEP2_FINISHED"

    invoke-direct {v0, v1, v5}, Lcom/viber/voip/contacts/c/f/a/a/au;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/viber/voip/contacts/c/f/a/a/au;->c:Lcom/viber/voip/contacts/c/f/a/a/au;

    .line 45
    new-instance v0, Lcom/viber/voip/contacts/c/f/a/a/au;

    const-string/jumbo v1, "CHECK_DELETED_STEP1_FINISHED"

    invoke-direct {v0, v1, v6}, Lcom/viber/voip/contacts/c/f/a/a/au;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/viber/voip/contacts/c/f/a/a/au;->d:Lcom/viber/voip/contacts/c/f/a/a/au;

    .line 46
    new-instance v0, Lcom/viber/voip/contacts/c/f/a/a/au;

    const-string/jumbo v1, "CHECK_INVISIBLE_FINISHED"

    invoke-direct {v0, v1, v7}, Lcom/viber/voip/contacts/c/f/a/a/au;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/viber/voip/contacts/c/f/a/a/au;->e:Lcom/viber/voip/contacts/c/f/a/a/au;

    .line 47
    new-instance v0, Lcom/viber/voip/contacts/c/f/a/a/au;

    const-string/jumbo v1, "CONTACTS_UPDATE_FINISHED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/viber/voip/contacts/c/f/a/a/au;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/viber/voip/contacts/c/f/a/a/au;->f:Lcom/viber/voip/contacts/c/f/a/a/au;

    .line 41
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/viber/voip/contacts/c/f/a/a/au;

    sget-object v1, Lcom/viber/voip/contacts/c/f/a/a/au;->a:Lcom/viber/voip/contacts/c/f/a/a/au;

    aput-object v1, v0, v3

    sget-object v1, Lcom/viber/voip/contacts/c/f/a/a/au;->b:Lcom/viber/voip/contacts/c/f/a/a/au;

    aput-object v1, v0, v4

    sget-object v1, Lcom/viber/voip/contacts/c/f/a/a/au;->c:Lcom/viber/voip/contacts/c/f/a/a/au;

    aput-object v1, v0, v5

    sget-object v1, Lcom/viber/voip/contacts/c/f/a/a/au;->d:Lcom/viber/voip/contacts/c/f/a/a/au;

    aput-object v1, v0, v6

    sget-object v1, Lcom/viber/voip/contacts/c/f/a/a/au;->e:Lcom/viber/voip/contacts/c/f/a/a/au;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/viber/voip/contacts/c/f/a/a/au;->f:Lcom/viber/voip/contacts/c/f/a/a/au;

    aput-object v2, v0, v1

    sput-object v0, Lcom/viber/voip/contacts/c/f/a/a/au;->g:[Lcom/viber/voip/contacts/c/f/a/a/au;

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
    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/viber/voip/contacts/c/f/a/a/au;
    .locals 1
    .parameter

    .prologue
    .line 41
    const-class v0, Lcom/viber/voip/contacts/c/f/a/a/au;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/contacts/c/f/a/a/au;

    return-object v0
.end method

.method public static values()[Lcom/viber/voip/contacts/c/f/a/a/au;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/viber/voip/contacts/c/f/a/a/au;->g:[Lcom/viber/voip/contacts/c/f/a/a/au;

    invoke-virtual {v0}, [Lcom/viber/voip/contacts/c/f/a/a/au;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/viber/voip/contacts/c/f/a/a/au;

    return-object v0
.end method
