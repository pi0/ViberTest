.class public final Lcom/viber/voip/registration/di;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x4

    const/4 v6, 0x1

    const/4 v0, 0x0

    const/4 v7, 0x0

    .line 85
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v1

    .line 87
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 89
    invoke-interface {v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    .line 90
    const-string/jumbo v3, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-interface {v1, v3, v6}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 91
    const-string/jumbo v3, "UpdatePhoneRequest"

    invoke-interface {v1, v7, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 93
    new-array v3, v8, [Ljava/lang/String;

    aput-object p0, v3, v0

    aput-object p1, v3, v6

    aput-object p2, v3, v9

    const/4 v4, 0x3

    invoke-static {}, Lcom/viber/voip/w;->e()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 94
    new-array v4, v8, [Ljava/lang/String;

    const-string/jumbo v5, "PushToken"

    aput-object v5, v4, v0

    const-string/jumbo v5, "UDID"

    aput-object v5, v4, v6

    const-string/jumbo v5, "SystemVersion"

    aput-object v5, v4, v9

    const/4 v5, 0x3

    const-string/jumbo v6, "System"

    aput-object v6, v4, v5

    .line 96
    :goto_0
    array-length v5, v3

    if-ge v0, v5, :cond_1

    .line 97
    aget-object v5, v3, v0

    if-eqz v5, :cond_0

    .line 98
    aget-object v5, v4, v0

    invoke-interface {v1, v7, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 99
    aget-object v5, v3, v0

    invoke-interface {v1, v5}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 100
    aget-object v5, v4, v0

    invoke-interface {v1, v7, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 96
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 104
    :cond_1
    const-string/jumbo v0, "UpdatePhoneRequest"

    invoke-interface {v1, v7, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 105
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 107
    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    .line 109
    const-string/jumbo v1, "-trace-"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "UpdatePhoneMRequestBuilder.getXml():\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v1, v2}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 111
    return-object v0
.end method
