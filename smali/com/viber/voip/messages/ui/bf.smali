.class public Lcom/viber/voip/messages/ui/bf;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/Character;

.field private c:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/Character;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/viber/voip/messages/ui/bf;->a:Ljava/lang/String;

    .line 63
    iput-object p2, p0, Lcom/viber/voip/messages/ui/bf;->b:Ljava/lang/Character;

    .line 64
    invoke-static {}, Lcom/viber/voip/messages/ui/bd;->h()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    invoke-static {}, Lcom/viber/voip/messages/ui/bd;->i()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    iput-object p1, p0, Lcom/viber/voip/messages/ui/bf;->c:Ljava/lang/String;

    .line 67
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/Character;Lcom/viber/voip/messages/ui/be;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lcom/viber/voip/messages/ui/bf;-><init>(Ljava/lang/String;Ljava/lang/Character;)V

    return-void
.end method

.method private a(I)Lcom/viber/voip/messages/ui/bf;
    .locals 1
    .parameter

    .prologue
    .line 73
    invoke-static {}, Lcom/viber/voip/messages/ui/bd;->j()Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 74
    return-object p0
.end method

.method static synthetic a(Lcom/viber/voip/messages/ui/bf;I)Lcom/viber/voip/messages/ui/bf;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/ui/bf;->a(I)Lcom/viber/voip/messages/ui/bf;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/viber/voip/messages/ui/bf;Ljava/lang/String;)Lcom/viber/voip/messages/ui/bf;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/ui/bf;->b(Ljava/lang/String;)Lcom/viber/voip/messages/ui/bf;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;)Lcom/viber/voip/messages/ui/bf;
    .locals 0
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Lcom/viber/voip/messages/ui/bf;->c:Ljava/lang/String;

    .line 70
    return-object p0
.end method

.method static synthetic a(Lcom/viber/voip/messages/ui/bf;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/viber/voip/messages/ui/bf;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/viber/voip/messages/ui/bf;Ljava/lang/String;)Lcom/viber/voip/messages/ui/bf;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/ui/bf;->a(Ljava/lang/String;)Lcom/viber/voip/messages/ui/bf;

    move-result-object v0

    return-object v0
.end method

.method private b(Ljava/lang/String;)Lcom/viber/voip/messages/ui/bf;
    .locals 1
    .parameter

    .prologue
    .line 77
    invoke-static {}, Lcom/viber/voip/messages/ui/bd;->k()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    return-object p0
.end method

.method static synthetic b(Lcom/viber/voip/messages/ui/bf;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/bf;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/viber/voip/w;->x:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/ui/bf;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_scaled_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/viber/voip/messages/ui/bd;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lcom/viber/voip/messages/ui/bf;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/bf;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private d()Ljava/lang/String;
    .locals 2

    .prologue
    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "emoticons/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/ui/bf;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/viber/voip/messages/ui/bf;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/Character;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/viber/voip/messages/ui/bf;->b:Ljava/lang/Character;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter

    .prologue
    .line 99
    instance-of v0, p1, Lcom/viber/voip/messages/ui/bf;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/ui/bf;->a:Ljava/lang/String;

    check-cast p1, Lcom/viber/voip/messages/ui/bf;

    invoke-virtual {p1}, Lcom/viber/voip/messages/ui/bf;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
