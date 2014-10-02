.class public Lcom/viber/voip/util/upload/q;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 32
    const-string/jumbo v0, "UploadResponse"

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/viber/voip/util/upload/q;-><init>(Ljava/lang/String;I)V

    .line 33
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const-string/jumbo v0, "UploadResponseParser"

    iput-object v0, p0, Lcom/viber/voip/util/upload/q;->a:Ljava/lang/String;

    .line 40
    iput-object p1, p0, Lcom/viber/voip/util/upload/q;->b:Ljava/lang/String;

    .line 41
    iput p2, p0, Lcom/viber/voip/util/upload/q;->c:I

    .line 42
    return-void
.end method


# virtual methods
.method public a(Ljava/io/InputStream;)Lcom/viber/voip/util/upload/r;
    .locals 12
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 61
    const/4 v2, -0x1

    .line 67
    const/16 v0, 0xa

    const v1, 0x186a0

    :try_start_0
    invoke-static {p1, v0, v1}, Lcom/viber/voip/util/am;->a(Ljava/io/InputStream;II)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 73
    :goto_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 77
    :try_start_1
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v7

    .line 78
    const-string/jumbo v0, "utf-8"

    invoke-interface {v7, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1

    .line 87
    :try_start_2
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    move-result v0

    move v3, v0

    move-object v4, v5

    move-object v6, v5

    move-object v1, v5

    move-object v0, v5

    .line 88
    :goto_1
    const/4 v8, 0x1

    if-eq v3, v8, :cond_5

    .line 90
    const/4 v8, 0x2

    if-ne v3, v8, :cond_0

    .line 91
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 92
    iget-object v3, p0, Lcom/viber/voip/util/upload/q;->b:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 93
    const-string/jumbo v4, "Status"

    move-object v3, v1

    move-object v1, v4

    move-object v4, v0

    move-object v10, v6

    move v6, v2

    move-object v2, v10

    .line 116
    :goto_2
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v0

    move v10, v0

    move-object v0, v4

    move-object v4, v1

    move-object v1, v3

    move v3, v10

    move-object v11, v2

    move v2, v6

    move-object v6, v11

    goto :goto_1

    .line 68
    :catch_0
    move-exception v0

    .line 69
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 70
    const/4 v0, 0x0

    new-array v0, v0, [B

    goto :goto_0

    .line 79
    :catch_1
    move-exception v0

    .line 80
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 95
    :cond_0
    const/4 v8, 0x4

    if-ne v3, v8, :cond_4

    .line 96
    :try_start_3
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->isWhitespace()Z

    move-result v3

    .line 97
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v8

    .line 98
    const-string/jumbo v9, "Status"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    const-string/jumbo v9, "Status"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    if-nez v3, :cond_1

    .line 101
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 103
    :cond_1
    const-string/jumbo v9, "Reason"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    if-nez v3, :cond_2

    .line 106
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 108
    :cond_2
    const-string/jumbo v9, "Id"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    if-nez v3, :cond_3

    .line 111
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :cond_3
    move-object v3, v1

    move-object v1, v4

    move-object v4, v0

    move-object v10, v6

    move v6, v2

    move-object v2, v10

    .line 113
    goto :goto_2

    :cond_4
    const/4 v8, 0x3

    if-ne v3, v8, :cond_7

    move-object v3, v1

    move v6, v2

    move-object v1, v4

    move-object v2, v5

    move-object v4, v0

    .line 114
    goto :goto_2

    .line 118
    :cond_5
    if-nez v4, :cond_6

    .line 119
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "XML response malformed."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_2

    .line 121
    :catch_2
    move-exception v0

    .line 122
    :try_start_4
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 124
    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    throw v0

    :cond_6
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 127
    new-instance v3, Lcom/viber/voip/util/upload/r;

    invoke-direct {v3, v2, v0, v1}, Lcom/viber/voip/util/upload/r;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object v3

    :cond_7
    move-object v3, v1

    move-object v1, v4

    move-object v4, v0

    move-object v10, v6

    move v6, v2

    move-object v2, v10

    goto/16 :goto_2
.end method
