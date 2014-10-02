.class public Lcom/viber/voip/a/az;
.super Lcom/viber/voip/a/c;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 52
    const-string/jumbo v0, "Welcome"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/viber/voip/a/c;-><init>(Ljava/lang/String;Lcom/viber/voip/a/b;)V

    .line 53
    return-void
.end method
