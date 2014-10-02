.class public Lcom/viber/voip/a/h;
.super Lcom/viber/voip/a/c;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 1601
    const-string/jumbo v0, "Chat_heads"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/viber/voip/a/c;-><init>(Ljava/lang/String;Lcom/viber/voip/a/b;)V

    .line 1602
    return-void
.end method


# virtual methods
.method public final c()Lcom/viber/voip/a/x;
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 1605
    new-instance v0, Lcom/viber/voip/a/x;

    const-string/jumbo v1, "Chat_heads"

    const-string/jumbo v2, "Dismiss"

    const-string/jumbo v3, "Chat_head"

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/a/x;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lcom/viber/voip/a/b;)V

    return-object v0
.end method
