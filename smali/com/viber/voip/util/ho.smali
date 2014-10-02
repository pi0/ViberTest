.class final Lcom/viber/voip/util/ho;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/util/hr;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/CharSequence;II)Z
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 135
    move v0, v1

    .line 137
    :goto_0
    if-ge p2, p3, :cond_1

    .line 138
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 139
    add-int/lit8 v0, v0, 0x1

    .line 140
    const/4 v2, 0x5

    if-lt v0, v2, :cond_0

    .line 141
    const/4 v0, 0x1

    .line 145
    :goto_1
    return v0

    .line 137
    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 145
    goto :goto_1
.end method
