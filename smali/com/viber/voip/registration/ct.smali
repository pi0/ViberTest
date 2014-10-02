.class public final Lcom/viber/voip/registration/ct;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v0, 0x0

    const/4 v6, 0x0

    .line 84
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v1

    .line 86
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 88
    invoke-interface {v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    .line 89
    const-string/jumbo v3, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-interface {v1, v3, v7}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 90
    const-string/jumbo v3, "ResendActivationCodeRequest"

    invoke-interface {v1, v6, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 92
    new-array v3, v5, [Ljava/lang/String;

    aput-object p0, v3, v0

    const-string/jumbo v4, "AndroidTablet"

    aput-object v4, v3, v7

    aput-object p1, v3, v8

    .line 93
    new-array v4, v5, [Ljava/lang/String;

    const-string/jumbo v5, "UDID"

    aput-object v5, v4, v0

    const-string/jumbo v5, "System"

    aput-object v5, v4, v7

    const-string/jumbo v5, "CanonizedPhoneNumber"

    aput-object v5, v4, v8

    .line 95
    :goto_0
    array-length v5, v3

    if-ge v0, v5, :cond_1

    .line 96
    aget-object v5, v3, v0

    if-eqz v5, :cond_0

    .line 97
    aget-object v5, v4, v0

    invoke-interface {v1, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 98
    aget-object v5, v3, v0

    invoke-interface {v1, v5}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 99
    aget-object v5, v4, v0

    invoke-interface {v1, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 95
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 103
    :cond_1
    const-string/jumbo v0, "ResendActivationCodeRequest"

    invoke-interface {v1, v6, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 104
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 106
    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    .line 108
    const/4 v1, 0x4

    const-string/jumbo v2, "-trace-"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ResendActivationCodeRequestBuilder.getXml():\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 110
    return-object v0
.end method
