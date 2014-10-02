.class public Lcom/viber/voip/a/ay;
.super Lcom/viber/voip/a/aw;
.source "SourceFile"


# instance fields
.field public final b:Lcom/viber/voip/a/c;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 507
    const-string/jumbo v0, "View_Video"

    invoke-direct {p0, v0}, Lcom/viber/voip/a/aw;-><init>(Ljava/lang/String;)V

    .line 510
    new-instance v0, Lcom/viber/voip/a/c;

    const-string/jumbo v1, "DownloadVideo"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/viber/voip/a/c;-><init>(Ljava/lang/String;Lcom/viber/voip/a/b;)V

    iput-object v0, p0, Lcom/viber/voip/a/ay;->b:Lcom/viber/voip/a/c;

    .line 508
    return-void
.end method
