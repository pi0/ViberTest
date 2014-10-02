.class public final enum Lcom/viber/voip/widget/v;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/viber/voip/widget/v;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/viber/voip/widget/v;

.field public static final enum b:Lcom/viber/voip/widget/v;

.field private static final synthetic d:[Lcom/viber/voip/widget/v;


# instance fields
.field public final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 33
    new-instance v0, Lcom/viber/voip/widget/v;

    const-string/jumbo v1, "widthToHeight"

    const-string/jumbo v2, "widthToHeight"

    invoke-direct {v0, v1, v3, v2}, Lcom/viber/voip/widget/v;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/viber/voip/widget/v;->a:Lcom/viber/voip/widget/v;

    .line 34
    new-instance v0, Lcom/viber/voip/widget/v;

    const-string/jumbo v1, "heightToWidth"

    const-string/jumbo v2, "heightToWidth"

    invoke-direct {v0, v1, v4, v2}, Lcom/viber/voip/widget/v;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/viber/voip/widget/v;->b:Lcom/viber/voip/widget/v;

    .line 32
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/viber/voip/widget/v;

    sget-object v1, Lcom/viber/voip/widget/v;->a:Lcom/viber/voip/widget/v;

    aput-object v1, v0, v3

    sget-object v1, Lcom/viber/voip/widget/v;->b:Lcom/viber/voip/widget/v;

    aput-object v1, v0, v4

    sput-object v0, Lcom/viber/voip/widget/v;->d:[Lcom/viber/voip/widget/v;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 39
    iput-object p3, p0, Lcom/viber/voip/widget/v;->c:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/viber/voip/widget/v;
    .locals 3
    .parameter

    .prologue
    .line 47
    sget-object v0, Lcom/viber/voip/widget/v;->a:Lcom/viber/voip/widget/v;

    iget-object v0, v0, Lcom/viber/voip/widget/v;->c:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    sget-object v0, Lcom/viber/voip/widget/v;->a:Lcom/viber/voip/widget/v;

    .line 50
    :goto_0
    return-object v0

    .line 49
    :cond_0
    sget-object v0, Lcom/viber/voip/widget/v;->b:Lcom/viber/voip/widget/v;

    iget-object v0, v0, Lcom/viber/voip/widget/v;->c:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 50
    sget-object v0, Lcom/viber/voip/widget/v;->b:Lcom/viber/voip/widget/v;

    goto :goto_0

    .line 52
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "direction must be either "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/viber/voip/widget/v;->a:Lcom/viber/voip/widget/v;

    iget-object v2, v2, Lcom/viber/voip/widget/v;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " or "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/viber/voip/widget/v;->b:Lcom/viber/voip/widget/v;

    iget-object v2, v2, Lcom/viber/voip/widget/v;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/viber/voip/widget/v;
    .locals 1
    .parameter

    .prologue
    .line 32
    const-class v0, Lcom/viber/voip/widget/v;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/widget/v;

    return-object v0
.end method

.method public static values()[Lcom/viber/voip/widget/v;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/viber/voip/widget/v;->d:[Lcom/viber/voip/widget/v;

    invoke-virtual {v0}, [Lcom/viber/voip/widget/v;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/viber/voip/widget/v;

    return-object v0
.end method
