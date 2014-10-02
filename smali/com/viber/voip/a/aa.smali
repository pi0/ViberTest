.class public Lcom/viber/voip/a/aa;
.super Lcom/viber/voip/a/c;
.source "SourceFile"


# instance fields
.field public final a:Lcom/viber/voip/a/af;

.field private final b:Lcom/viber/voip/a/x;


# direct methods
.method private constructor <init>()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 1307
    const-string/jumbo v0, "Grow"

    invoke-direct {p0, v0, v4}, Lcom/viber/voip/a/c;-><init>(Ljava/lang/String;Lcom/viber/voip/a/b;)V

    .line 1310
    new-instance v0, Lcom/viber/voip/a/af;

    invoke-direct {v0, v4}, Lcom/viber/voip/a/af;-><init>(Lcom/viber/voip/a/b;)V

    iput-object v0, p0, Lcom/viber/voip/a/aa;->a:Lcom/viber/voip/a/af;

    .line 1311
    new-instance v0, Lcom/viber/voip/a/x;

    const-string/jumbo v1, "Messages"

    const-string/jumbo v2, "Receive_grow"

    const-string/jumbo v3, "growSMS"

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/a/x;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lcom/viber/voip/a/b;)V

    iput-object v0, p0, Lcom/viber/voip/a/aa;->b:Lcom/viber/voip/a/x;

    .line 1308
    return-void
.end method

.method synthetic constructor <init>(Lcom/viber/voip/a/b;)V
    .locals 0
    .parameter

    .prologue
    .line 1304
    invoke-direct {p0}, Lcom/viber/voip/a/aa;-><init>()V

    return-void
.end method


# virtual methods
.method public final c()Lcom/viber/voip/a/x;
    .locals 1

    .prologue
    .line 1314
    iget-object v0, p0, Lcom/viber/voip/a/aa;->b:Lcom/viber/voip/a/x;

    return-object v0
.end method
