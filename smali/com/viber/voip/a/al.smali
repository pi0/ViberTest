.class public Lcom/viber/voip/a/al;
.super Lcom/viber/voip/a/c;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 535
    const-string/jumbo v0, "Send_Location"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/viber/voip/a/c;-><init>(Ljava/lang/String;Lcom/viber/voip/a/b;)V

    .line 536
    return-void
.end method

.method synthetic constructor <init>(Lcom/viber/voip/a/b;)V
    .locals 0
    .parameter

    .prologue
    .line 533
    invoke-direct {p0}, Lcom/viber/voip/a/al;-><init>()V

    return-void
.end method
