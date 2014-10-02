.class public Lcom/viber/voip/a/af;
.super Lcom/viber/voip/a/c;
.source "SourceFile"


# instance fields
.field public final a:Lcom/viber/voip/a/c;

.field public final b:Lcom/viber/voip/a/c;

.field public final c:Lcom/viber/voip/a/c;

.field private final d:Lcom/viber/voip/a/x;

.field private final e:Lcom/viber/voip/a/x;


# direct methods
.method private constructor <init>()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 1321
    const-string/jumbo v0, "Popup"

    invoke-direct {p0, v0, v4}, Lcom/viber/voip/a/c;-><init>(Ljava/lang/String;Lcom/viber/voip/a/b;)V

    .line 1324
    new-instance v0, Lcom/viber/voip/a/c;

    const-string/jumbo v1, "Grow_First"

    invoke-direct {v0, v1, v4}, Lcom/viber/voip/a/c;-><init>(Ljava/lang/String;Lcom/viber/voip/a/b;)V

    iput-object v0, p0, Lcom/viber/voip/a/af;->a:Lcom/viber/voip/a/c;

    .line 1325
    new-instance v0, Lcom/viber/voip/a/c;

    const-string/jumbo v1, "Grow_Second"

    invoke-direct {v0, v1, v4}, Lcom/viber/voip/a/c;-><init>(Ljava/lang/String;Lcom/viber/voip/a/b;)V

    iput-object v0, p0, Lcom/viber/voip/a/af;->b:Lcom/viber/voip/a/c;

    .line 1326
    new-instance v0, Lcom/viber/voip/a/c;

    const-string/jumbo v1, "Grow_Third"

    invoke-direct {v0, v1, v4}, Lcom/viber/voip/a/c;-><init>(Ljava/lang/String;Lcom/viber/voip/a/b;)V

    iput-object v0, p0, Lcom/viber/voip/a/af;->c:Lcom/viber/voip/a/c;

    .line 1328
    new-instance v0, Lcom/viber/voip/a/x;

    const-string/jumbo v1, "Messages"

    const-string/jumbo v2, "Approve_Grow"

    const-string/jumbo v3, "Grow"

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/a/x;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lcom/viber/voip/a/b;)V

    iput-object v0, p0, Lcom/viber/voip/a/af;->d:Lcom/viber/voip/a/x;

    .line 1329
    new-instance v0, Lcom/viber/voip/a/x;

    const-string/jumbo v1, "Messages"

    const-string/jumbo v2, "Decline_Grow"

    const-string/jumbo v3, "Grow"

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/a/x;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lcom/viber/voip/a/b;)V

    iput-object v0, p0, Lcom/viber/voip/a/af;->e:Lcom/viber/voip/a/x;

    .line 1322
    return-void
.end method

.method synthetic constructor <init>(Lcom/viber/voip/a/b;)V
    .locals 0
    .parameter

    .prologue
    .line 1318
    invoke-direct {p0}, Lcom/viber/voip/a/af;-><init>()V

    return-void
.end method


# virtual methods
.method public final c()Lcom/viber/voip/a/x;
    .locals 1

    .prologue
    .line 1332
    iget-object v0, p0, Lcom/viber/voip/a/af;->d:Lcom/viber/voip/a/x;

    return-object v0
.end method

.method public final d()Lcom/viber/voip/a/x;
    .locals 1

    .prologue
    .line 1336
    iget-object v0, p0, Lcom/viber/voip/a/af;->e:Lcom/viber/voip/a/x;

    return-object v0
.end method
