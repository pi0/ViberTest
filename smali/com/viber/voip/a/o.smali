.class public Lcom/viber/voip/a/o;
.super Lcom/viber/voip/a/m;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 800
    const-string/jumbo v0, "1on1"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/viber/voip/a/m;-><init>(Ljava/lang/String;Lcom/viber/voip/a/b;)V

    .line 801
    new-instance v0, Lcom/viber/voip/a/q;

    const-string/jumbo v1, "1on1_Info"

    invoke-direct {v0, v1}, Lcom/viber/voip/a/q;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/viber/voip/a/o;->a:Lcom/viber/voip/a/q;

    .line 802
    return-void
.end method

.method synthetic constructor <init>(Lcom/viber/voip/a/b;)V
    .locals 0
    .parameter

    .prologue
    .line 798
    invoke-direct {p0}, Lcom/viber/voip/a/o;-><init>()V

    return-void
.end method
