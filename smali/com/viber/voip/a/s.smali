.class public Lcom/viber/voip/a/s;
.super Lcom/viber/voip/a/c;
.source "SourceFile"


# instance fields
.field private final a:Lcom/viber/voip/a/x;

.field private final b:Lcom/viber/voip/a/x;


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 134
    const-string/jumbo v0, "Crop_and_save"

    invoke-direct {p0, v0, v4}, Lcom/viber/voip/a/c;-><init>(Ljava/lang/String;Lcom/viber/voip/a/b;)V

    .line 137
    new-instance v0, Lcom/viber/voip/a/x;

    const-string/jumbo v1, "General"

    const-string/jumbo v2, "Crop"

    const-string/jumbo v3, ""

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/a/x;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lcom/viber/voip/a/b;)V

    iput-object v0, p0, Lcom/viber/voip/a/s;->a:Lcom/viber/voip/a/x;

    .line 138
    new-instance v0, Lcom/viber/voip/a/x;

    const-string/jumbo v1, "General"

    const-string/jumbo v2, "Cancel"

    const-string/jumbo v3, ""

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/a/x;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lcom/viber/voip/a/b;)V

    iput-object v0, p0, Lcom/viber/voip/a/s;->b:Lcom/viber/voip/a/x;

    .line 135
    return-void
.end method


# virtual methods
.method public final c()Lcom/viber/voip/a/x;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/viber/voip/a/s;->a:Lcom/viber/voip/a/x;

    return-object v0
.end method

.method public final d()Lcom/viber/voip/a/x;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/viber/voip/a/s;->b:Lcom/viber/voip/a/x;

    return-object v0
.end method
