.class public Lcom/viber/voip/d/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Landroid/os/Handler;

.field private static final c:Lorg/apache/http/params/HttpParams;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 54
    const-class v0, Lcom/viber/voip/d/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/d/b;->a:Ljava/lang/String;

    .line 59
    sget-object v0, Lcom/viber/voip/dk;->g:Lcom/viber/voip/dk;

    invoke-static {v0}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/d/b;->b:Landroid/os/Handler;

    .line 63
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    sput-object v0, Lcom/viber/voip/d/b;->c:Lorg/apache/http/params/HttpParams;

    .line 64
    sget-object v0, Lcom/viber/voip/d/b;->c:Lorg/apache/http/params/HttpParams;

    sget-object v1, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    .line 65
    sget-object v0, Lcom/viber/voip/d/b;->c:Lorg/apache/http/params/HttpParams;

    const-string/jumbo v1, "utf-8"

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpProtocolParams;->setContentCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 66
    sget-object v0, Lcom/viber/voip/d/b;->c:Lorg/apache/http/params/HttpParams;

    const-wide/32 v1, 0xea60

    invoke-static {v0, v1, v2}, Lorg/apache/http/conn/params/ConnManagerParams;->setTimeout(Lorg/apache/http/params/HttpParams;J)V

    .line 67
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 215
    return-void
.end method

.method static synthetic a()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/viber/voip/d/b;->b:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic a(Lcom/viber/voip/d/b;Ljava/lang/String;Ljava/lang/String;I)Ljava/io/InputStream;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3}, Lcom/viber/voip/d/b;->a(Ljava/lang/String;Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;I)Ljava/io/InputStream;
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 164
    invoke-static {p1}, Lcom/viber/voip/ViberEnv;->newHttpRequest(Ljava/lang/String;)Lcom/viber/voip/util/http/HttpRequest;

    move-result-object v0

    .line 165
    invoke-interface {v0, v4}, Lcom/viber/voip/util/http/HttpRequest;->setFollowRedirects(Z)V

    .line 166
    if-eqz p2, :cond_0

    .line 167
    invoke-interface {v0, v5}, Lcom/viber/voip/util/http/HttpRequest;->setPost(Z)V

    .line 168
    const-string/jumbo v1, "XMLDOC"

    invoke-interface {v0, v1, p2}, Lcom/viber/voip/util/http/HttpRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    :cond_0
    const-string/jumbo v1, "User-Agent"

    const-string/jumbo v2, "Android"

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/util/http/HttpRequest;->setRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    const v1, 0xea60

    invoke-interface {v0, v1}, Lcom/viber/voip/util/http/HttpRequest;->setConnectTimeout(I)V

    .line 175
    invoke-interface {v0}, Lcom/viber/voip/util/http/HttpRequest;->getResponseCode()I

    move-result v1

    .line 177
    sparse-switch v1, :sswitch_data_0

    .line 200
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v2, "Wrong server response: %d for URL = %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v4

    aput-object p1, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 186
    :sswitch_0
    const-string/jumbo v1, "Location"

    invoke-interface {v0, v1}, Lcom/viber/voip/util/http/HttpRequest;->getResponseHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 187
    const/16 v2, 0xa

    if-ge p3, v2, :cond_1

    .line 188
    add-int/lit8 v2, p3, 0x1

    invoke-direct {p0, v1, p2, v2}, Lcom/viber/voip/d/b;->a(Ljava/lang/String;Ljava/lang/String;I)Ljava/io/InputStream;

    .line 203
    :sswitch_1
    invoke-interface {v0}, Lcom/viber/voip/util/http/HttpRequest;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0

    .line 190
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Max redirect count reached: url="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ", redirectUrl="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 192
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 177
    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_1
        0xcb -> :sswitch_1
        0x12d -> :sswitch_0
        0x12e -> :sswitch_0
        0x12f -> :sswitch_0
        0x133 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/viber/voip/d/d;)Lcom/viber/voip/d/c;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 210
    new-instance v0, Lcom/viber/voip/d/c;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/viber/voip/d/c;-><init>(Lcom/viber/voip/d/b;Ljava/lang/String;Ljava/lang/String;Lcom/viber/voip/d/d;)V

    .line 211
    sget-object v1, Lcom/viber/voip/d/b;->b:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 212
    return-object v0
.end method
