.class public Lcom/viber/voip/util/upload/a/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/io/InputStream;

.field public d:I

.field public e:Ljava/util/Properties;

.field final synthetic f:Lcom/viber/voip/util/upload/a/c;


# direct methods
.method public constructor <init>(Lcom/viber/voip/util/upload/a/c;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 139
    iput-object p1, p0, Lcom/viber/voip/util/upload/a/g;->f:Lcom/viber/voip/util/upload/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 193
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/util/upload/a/g;->e:Ljava/util/Properties;

    .line 140
    iput-object p2, p0, Lcom/viber/voip/util/upload/a/g;->a:Ljava/lang/String;

    .line 141
    iput-object p3, p0, Lcom/viber/voip/util/upload/a/g;->b:Ljava/lang/String;

    .line 142
    iput-object p4, p0, Lcom/viber/voip/util/upload/a/g;->c:Ljava/io/InputStream;

    .line 143
    iput p5, p0, Lcom/viber/voip/util/upload/a/g;->d:I

    .line 144
    return-void
.end method

.method public constructor <init>(Lcom/viber/voip/util/upload/a/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 151
    iput-object p1, p0, Lcom/viber/voip/util/upload/a/g;->f:Lcom/viber/voip/util/upload/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 193
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/util/upload/a/g;->e:Ljava/util/Properties;

    .line 152
    iput-object p2, p0, Lcom/viber/voip/util/upload/a/g;->a:Ljava/lang/String;

    .line 153
    iput-object p3, p0, Lcom/viber/voip/util/upload/a/g;->b:Ljava/lang/String;

    .line 156
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    const-string/jumbo v1, "UTF-8"

    invoke-virtual {p4, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v0, p0, Lcom/viber/voip/util/upload/a/g;->c:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    :goto_0
    return-void

    .line 158
    :catch_0
    move-exception v0

    .line 160
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 169
    iget-object v0, p0, Lcom/viber/voip/util/upload/a/g;->e:Ljava/util/Properties;

    invoke-virtual {v0, p1, p2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    return-void
.end method
