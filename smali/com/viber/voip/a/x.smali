.class public Lcom/viber/voip/a/x;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/Long;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1683
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1684
    iput-object p1, p0, Lcom/viber/voip/a/x;->a:Ljava/lang/String;

    .line 1685
    iput-object p2, p0, Lcom/viber/voip/a/x;->b:Ljava/lang/String;

    .line 1686
    iput-object p3, p0, Lcom/viber/voip/a/x;->c:Ljava/lang/String;

    .line 1687
    iput-object p4, p0, Lcom/viber/voip/a/x;->d:Ljava/lang/Long;

    .line 1688
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lcom/viber/voip/a/b;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1632
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/viber/voip/a/x;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Long;)Lcom/viber/voip/a/x;
    .locals 0
    .parameter

    .prologue
    .line 1722
    iput-object p1, p0, Lcom/viber/voip/a/x;->d:Ljava/lang/Long;

    .line 1723
    return-object p0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1691
    iget-object v0, p0, Lcom/viber/voip/a/x;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1695
    iget-object v0, p0, Lcom/viber/voip/a/x;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1699
    iget-object v0, p0, Lcom/viber/voip/a/x;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 1703
    iget-object v0, p0, Lcom/viber/voip/a/x;->d:Ljava/lang/Long;

    return-object v0
.end method
