.class Lcom/viber/voip/registration/bf;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v0, 0x0

    const/4 v6, 0x0

    .line 32
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v1

    .line 33
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 35
    invoke-interface {v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    .line 37
    const-string/jumbo v3, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-interface {v1, v3, v7}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 39
    const-string/jumbo v3, "utf-8"

    invoke-interface {v1, v3, v6}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 41
    const-string/jumbo v3, "DeActivateRequest"

    invoke-interface {v1, v6, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 43
    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    aput-object p0, v3, v0

    aput-object p1, v3, v7

    aput-object p2, v3, v8

    invoke-static {}, Lcom/viber/voip/w;->e()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v9

    .line 47
    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "PhoneNumber"

    aput-object v5, v4, v0

    const-string/jumbo v5, "CountryIDDCode"

    aput-object v5, v4, v7

    const-string/jumbo v5, "UDID"

    aput-object v5, v4, v8

    const-string/jumbo v5, "System"

    aput-object v5, v4, v9

    .line 50
    :goto_0
    array-length v5, v3

    if-ge v0, v5, :cond_1

    .line 51
    aget-object v5, v3, v0

    if-eqz v5, :cond_0

    .line 52
    aget-object v5, v4, v0

    invoke-interface {v1, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 53
    aget-object v5, v3, v0

    invoke-interface {v1, v5}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 54
    aget-object v5, v4, v0

    invoke-interface {v1, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 50
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 57
    :cond_1
    const-string/jumbo v0, "DeActivateRequest"

    invoke-interface {v1, v6, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 58
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 60
    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    .line 63
    return-object v0
.end method
