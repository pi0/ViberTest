.class public Lcom/viber/voip/a/ax;
.super Lcom/viber/voip/a/aw;
.source "SourceFile"


# instance fields
.field public final b:Lcom/viber/voip/a/c;

.field private final c:Lcom/viber/voip/a/x;

.field private final d:Lcom/viber/voip/a/x;


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 486
    const-string/jumbo v0, "View_Photo"

    invoke-direct {p0, v0}, Lcom/viber/voip/a/aw;-><init>(Ljava/lang/String;)V

    .line 489
    new-instance v0, Lcom/viber/voip/a/c;

    const-string/jumbo v1, "DownloadPhoto"

    invoke-direct {v0, v1, v4}, Lcom/viber/voip/a/c;-><init>(Ljava/lang/String;Lcom/viber/voip/a/b;)V

    iput-object v0, p0, Lcom/viber/voip/a/ax;->b:Lcom/viber/voip/a/c;

    .line 491
    new-instance v0, Lcom/viber/voip/a/x;

    const-string/jumbo v1, "Messages"

    const-string/jumbo v2, "Use_As_wallpaper"

    const-string/jumbo v3, "Messaging"

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/a/x;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lcom/viber/voip/a/b;)V

    iput-object v0, p0, Lcom/viber/voip/a/ax;->c:Lcom/viber/voip/a/x;

    .line 492
    new-instance v0, Lcom/viber/voip/a/x;

    const-string/jumbo v1, "Messages"

    const-string/jumbo v2, "Use_As_background"

    const-string/jumbo v3, "Messaging"

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/a/x;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lcom/viber/voip/a/b;)V

    iput-object v0, p0, Lcom/viber/voip/a/ax;->d:Lcom/viber/voip/a/x;

    .line 487
    return-void
.end method


# virtual methods
.method public final d()Lcom/viber/voip/a/x;
    .locals 1

    .prologue
    .line 495
    iget-object v0, p0, Lcom/viber/voip/a/ax;->c:Lcom/viber/voip/a/x;

    return-object v0
.end method

.method public final e()Lcom/viber/voip/a/x;
    .locals 1

    .prologue
    .line 499
    iget-object v0, p0, Lcom/viber/voip/a/ax;->d:Lcom/viber/voip/a/x;

    return-object v0
.end method
