.class public Lcom/viber/voip/backgrounds/k;
.super Ljava/lang/Exception;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 515
    const-string/jumbo v0, "Low Storage Exception"

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 516
    return-void
.end method
