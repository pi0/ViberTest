.class final Lcom/viber/voip/util/hn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/util/hr;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 115
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
    const/4 v0, 0x1

    .line 117
    if-nez p2, :cond_1

    .line 125
    :cond_0
    :goto_0
    return v0

    .line 121
    :cond_1
    add-int/lit8 v1, p2, -0x1

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0x40

    if-ne v1, v2, :cond_0

    .line 122
    const/4 v0, 0x0

    goto :goto_0
.end method
