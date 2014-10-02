.class public Lcom/viber/voip/a/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 1614
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1615
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    iput-object p1, p0, Lcom/viber/voip/a/c;->a:Ljava/lang/String;

    .line 1616
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/viber/voip/a/c;->b:Ljava/lang/String;

    .line 1617
    return-void

    .line 1615
    :cond_0
    const-string/jumbo p1, ""

    goto :goto_0
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/viber/voip/a/b;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1609
    invoke-direct {p0, p1}, Lcom/viber/voip/a/c;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1620
    iget-object v0, p0, Lcom/viber/voip/a/c;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 1624
    iput-object p1, p0, Lcom/viber/voip/a/c;->b:Ljava/lang/String;

    .line 1625
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1628
    iget-object v0, p0, Lcom/viber/voip/a/c;->b:Ljava/lang/String;

    return-object v0
.end method
