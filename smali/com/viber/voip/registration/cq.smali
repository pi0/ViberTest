.class public abstract Lcom/viber/voip/registration/cq;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<RES:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:Ljava/io/StringWriter;

.field protected c:Lorg/xmlpull/v1/XmlSerializer;

.field protected d:Ljava/lang/String;

.field protected e:Ljava/lang/String;

.field protected f:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TRES;"
        }
    .end annotation
.end field

.field protected g:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/registration/cq;->g:Ljava/util/HashMap;

    .line 38
    iput-object p1, p0, Lcom/viber/voip/registration/cq;->a:Ljava/lang/String;

    .line 39
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/registration/cq;->h:Ljava/lang/String;

    .line 40
    iput-object p2, p0, Lcom/viber/voip/registration/cq;->d:Ljava/lang/String;

    .line 41
    iput-object p3, p0, Lcom/viber/voip/registration/cq;->e:Ljava/lang/String;

    .line 42
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/registration/cq;->b:Ljava/io/StringWriter;

    .line 43
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/registration/cq;->c:Lorg/xmlpull/v1/XmlSerializer;

    .line 44
    iget-object v0, p0, Lcom/viber/voip/registration/cq;->c:Lorg/xmlpull/v1/XmlSerializer;

    iget-object v1, p0, Lcom/viber/voip/registration/cq;->b:Ljava/io/StringWriter;

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    .line 45
    iget-object v0, p0, Lcom/viber/voip/registration/cq;->c:Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v1, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 46
    iget-object v0, p0, Lcom/viber/voip/registration/cq;->c:Lorg/xmlpull/v1/XmlSerializer;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 47
    return-void
.end method


# virtual methods
.method protected a(Ljava/io/InputStream;)V
    .locals 9
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v0, 0x0

    .line 79
    const/16 v1, 0xa

    const v2, 0x186a0

    invoke-static {p1, v1, v2}, Lcom/viber/voip/util/am;->a(Ljava/io/InputStream;II)[B

    move-result-object v1

    .line 81
    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 84
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v1

    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v6

    .line 85
    const-string/jumbo v1, "utf-8"

    invoke-interface {v6, v5, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 88
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 90
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    move-result v1

    move-object v2, v3

    .line 92
    :goto_0
    if-eq v1, v4, :cond_3

    .line 93
    const/4 v8, 0x2

    if-ne v1, v8, :cond_1

    .line 94
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 95
    iget-object v1, p0, Lcom/viber/voip/registration/cq;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v0, v4

    .line 107
    :cond_0
    :goto_1
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto :goto_0

    .line 98
    :cond_1
    const/4 v8, 0x4

    if-ne v1, v8, :cond_2

    .line 99
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 112
    :catch_0
    move-exception v0

    .line 113
    :try_start_1
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 115
    :catchall_0
    move-exception v0

    invoke-virtual {v5}, Ljava/io/ByteArrayInputStream;->close()V

    throw v0

    .line 100
    :cond_2
    const/4 v8, 0x3

    if-ne v1, v8, :cond_0

    .line 101
    :try_start_2
    iget-object v1, p0, Lcom/viber/voip/registration/cq;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 102
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Lcom/viber/voip/registration/cq;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const/4 v1, 0x0

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    move-object v2, v3

    .line 104
    goto :goto_1

    .line 109
    :cond_3
    if-nez v0, :cond_4

    .line 110
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "XML response malformed, expected root tag not found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/registration/cq;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0

    .line 115
    :cond_4
    invoke-virtual {v5}, Ljava/io/ByteArrayInputStream;->close()V

    .line 117
    return-void
.end method

.method protected abstract a(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method protected abstract b()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TRES;"
        }
    .end annotation
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 50
    iget-object v0, p0, Lcom/viber/voip/registration/cq;->c:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0, v1, p1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 51
    iget-object v0, p0, Lcom/viber/voip/registration/cq;->c:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0, p2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 52
    iget-object v0, p0, Lcom/viber/voip/registration/cq;->c:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0, v1, p1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 53
    return-void
.end method

.method public c()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TRES;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 59
    iget-object v0, p0, Lcom/viber/voip/registration/cq;->c:Lorg/xmlpull/v1/XmlSerializer;

    iget-object v1, p0, Lcom/viber/voip/registration/cq;->d:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 60
    iget-object v0, p0, Lcom/viber/voip/registration/cq;->c:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 61
    iget-object v0, p0, Lcom/viber/voip/registration/cq;->b:Ljava/io/StringWriter;

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    .line 62
    iput-object v2, p0, Lcom/viber/voip/registration/cq;->b:Ljava/io/StringWriter;

    .line 63
    iput-object v2, p0, Lcom/viber/voip/registration/cq;->c:Lorg/xmlpull/v1/XmlSerializer;

    .line 64
    iput-object v2, p0, Lcom/viber/voip/registration/cq;->d:Ljava/lang/String;

    .line 66
    iget-object v1, p0, Lcom/viber/voip/registration/cq;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/viber/voip/ViberEnv;->newHttpRequest(Ljava/lang/String;)Lcom/viber/voip/util/http/HttpRequest;

    move-result-object v2

    .line 67
    const/4 v1, 0x1

    invoke-interface {v2, v1}, Lcom/viber/voip/util/http/HttpRequest;->setPost(Z)V

    .line 68
    const-string/jumbo v1, "XMLDOC"

    invoke-interface {v2, v1, v0}, Lcom/viber/voip/util/http/HttpRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/viber/voip/registration/cq;->g:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 70
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v2, v1, v0}, Lcom/viber/voip/util/http/HttpRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 72
    :cond_0
    invoke-virtual {p0}, Lcom/viber/voip/registration/cq;->b()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/registration/cq;->f:Ljava/lang/Object;

    .line 73
    invoke-interface {v2}, Lcom/viber/voip/util/http/HttpRequest;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/registration/cq;->a(Ljava/io/InputStream;)V

    .line 74
    iget-object v0, p0, Lcom/viber/voip/registration/cq;->f:Ljava/lang/Object;

    return-object v0
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/viber/voip/registration/cq;->g:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    return-void
.end method
