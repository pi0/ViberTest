.class public Lcom/viber/voip/stickers/ak;
.super Ljava/lang/Exception;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 859
    const-string/jumbo v0, "Low Storage Exception"

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 860
    return-void
.end method
