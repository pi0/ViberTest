.class public Lcom/viber/voip/a/ag;
.super Lcom/viber/voip/a/c;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 1535
    const-string/jumbo v0, "Received_invitation"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/viber/voip/a/c;-><init>(Ljava/lang/String;Lcom/viber/voip/a/b;)V

    .line 1536
    return-void
.end method


# virtual methods
.method public c()Lcom/viber/voip/a/x;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 1539
    new-instance v0, Lcom/viber/voip/a/x;

    const-string/jumbo v1, "Vibes"

    const-string/jumbo v2, "Received_invitation"

    move-object v4, v3

    move-object v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/a/x;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lcom/viber/voip/a/b;)V

    return-object v0
.end method
