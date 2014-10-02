.class public Lcom/viber/voip/util/upload/a/a;
.super Lcom/viber/voip/util/upload/a/c;
.source "SourceFile"


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/viber/voip/util/upload/a/c;-><init>(ILjava/io/File;)V

    .line 39
    return-void
.end method

.method private static a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 186
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Properties;Ljava/util/Properties;Ljava/util/Properties;)Lcom/viber/voip/util/upload/a/g;
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 43
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    invoke-virtual {p3}, Ljava/util/Properties;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 45
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 48
    :cond_0
    const-string/jumbo v0, "downloadId"

    invoke-virtual {p4, v0}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/lang/String;

    .line 53
    const-string/jumbo v0, "isCache"

    invoke-virtual {p4, v0}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 55
    const-string/jumbo v0, "VideoId"

    invoke-virtual {p4, v0}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljava/lang/String;

    .line 58
    :try_start_0
    const-string/jumbo v0, "animated_message_cache"

    invoke-static {v7, v0}, Lcom/viber/voip/util/upload/n;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v7}, Lcom/viber/voip/util/upload/s;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 59
    new-instance v4, Ljava/io/FileInputStream;

    const-string/jumbo v0, "animated_message_cache"

    invoke-static {v7, v0}, Lcom/viber/voip/util/upload/n;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 60
    new-instance v0, Lcom/viber/voip/util/upload/a/g;

    const-string/jumbo v2, "200 OK"

    const-string/jumbo v3, "video/mp4"

    const-string/jumbo v1, "animated_message_cache"

    invoke-static {v6, v1}, Lcom/viber/voip/util/upload/n;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v9

    long-to-int v5, v9

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/util/upload/a/g;-><init>(Lcom/viber/voip/util/upload/a/c;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;I)V

    .line 61
    const-string/jumbo v1, "Content-Length"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "animated_message_cache"

    invoke-static {v7, v3}, Lcom/viber/voip/util/upload/n;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v3

    long-to-int v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/util/upload/a/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    :goto_1
    return-object v0

    .line 64
    :cond_1
    const-string/jumbo v0, "animated_message_cache"

    invoke-static {v0}, Lcom/viber/voip/util/upload/n;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/util/bj;->g(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    .line 65
    const-string/jumbo v0, "animated_message_cache"

    invoke-static {v0}, Lcom/viber/voip/util/upload/n;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/util/bj;->h(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 68
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "messageBucket"

    invoke-virtual {p4, v0}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "Location"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v0, "Location"

    invoke-virtual {p4, v0}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "VideoId"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v0, "VideoId"

    invoke-virtual {p4, v0}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 74
    const-string/jumbo v1, "animated_message_cache"

    const/4 v2, 0x0

    invoke-static {v0, v7, v1, v2}, Lcom/viber/voip/util/upload/s;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/viber/voip/util/upload/b;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 80
    :cond_3
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "serve uri: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", parms: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " header: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/util/upload/a/a;->a(Ljava/lang/String;)V

    .line 82
    const/4 v0, 0x0

    .line 84
    const/4 v1, 0x0

    .line 85
    :goto_3
    invoke-static {v6}, Lcom/viber/voip/util/upload/s;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 86
    if-nez v0, :cond_4

    .line 87
    invoke-static {v6}, Lcom/viber/voip/util/upload/s;->b(Ljava/lang/String;)Lcom/viber/voip/util/upload/z;

    move-result-object v0

    .line 90
    :cond_4
    if-eqz v0, :cond_5

    .line 91
    iget v2, v0, Lcom/viber/voip/util/upload/z;->b:I

    if-eqz v2, :cond_5

    iget-object v2, v0, Lcom/viber/voip/util/upload/z;->d:Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 92
    const/4 v1, 0x1

    move-object v7, v0

    move v0, v1

    .line 104
    :goto_4
    if-nez v0, :cond_6

    .line 105
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 97
    :cond_5
    const-string/jumbo v2, "fileData/totalFileSize/tempFile unavailable, waiting..."

    invoke-static {v2}, Lcom/viber/voip/util/upload/a/a;->a(Ljava/lang/String;)V

    .line 99
    const-wide/16 v2, 0x64

    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 100
    :catch_0
    move-exception v2

    goto :goto_3

    .line 110
    :cond_6
    const-string/jumbo v0, "range"

    invoke-virtual {p3, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 111
    if-eqz v0, :cond_a

    .line 112
    const-string/jumbo v1, "Range header received, proxying to http url connection"

    invoke-static {v1}, Lcom/viber/voip/util/upload/a/a;->a(Ljava/lang/String;)V

    .line 114
    :try_start_2
    iget-object v1, v7, Lcom/viber/voip/util/upload/z;->c:Ljava/lang/String;

    .line 116
    invoke-static {v1}, Lcom/viber/voip/ViberEnv;->newHttpRequest(Ljava/lang/String;)Lcom/viber/voip/util/http/HttpRequest;

    move-result-object v1

    .line 117
    const-string/jumbo v2, "Range"

    invoke-interface {v1, v2, v0}, Lcom/viber/voip/util/http/HttpRequest;->setRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    const-string/jumbo v0, "Content-Range"

    invoke-interface {v1, v0}, Lcom/viber/voip/util/http/HttpRequest;->getResponseHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 119
    invoke-interface {v1}, Lcom/viber/voip/util/http/HttpRequest;->getResponseCode()I

    move-result v0

    .line 120
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Response code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/viber/voip/util/upload/a/a;->a(Ljava/lang/String;)V

    .line 122
    const/16 v2, 0xc8

    if-eq v0, v2, :cond_7

    const/16 v2, 0xce

    if-eq v0, v2, :cond_7

    .line 123
    new-instance v0, Lcom/viber/voip/util/upload/a/g;

    const-string/jumbo v1, "416 Requested Range Not Satisfiable"

    const-string/jumbo v2, "video/mp4"

    const-string/jumbo v3, "Range not satisfiable"

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/viber/voip/util/upload/a/g;-><init>(Lcom/viber/voip/util/upload/a/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    .line 148
    :catch_1
    move-exception v0

    .line 149
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 150
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 126
    :cond_7
    :try_start_3
    invoke-interface {v1}, Lcom/viber/voip/util/http/HttpRequest;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 128
    invoke-static {v6}, Lcom/viber/voip/util/upload/j;->a(Ljava/lang/String;)Lcom/viber/voip/util/upload/k;

    move-result-object v1

    .line 132
    invoke-virtual {v1}, Lcom/viber/voip/util/upload/k;->b()I

    move-result v0

    if-lez v0, :cond_9

    .line 133
    invoke-virtual {v1}, Lcom/viber/voip/util/upload/k;->b()I

    move-result v0

    .line 134
    invoke-virtual {v1}, Lcom/viber/voip/util/upload/k;->b()I

    move-result v2

    invoke-virtual {v1}, Lcom/viber/voip/util/upload/k;->a()I

    move-result v3

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    .line 135
    iget v2, v7, Lcom/viber/voip/util/upload/z;->b:I

    add-int/lit8 v2, v2, -0x1

    if-le v0, v2, :cond_8

    .line 136
    iget v0, v7, Lcom/viber/voip/util/upload/z;->b:I

    add-int/lit8 v0, v0, -0x1

    .line 138
    :cond_8
    invoke-virtual {v1}, Lcom/viber/voip/util/upload/k;->a()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v5, v0, 0x1

    .line 142
    :goto_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Serving bytes: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/util/upload/a/a;->a(Ljava/lang/String;)V

    .line 144
    new-instance v0, Lcom/viber/voip/util/upload/a/g;

    const-string/jumbo v2, "206 Partial Content"

    const-string/jumbo v3, "video/mp4"

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/util/upload/a/g;-><init>(Lcom/viber/voip/util/upload/a/c;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;I)V

    .line 145
    const-string/jumbo v1, "Content-Range"

    invoke-virtual {v0, v1, v6}, Lcom/viber/voip/util/upload/a/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    const-string/jumbo v1, "Content-Length"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/util/upload/a/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 140
    :cond_9
    iget v0, v7, Lcom/viber/voip/util/upload/z;->b:I

    invoke-virtual {v1}, Lcom/viber/voip/util/upload/k;->a()I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    move-result v1

    sub-int v5, v0, v1

    goto :goto_5

    .line 172
    :cond_a
    :try_start_4
    new-instance v4, Lcom/viber/voip/util/upload/c;

    iget-object v0, v7, Lcom/viber/voip/util/upload/z;->d:Ljava/lang/String;

    iget v1, v7, Lcom/viber/voip/util/upload/z;->b:I

    int-to-long v1, v1

    invoke-direct {v4, v0, v1, v2}, Lcom/viber/voip/util/upload/c;-><init>(Ljava/lang/String;J)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "downloadId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", return stream = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", total file size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v7, Lcom/viber/voip/util/upload/z;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/util/upload/a/a;->a(Ljava/lang/String;)V

    .line 179
    new-instance v0, Lcom/viber/voip/util/upload/a/g;

    const-string/jumbo v2, "200 OK"

    const-string/jumbo v3, "video/mp4"

    iget v5, v7, Lcom/viber/voip/util/upload/z;->b:I

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/util/upload/a/g;-><init>(Lcom/viber/voip/util/upload/a/c;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;I)V

    .line 180
    const-string/jumbo v1, "Content-Length"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v7, Lcom/viber/voip/util/upload/z;->b:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/util/upload/a/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 173
    :catch_2
    move-exception v0

    .line 174
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 175
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 76
    :catch_3
    move-exception v0

    goto/16 :goto_2

    :cond_b
    move-object v7, v0

    move v0, v1

    goto/16 :goto_4
.end method
