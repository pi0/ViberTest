.class Lcom/viber/voip/registration/aw;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/io/InputStream;


# direct methods
.method constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .parameter

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    if-nez p1, :cond_0

    .line 36
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "The inputStream argument can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 41
    :cond_0
    const/16 v0, 0xa

    const v1, 0x186a0

    :try_start_0
    invoke-static {p1, v0, v1}, Lcom/viber/voip/util/am;->a(Ljava/io/InputStream;II)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 46
    :goto_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    .line 48
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 51
    iput-object v1, p0, Lcom/viber/voip/registration/aw;->a:Ljava/io/InputStream;

    .line 52
    return-void

    .line 42
    :catch_0
    move-exception v0

    .line 43
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 44
    const/4 v0, 0x0

    new-array v0, v0, [B

    goto :goto_0
.end method


# virtual methods
.method public a()Lcom/viber/voip/registration/CountryCode;
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 67
    .line 75
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v7

    .line 76
    iget-object v0, p0, Lcom/viber/voip/registration/aw;->a:Ljava/io/InputStream;

    const-string/jumbo v2, "utf-8"

    invoke-interface {v7, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    :try_start_1
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    move-result v0

    move v2, v0

    move-object v3, v1

    move-object v4, v1

    move-object v5, v1

    move-object v6, v1

    move-object v0, v1

    .line 84
    :goto_0
    const/4 v8, 0x1

    if-eq v2, v8, :cond_4

    .line 85
    packed-switch v2, :pswitch_data_0

    .line 109
    :cond_0
    :goto_1
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    goto :goto_0

    .line 77
    :catch_0
    move-exception v0

    .line 78
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 87
    :pswitch_0
    :try_start_2
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 91
    :pswitch_1
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->isWhitespace()Z

    move-result v8

    .line 92
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v2

    .line 93
    const-string/jumbo v9, "CountryCode"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    if-nez v8, :cond_1

    move-object v4, v2

    .line 94
    goto :goto_1

    .line 95
    :cond_1
    const-string/jumbo v8, "CountryIDDCode"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    move-object v5, v2

    .line 96
    goto :goto_1

    .line 97
    :cond_2
    const-string/jumbo v8, "CountryName"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    move-object v6, v2

    .line 98
    goto :goto_1

    .line 99
    :cond_3
    const-string/jumbo v8, "CountryLocalCode"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v8

    if-eqz v8, :cond_0

    move-object v3, v2

    .line 100
    goto :goto_1

    :pswitch_2
    move-object v0, v1

    .line 105
    goto :goto_1

    .line 114
    :cond_4
    iget-object v0, p0, Lcom/viber/voip/registration/aw;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 116
    new-instance v0, Lcom/viber/voip/registration/CountryCode;

    invoke-direct {v0, v4, v5, v6, v3}, Lcom/viber/voip/registration/CountryCode;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 111
    :catch_1
    move-exception v0

    .line 112
    :try_start_3
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 114
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/viber/voip/registration/aw;->a:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    throw v0

    .line 85
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
