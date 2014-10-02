.class public final enum Lcom/viber/voip/messages/ui/a/h;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/viber/voip/messages/ui/a/h;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/viber/voip/messages/ui/a/h;

.field public static final enum b:Lcom/viber/voip/messages/ui/a/h;

.field private static final synthetic c:[Lcom/viber/voip/messages/ui/a/h;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 49
    new-instance v0, Lcom/viber/voip/messages/ui/a/h;

    const-string/jumbo v1, "STANDART"

    invoke-direct {v0, v1, v2}, Lcom/viber/voip/messages/ui/a/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/viber/voip/messages/ui/a/h;->a:Lcom/viber/voip/messages/ui/a/h;

    new-instance v0, Lcom/viber/voip/messages/ui/a/h;

    const-string/jumbo v1, "DOTTED"

    invoke-direct {v0, v1, v3}, Lcom/viber/voip/messages/ui/a/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/viber/voip/messages/ui/a/h;->b:Lcom/viber/voip/messages/ui/a/h;

    .line 48
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/viber/voip/messages/ui/a/h;

    sget-object v1, Lcom/viber/voip/messages/ui/a/h;->a:Lcom/viber/voip/messages/ui/a/h;

    aput-object v1, v0, v2

    sget-object v1, Lcom/viber/voip/messages/ui/a/h;->b:Lcom/viber/voip/messages/ui/a/h;

    aput-object v1, v0, v3

    sput-object v0, Lcom/viber/voip/messages/ui/a/h;->c:[Lcom/viber/voip/messages/ui/a/h;

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
    .line 48
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/viber/voip/messages/ui/a/h;
    .locals 1
    .parameter

    .prologue
    .line 48
    const-class v0, Lcom/viber/voip/messages/ui/a/h;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/ui/a/h;

    return-object v0
.end method

.method public static values()[Lcom/viber/voip/messages/ui/a/h;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/viber/voip/messages/ui/a/h;->c:[Lcom/viber/voip/messages/ui/a/h;

    invoke-virtual {v0}, [Lcom/viber/voip/messages/ui/a/h;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/viber/voip/messages/ui/a/h;

    return-object v0
.end method
