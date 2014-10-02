.class public final enum Lcom/viber/voip/stickers/ba;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/viber/voip/stickers/ba;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/viber/voip/stickers/ba;

.field public static final enum b:Lcom/viber/voip/stickers/ba;

.field public static final enum c:Lcom/viber/voip/stickers/ba;

.field private static final synthetic d:[Lcom/viber/voip/stickers/ba;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4
    new-instance v0, Lcom/viber/voip/stickers/ba;

    const-string/jumbo v1, "MENU"

    invoke-direct {v0, v1, v2}, Lcom/viber/voip/stickers/ba;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/viber/voip/stickers/ba;->a:Lcom/viber/voip/stickers/ba;

    .line 5
    new-instance v0, Lcom/viber/voip/stickers/ba;

    const-string/jumbo v1, "LIST"

    invoke-direct {v0, v1, v3}, Lcom/viber/voip/stickers/ba;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/viber/voip/stickers/ba;->b:Lcom/viber/voip/stickers/ba;

    .line 6
    new-instance v0, Lcom/viber/voip/stickers/ba;

    const-string/jumbo v1, "THUMB"

    invoke-direct {v0, v1, v4}, Lcom/viber/voip/stickers/ba;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/viber/voip/stickers/ba;->c:Lcom/viber/voip/stickers/ba;

    .line 3
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/viber/voip/stickers/ba;

    sget-object v1, Lcom/viber/voip/stickers/ba;->a:Lcom/viber/voip/stickers/ba;

    aput-object v1, v0, v2

    sget-object v1, Lcom/viber/voip/stickers/ba;->b:Lcom/viber/voip/stickers/ba;

    aput-object v1, v0, v3

    sget-object v1, Lcom/viber/voip/stickers/ba;->c:Lcom/viber/voip/stickers/ba;

    aput-object v1, v0, v4

    sput-object v0, Lcom/viber/voip/stickers/ba;->d:[Lcom/viber/voip/stickers/ba;

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
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/viber/voip/stickers/ba;
    .locals 1
    .parameter

    .prologue
    .line 3
    const-class v0, Lcom/viber/voip/stickers/ba;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/stickers/ba;

    return-object v0
.end method

.method public static values()[Lcom/viber/voip/stickers/ba;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/viber/voip/stickers/ba;->d:[Lcom/viber/voip/stickers/ba;

    invoke-virtual {v0}, [Lcom/viber/voip/stickers/ba;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/viber/voip/stickers/ba;

    return-object v0
.end method
