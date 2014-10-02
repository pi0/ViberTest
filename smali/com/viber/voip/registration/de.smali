.class Lcom/viber/voip/registration/de;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 40
    const-string/jumbo v0, "1"

    invoke-direct {p0, p1, v0}, Lcom/viber/voip/registration/de;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/viber/voip/registration/de;->a:Ljava/lang/String;

    .line 45
    iput-object p2, p0, Lcom/viber/voip/registration/de;->b:Ljava/lang/String;

    .line 46
    return-void
.end method


# virtual methods
.method public a(Ljava/io/InputStream;)Lcom/viber/voip/registration/df;
    .locals 17
    .parameter

    .prologue
    .line 56
    const/4 v11, 0x0

    .line 57
    const/4 v10, 0x0

    .line 58
    const/4 v4, 0x0

    .line 59
    const/4 v5, 0x0

    .line 60
    const/4 v6, 0x0

    .line 61
    const/4 v7, 0x0

    .line 62
    const/4 v8, 0x0

    .line 63
    const/4 v9, 0x0

    .line 67
    const/16 v1, 0xa

    const v2, 0x186a0

    :try_start_0
    move-object/from16 v0, p1

    invoke-static {v0, v1, v2}, Lcom/viber/voip/util/am;->a(Ljava/io/InputStream;II)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 73
    :goto_0
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 77
    :try_start_1
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v1

    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v12

    .line 78
    const-string/jumbo v1, "utf-8"

    invoke-interface {v12, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1

    .line 84
    const/4 v3, 0x0

    .line 85
    const/4 v2, 0x0

    .line 87
    :try_start_2
    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    move-result v1

    move-object/from16 v16, v2

    move v2, v11

    move-object v11, v3

    move-object v3, v10

    move-object/from16 v10, v16

    .line 88
    :goto_1
    const/4 v13, 0x1

    if-eq v1, v13, :cond_9

    .line 90
    const/4 v13, 0x2

    if-ne v1, v13, :cond_0

    .line 91
    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    .line 92
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/viber/voip/registration/de;->a:Ljava/lang/String;

    invoke-virtual {v1, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 93
    const-string/jumbo v10, "Status"

    move-object/from16 v16, v10

    move-object v10, v3

    move-object v3, v11

    move v11, v2

    move-object/from16 v2, v16

    .line 139
    :goto_2
    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v1

    move-object/from16 v16, v2

    move v2, v11

    move-object v11, v3

    move-object v3, v10

    move-object/from16 v10, v16

    goto :goto_1

    .line 68
    :catch_0
    move-exception v1

    .line 69
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 70
    const/4 v1, 0x0

    new-array v1, v1, [B

    goto :goto_0

    .line 79
    :catch_1
    move-exception v1

    .line 80
    new-instance v2, Ljava/io/IOException;

    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 95
    :cond_0
    const/4 v13, 0x4

    if-ne v1, v13, :cond_8

    .line 98
    :try_start_3
    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->isWhitespace()Z

    move-result v13

    .line 99
    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    .line 100
    const-string/jumbo v14, "Status"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1

    const-string/jumbo v14, "Status"

    invoke-virtual {v14, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1

    if-nez v13, :cond_1

    .line 102
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 103
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/viber/voip/registration/de;->b:Ljava/lang/String;

    invoke-virtual {v3, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 104
    const/4 v2, 0x1

    .line 107
    :cond_1
    const-string/jumbo v14, "ErrorMessage"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_2

    if-nez v13, :cond_2

    move-object v4, v1

    .line 112
    :cond_2
    const-string/jumbo v14, "DeviceKey"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_3

    if-nez v13, :cond_3

    move-object v5, v1

    .line 117
    :cond_3
    const-string/jumbo v14, "SkipActivation"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_4

    if-nez v13, :cond_4

    .line 119
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/viber/voip/registration/de;->b:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 120
    const/4 v6, 0x1

    .line 123
    :cond_4
    const-string/jumbo v14, "PhoneNumber"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_5

    if-nez v13, :cond_5

    move-object v7, v1

    .line 128
    :cond_5
    const-string/jumbo v13, "RUrl"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 130
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 132
    :cond_6
    const-string/jumbo v13, "RToken"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 134
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    :cond_7
    move-object/from16 v16, v10

    move-object v10, v3

    move-object v3, v11

    move v11, v2

    move-object/from16 v2, v16

    .line 136
    goto/16 :goto_2

    :cond_8
    const/4 v13, 0x3

    if-ne v1, v13, :cond_b

    .line 137
    const/4 v11, 0x0

    move-object/from16 v16, v10

    move-object v10, v3

    move-object v3, v11

    move v11, v2

    move-object/from16 v2, v16

    goto/16 :goto_2

    .line 141
    :cond_9
    if-nez v10, :cond_a

    .line 142
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "XML response malformed."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_2

    .line 144
    :catch_2
    move-exception v1

    .line 145
    :try_start_4
    new-instance v2, Ljava/io/IOException;

    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 147
    :catchall_0
    move-exception v1

    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->close()V

    throw v1

    :cond_a
    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->close()V

    .line 150
    new-instance v1, Lcom/viber/voip/registration/df;

    invoke-direct/range {v1 .. v9}, Lcom/viber/voip/registration/df;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_b
    move-object/from16 v16, v10

    move-object v10, v3

    move-object v3, v11

    move v11, v2

    move-object/from16 v2, v16

    goto/16 :goto_2
.end method
