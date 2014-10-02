.class public Lcom/viber/voip/util/upload/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/viber/voip/util/upload/a/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/viber/voip/util/upload/a/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/util/upload/a/b;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;I)Landroid/net/Uri;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "http://127.0.0.1:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "downloadId"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;ILjava/lang/String;Z)Landroid/net/Uri;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "http://127.0.0.1:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "downloadId"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "&messageBucket="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "&isCache="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private b()I
    .locals 3

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/viber/voip/util/upload/a/b;->c()V

    .line 54
    const/16 v0, 0x223d

    :goto_0
    const/16 v1, 0x2242

    if-gt v0, v1, :cond_0

    .line 56
    :try_start_0
    new-instance v1, Lcom/viber/voip/util/upload/a/a;

    invoke-direct {v1, v0}, Lcom/viber/voip/util/upload/a/a;-><init>(I)V

    iput-object v1, p0, Lcom/viber/voip/util/upload/a/b;->b:Lcom/viber/voip/util/upload/a/a;

    .line 57
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Successfully created media server on port "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/viber/voip/util/upload/a/b;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    :goto_1
    return v0

    .line 59
    :catch_0
    move-exception v1

    .line 60
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 54
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 63
    :cond_0
    const-string/jumbo v0, "Could not create server on any port!"

    invoke-direct {p0, v0}, Lcom/viber/voip/util/upload/a/b;->b(Ljava/lang/String;)V

    .line 64
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private b(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 79
    return-void
.end method

.method private c()V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/viber/voip/util/upload/a/b;->b:Lcom/viber/voip/util/upload/a/a;

    if-eqz v0, :cond_0

    .line 69
    const-string/jumbo v0, "Stopping media server"

    invoke-direct {p0, v0}, Lcom/viber/voip/util/upload/a/b;->b(Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/viber/voip/util/upload/a/b;->b:Lcom/viber/voip/util/upload/a/a;

    invoke-virtual {v0}, Lcom/viber/voip/util/upload/a/a;->a()V

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/viber/voip/util/upload/a/b;->b:Lcom/viber/voip/util/upload/a/a;

    .line 73
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1
    .parameter

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/viber/voip/util/upload/a/b;->b()I

    move-result v0

    .line 32
    invoke-direct {p0, p1, v0}, Lcom/viber/voip/util/upload/a/b;->a(Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Z)Landroid/net/Uri;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/viber/voip/util/upload/a/b;->b()I

    move-result v0

    .line 37
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/viber/voip/util/upload/a/b;->a(Ljava/lang/String;ILjava/lang/String;Z)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/viber/voip/util/upload/a/b;->c()V

    .line 45
    return-void
.end method
