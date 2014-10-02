.class Lcom/viber/voip/registration/cm;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/viber/voip/registration/cn;)Ljava/lang/String;
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 77
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v5

    .line 78
    new-instance v6, Ljava/io/StringWriter;

    invoke-direct {v6}, Ljava/io/StringWriter;-><init>()V

    .line 80
    invoke-interface {v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    .line 82
    const-string/jumbo v1, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v2, 0x1

    invoke-interface {v5, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 84
    const-string/jumbo v1, "utf-8"

    const/4 v2, 0x0

    invoke-interface {v5, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 86
    const/4 v1, 0x0

    const-string/jumbo v2, "RegisterUserRequest"

    invoke-interface {v5, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 88
    const/16 v1, 0x12

    new-array v7, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p0, v7, v1

    const/4 v1, 0x1

    aput-object p1, v7, v1

    const/4 v1, 0x2

    aput-object p2, v7, v1

    const/4 v1, 0x3

    aput-object p3, v7, v1

    const/4 v1, 0x4

    aput-object p4, v7, v1

    const/4 v1, 0x5

    aput-object p5, v7, v1

    const/4 v1, 0x6

    invoke-static {}, Lcom/viber/voip/w;->e()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v1

    const/4 v1, 0x7

    invoke-static {}, Lcom/viber/voip/w;->b()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v1

    const/16 v1, 0x8

    aput-object p6, v7, v1

    const/16 v1, 0x9

    aput-object p7, v7, v1

    const/16 v1, 0xa

    aput-object p8, v7, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "1"

    aput-object v2, v7, v1

    const/16 v1, 0xc

    aput-object p11, v7, v1

    const/16 v1, 0xd

    move-object/from16 v0, p13

    iget-object v2, v0, Lcom/viber/voip/registration/cn;->a:Ljava/lang/String;

    aput-object v2, v7, v1

    const/16 v1, 0xe

    move-object/from16 v0, p13

    iget-object v2, v0, Lcom/viber/voip/registration/cn;->b:Ljava/lang/String;

    aput-object v2, v7, v1

    const/16 v1, 0xf

    move-object/from16 v0, p13

    iget-object v2, v0, Lcom/viber/voip/registration/cn;->c:Ljava/lang/String;

    aput-object v2, v7, v1

    const/16 v1, 0x10

    move-object/from16 v0, p13

    iget-object v2, v0, Lcom/viber/voip/registration/cn;->d:Ljava/lang/String;

    aput-object v2, v7, v1

    const/16 v1, 0x11

    move-object/from16 v0, p13

    iget-object v2, v0, Lcom/viber/voip/registration/cn;->e:Ljava/lang/String;

    aput-object v2, v7, v1

    .line 94
    const/16 v1, 0x12

    new-array v8, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "PhoneNumber"

    aput-object v2, v8, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "PushToken"

    aput-object v2, v8, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "CountryIDDCode"

    aput-object v2, v8, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "UDID"

    aput-object v2, v8, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "DeviceType"

    aput-object v2, v8, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "SystemVersion"

    aput-object v2, v8, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "System"

    aput-object v2, v8, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "ViberVersion"

    aput-object v2, v8, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "MCC"

    aput-object v2, v8, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "MNC"

    aput-object v2, v8, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "CC"

    aput-object v2, v8, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "VoIP"

    aput-object v2, v8, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "Language"

    aput-object v2, v8, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "ANDROID_ID"

    aput-object v2, v8, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "SERIAL_NUMBER"

    aput-object v2, v8, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "WIFI_MAC_ADDRESS"

    aput-object v2, v8, v1

    const/16 v1, 0x10

    const-string/jumbo v2, "IMEI"

    aput-object v2, v8, v1

    const/16 v1, 0x11

    const-string/jumbo v2, "BT_MAC_ADDRESS"

    aput-object v2, v8, v1

    .line 100
    const/4 v1, 0x0

    :goto_0
    array-length v2, v7

    if-ge v1, v2, :cond_6

    .line 101
    aget-object v2, v7, v1

    if-eqz v2, :cond_0

    .line 102
    const/4 v2, 0x0

    aget-object v3, v8, v1

    invoke-interface {v5, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 104
    :try_start_0
    aget-object v2, v7, v1

    invoke-interface {v5, v2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    :goto_1
    const/4 v2, 0x0

    aget-object v3, v8, v1

    invoke-interface {v5, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 100
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 105
    :catch_0
    move-exception v2

    .line 107
    aget-object v3, v7, v1

    .line 108
    const/4 v2, 0x0

    :goto_2
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_5

    .line 109
    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 110
    const/16 v4, 0x20

    if-lt v9, v4, :cond_1

    const v4, 0xd7ff

    if-le v9, v4, :cond_2

    :cond_1
    const v4, 0xe000

    if-lt v9, v4, :cond_4

    const v4, 0xfffd

    if-gt v9, v4, :cond_4

    :cond_2
    const/4 v4, 0x1

    .line 111
    :goto_3
    if-nez v4, :cond_3

    .line 112
    invoke-static {v9}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v9, ""

    invoke-virtual {v3, v4, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 108
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 110
    :cond_4
    const/4 v4, 0x0

    goto :goto_3

    .line 115
    :cond_5
    invoke-interface {v5, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_1

    .line 121
    :cond_6
    const-string/jumbo v1, "1"

    move-object/from16 v0, p9

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    if-eqz p10, :cond_7

    invoke-static/range {p10 .. p10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 123
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p10

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "login"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "fca536d85836e112b4e4f8bc7747159acb84118b8578bd5bd3ee53ecd0"

    invoke-static {v1, v2}, Lcom/viber/voip/util/aj;->a(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v1

    .line 124
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 126
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/viber/voip/w;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 127
    invoke-static {v1}, Lcom/viber/voip/util/aj;->a([B)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/viber/voip/util/aj;->a(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v1

    .line 129
    const/4 v3, 0x0

    const-string/jumbo v4, "Reinstall"

    invoke-interface {v5, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 130
    const/4 v3, 0x0

    const-string/jumbo v4, "Timestamp"

    invoke-interface {v5, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 131
    invoke-interface {v5, v2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 132
    const/4 v2, 0x0

    const-string/jumbo v3, "Timestamp"

    invoke-interface {v5, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 133
    const/4 v2, 0x0

    const-string/jumbo v3, "SignatureNPT"

    invoke-interface {v5, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 134
    invoke-static {v1}, Lcom/viber/voip/util/aj;->a([B)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 135
    const/4 v1, 0x0

    const-string/jumbo v2, "SignatureNPT"

    invoke-interface {v5, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 136
    const/4 v1, 0x0

    const-string/jumbo v2, "Reinstall"

    invoke-interface {v5, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 139
    :cond_7
    const/4 v1, 0x0

    const-string/jumbo v2, "ReRegisterState"

    invoke-interface {v5, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 140
    move-object/from16 v0, p9

    invoke-interface {v5, v0}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 141
    const/4 v1, 0x0

    const-string/jumbo v2, "ReRegisterState"

    invoke-interface {v5, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 143
    const/4 v1, 0x0

    const-string/jumbo v2, "RegisterUserRequest"

    invoke-interface {v5, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 144
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 146
    invoke-virtual {v6}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    .line 150
    return-object v1
.end method
