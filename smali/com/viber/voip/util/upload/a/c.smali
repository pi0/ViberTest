.class public Lcom/viber/voip/util/upload/a/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static a:Ljava/io/PrintStream;

.field protected static b:Ljava/io/PrintStream;

.field private static g:Ljava/util/HashMap;
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

.field private static h:I

.field private static i:Ljava/text/SimpleDateFormat;


# instance fields
.field private c:I

.field private final d:Ljava/net/ServerSocket;

.field private e:Ljava/lang/Thread;

.field private f:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 1086
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/viber/voip/util/upload/a/c;->g:Ljava/util/HashMap;

    .line 1089
    new-instance v0, Ljava/util/StringTokenizer;

    const-string/jumbo v1, "css\t\ttext/css htm\t\ttext/html html\t\ttext/html xml\t\ttext/xml txt\t\ttext/plain asc\t\ttext/plain gif\t\timage/gif jpg\t\timage/jpeg jpeg\t\timage/jpeg png\t\timage/png mp3\t\taudio/mpeg m3u\t\taudio/mpeg-url mp4\t\tvideo/mp4 ogv\t\tvideo/ogg flv\t\tvideo/x-flv mov\t\tvideo/quicktime swf\t\tapplication/x-shockwave-flash js\t\t\tapplication/javascript pdf\t\tapplication/pdf doc\t\tapplication/msword ogg\t\tapplication/x-ogg zip\t\tapplication/octet-stream exe\t\tapplication/octet-stream class\t\tapplication/octet-stream "

    invoke-direct {v0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 1114
    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1115
    sget-object v1, Lcom/viber/voip/util/upload/a/c;->g:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1118
    :cond_0
    const/16 v0, 0x4000

    sput v0, Lcom/viber/voip/util/upload/a/c;->h:I

    .line 1121
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    sput-object v0, Lcom/viber/voip/util/upload/a/c;->a:Ljava/io/PrintStream;

    .line 1122
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    sput-object v0, Lcom/viber/voip/util/upload/a/c;->b:Ljava/io/PrintStream;

    .line 1130
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "E, d MMM yyyy HH:mm:ss \'GMT\'"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/viber/voip/util/upload/a/c;->i:Ljava/text/SimpleDateFormat;

    .line 1131
    sget-object v0, Lcom/viber/voip/util/upload/a/c;->i:Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "GMT"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 1132
    return-void
.end method

.method public constructor <init>(ILjava/io/File;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 230
    iput p1, p0, Lcom/viber/voip/util/upload/a/c;->c:I

    .line 231
    iput-object p2, p0, Lcom/viber/voip/util/upload/a/c;->f:Ljava/io/File;

    .line 237
    new-instance v0, Ljava/net/ServerSocket;

    const-string/jumbo v1, "127.0.0.1"

    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    invoke-direct {v0, p1, v2, v1}, Ljava/net/ServerSocket;-><init>(IILjava/net/InetAddress;)V

    iput-object v0, p0, Lcom/viber/voip/util/upload/a/c;->d:Ljava/net/ServerSocket;

    .line 239
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/viber/voip/util/upload/a/d;

    invoke-direct {v1, p0}, Lcom/viber/voip/util/upload/a/d;-><init>(Lcom/viber/voip/util/upload/a/c;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/viber/voip/util/upload/a/c;->e:Ljava/lang/Thread;

    .line 252
    iget-object v0, p0, Lcom/viber/voip/util/upload/a/c;->e:Ljava/lang/Thread;

    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 253
    iget-object v0, p0, Lcom/viber/voip/util/upload/a/c;->e:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 254
    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter

    .prologue
    .line 855
    const-string/jumbo v0, ""

    .line 856
    new-instance v1, Ljava/util/StringTokenizer;

    const-string/jumbo v2, "/ "

    const/4 v3, 0x1

    invoke-direct {v1, p1, v2, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 857
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 859
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 860
    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 861
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 862
    :cond_0
    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 863
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "%20"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 867
    :cond_1
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "UTF-8"

    invoke-static {v2, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 871
    :cond_2
    return-object v0

    .line 868
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method static synthetic a(Lcom/viber/voip/util/upload/a/c;)Ljava/net/ServerSocket;
    .locals 1
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lcom/viber/voip/util/upload/a/c;->d:Ljava/net/ServerSocket;

    return-object v0
.end method

.method static synthetic b()Ljava/text/SimpleDateFormat;
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lcom/viber/voip/util/upload/a/c;->i:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method static synthetic c()I
    .locals 1

    .prologue
    .line 74
    sget v0, Lcom/viber/voip/util/upload/a/c;->h:I

    return v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Properties;Ljava/util/Properties;Ljava/util/Properties;)Lcom/viber/voip/util/upload/a/g;
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 93
    sget-object v0, Lcom/viber/voip/util/upload/a/c;->a:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\' "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p3}, Ljava/util/Properties;->propertyNames()Ljava/util/Enumeration;

    move-result-object v1

    .line 97
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 100
    sget-object v2, Lcom/viber/voip/util/upload/a/c;->a:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "  HDR: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\' = \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p3, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 103
    :cond_0
    invoke-virtual {p4}, Ljava/util/Properties;->propertyNames()Ljava/util/Enumeration;

    move-result-object v1

    .line 104
    :goto_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 106
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 107
    sget-object v2, Lcom/viber/voip/util/upload/a/c;->a:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "  PRM: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\' = \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p4, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 110
    :cond_1
    invoke-virtual {p5}, Ljava/util/Properties;->propertyNames()Ljava/util/Enumeration;

    move-result-object v1

    .line 111
    :goto_2
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 113
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 114
    sget-object v2, Lcom/viber/voip/util/upload/a/c;->a:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "  UPLOADED: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\' = \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p5, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 118
    :cond_2
    iget-object v0, p0, Lcom/viber/voip/util/upload/a/c;->f:Ljava/io/File;

    const/4 v1, 0x1

    invoke-virtual {p0, p1, p3, v0, v1}, Lcom/viber/voip/util/upload/a/c;->a(Ljava/lang/String;Ljava/util/Properties;Ljava/io/File;Z)Lcom/viber/voip/util/upload/a/g;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/util/Properties;Ljava/io/File;Z)Lcom/viber/voip/util/upload/a/g;
    .locals 18
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 891
    const/4 v3, 0x0

    .line 894
    invoke-virtual/range {p3 .. p3}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_0

    .line 895
    new-instance v3, Lcom/viber/voip/util/upload/a/g;

    const-string/jumbo v2, "500 Internal Server Error"

    const-string/jumbo v4, "text/plain"

    const-string/jumbo v5, "INTERNAL ERRROR: serveFile(): given homeDir is not a directory."

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v2, v4, v5}, Lcom/viber/voip/util/upload/a/g;-><init>(Lcom/viber/voip/util/upload/a/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 898
    :cond_0
    if-nez v3, :cond_1c

    .line 901
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    sget-char v4, Ljava/io/File;->separatorChar:C

    const/16 v5, 0x2f

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    .line 902
    const/16 v4, 0x3f

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ltz v4, :cond_1

    .line 903
    const/4 v4, 0x0

    const/16 v5, 0x3f

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 906
    :cond_1
    const-string/jumbo v4, ".."

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string/jumbo v4, ".."

    invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string/jumbo v4, "../"

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_1b

    .line 907
    :cond_2
    new-instance v3, Lcom/viber/voip/util/upload/a/g;

    const-string/jumbo v4, "403 Forbidden"

    const-string/jumbo v5, "text/plain"

    const-string/jumbo v6, "FORBIDDEN: Won\'t serve ../ for security reasons."

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4, v5, v6}, Lcom/viber/voip/util/upload/a/g;-><init>(Lcom/viber/voip/util/upload/a/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 p1, v2

    move-object v2, v3

    .line 911
    :goto_0
    new-instance v4, Ljava/io/File;

    move-object/from16 v0, p3

    move-object/from16 v1, p1

    invoke-direct {v4, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 912
    if-nez v2, :cond_3

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_3

    .line 913
    new-instance v2, Lcom/viber/voip/util/upload/a/g;

    const-string/jumbo v3, "404 Not Found"

    const-string/jumbo v5, "text/plain"

    const-string/jumbo v6, "Error 404, file not found."

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v5, v6}, Lcom/viber/voip/util/upload/a/g;-><init>(Lcom/viber/voip/util/upload/a/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 917
    :cond_3
    if-nez v2, :cond_1a

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 921
    const-string/jumbo v3, "/"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_19

    .line 923
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 924
    new-instance v3, Lcom/viber/voip/util/upload/a/g;

    const-string/jumbo v2, "301 Moved Permanently"

    const-string/jumbo v5, "text/html"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "<html><body>Redirected: <a href=\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\">"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "</a></body></html>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v2, v5, v6}, Lcom/viber/voip/util/upload/a/g;-><init>(Lcom/viber/voip/util/upload/a/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 927
    const-string/jumbo v2, "Location"

    move-object/from16 v0, p1

    invoke-virtual {v3, v2, v0}, Lcom/viber/voip/util/upload/a/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 930
    :goto_1
    if-nez v3, :cond_18

    .line 933
    new-instance v2, Ljava/io/File;

    const-string/jumbo v5, "index.html"

    invoke-direct {v2, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 934
    new-instance v2, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "/index.html"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-direct {v2, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v14, v2

    move-object v2, v3

    .line 997
    :goto_2
    if-nez v2, :cond_7

    .line 1000
    const/4 v5, 0x0

    .line 1001
    :try_start_0
    invoke-virtual {v14}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x2e

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 1002
    if-ltz v2, :cond_4

    .line 1003
    sget-object v3, Lcom/viber/voip/util/upload/a/c;->g:Ljava/util/HashMap;

    invoke-virtual {v14}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v4, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/viber/voip/messages/a/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v5, v2

    .line 1004
    :cond_4
    if-nez v5, :cond_5

    .line 1005
    const-string/jumbo v5, "application/octet-stream"

    .line 1008
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v14}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v14}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v15

    .line 1011
    const-wide/16 v6, 0x0

    .line 1012
    const-wide/16 v2, -0x1

    .line 1013
    const-string/jumbo v4, "range"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1014
    if-eqz v4, :cond_17

    .line 1016
    const-string/jumbo v8, "bytes="

    invoke-virtual {v4, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_17

    .line 1018
    const-string/jumbo v8, "bytes="

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v4, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 1019
    const/16 v8, 0x2d

    invoke-virtual {v4, v8}, Ljava/lang/String;->indexOf(I)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v8

    .line 1021
    if-lez v8, :cond_6

    .line 1023
    const/4 v9, 0x0

    :try_start_1
    invoke-virtual {v4, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 1024
    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v4, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v2

    :cond_6
    move-wide v12, v6

    .line 1032
    :goto_3
    :try_start_2
    invoke-virtual {v14}, Ljava/io/File;->length()J

    move-result-wide v16

    .line 1033
    if-eqz v4, :cond_13

    const-wide/16 v6, 0x0

    cmp-long v4, v12, v6

    if-ltz v4, :cond_13

    .line 1035
    cmp-long v4, v12, v16

    if-ltz v4, :cond_12

    .line 1037
    new-instance v2, Lcom/viber/voip/util/upload/a/g;

    const-string/jumbo v3, "416 Requested Range Not Satisfiable"

    const-string/jumbo v4, "text/plain"

    const-string/jumbo v5, ""

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/viber/voip/util/upload/a/g;-><init>(Lcom/viber/voip/util/upload/a/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1038
    const-string/jumbo v3, "Content-Range"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "bytes 0-0/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v16

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/viber/voip/util/upload/a/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1039
    const-string/jumbo v3, "ETag"

    invoke-virtual {v2, v3, v15}, Lcom/viber/voip/util/upload/a/g;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1079
    :cond_7
    :goto_4
    const-string/jumbo v3, "Accept-Ranges"

    const-string/jumbo v4, "bytes"

    invoke-virtual {v2, v3, v4}, Lcom/viber/voip/util/upload/a/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1080
    return-object v2

    .line 935
    :cond_8
    new-instance v2, Ljava/io/File;

    const-string/jumbo v5, "index.htm"

    invoke-direct {v2, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 936
    new-instance v2, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "/index.htm"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-direct {v2, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v14, v2

    move-object v2, v3

    goto/16 :goto_2

    .line 938
    :cond_9
    if-eqz p4, :cond_11

    invoke-virtual {v4}, Ljava/io/File;->canRead()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 940
    invoke-virtual {v4}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v5

    .line 941
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "<html><body><h1>Directory "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "</h1><br/>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 943
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v6, 0x1

    if-le v2, v6, :cond_a

    .line 945
    const/4 v2, 0x0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 946
    const/16 v6, 0x2f

    invoke-virtual {v2, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    .line 947
    if-ltz v6, :cond_a

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v6, v2, :cond_a

    .line 948
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "<b><a href=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\">..</a></b><br/>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 951
    :cond_a
    if-eqz v5, :cond_10

    .line 953
    const/4 v2, 0x0

    :goto_5
    array-length v6, v5

    if-ge v2, v6, :cond_10

    .line 955
    new-instance v6, Ljava/io/File;

    aget-object v7, v5, v2

    invoke-direct {v6, v4, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 956
    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v7

    .line 957
    if-eqz v7, :cond_b

    .line 959
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v8, "<b>"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 960
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v9, v5, v2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v2

    .line 963
    :cond_b
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v8, "<a href=\""

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v5, v2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/viber/voip/util/upload/a/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v8, "\">"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v8, v5, v2

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v8, "</a>"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 967
    invoke-virtual {v6}, Ljava/io/File;->isFile()Z

    move-result v8

    if-eqz v8, :cond_c

    .line 969
    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v8

    .line 970
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, " &nbsp;<font size=2>("

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 971
    const-wide/16 v10, 0x400

    cmp-long v6, v8, v10

    if-gez v6, :cond_e

    .line 972
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, " bytes"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 978
    :goto_6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, ")</font>"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 980
    :cond_c
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, "<br/>"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 981
    if-eqz v7, :cond_d

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, "</b>"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 953
    :cond_d
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_5

    .line 973
    :cond_e
    const-wide/32 v10, 0x100000

    cmp-long v6, v8, v10

    if-gez v6, :cond_f

    .line 974
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-wide/16 v10, 0x400

    div-long v10, v8, v10

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, "."

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-wide/16 v10, 0x400

    rem-long/2addr v8, v10

    const-wide/16 v10, 0xa

    div-long/2addr v8, v10

    const-wide/16 v10, 0x64

    rem-long/2addr v8, v10

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, " KB"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_6

    .line 976
    :cond_f
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-wide/32 v10, 0x100000

    div-long v10, v8, v10

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, "."

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-wide/32 v10, 0x100000

    rem-long/2addr v8, v10

    const-wide/16 v10, 0xa

    div-long/2addr v8, v10

    const-wide/16 v10, 0x64

    rem-long/2addr v8, v10

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, " MB"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_6

    .line 984
    :cond_10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "</body></html>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 985
    new-instance v2, Lcom/viber/voip/util/upload/a/g;

    const-string/jumbo v5, "200 OK"

    const-string/jumbo v6, "text/html"

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v5, v6, v3}, Lcom/viber/voip/util/upload/a/g;-><init>(Lcom/viber/voip/util/upload/a/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v14, v4

    .line 986
    goto/16 :goto_2

    .line 989
    :cond_11
    new-instance v2, Lcom/viber/voip/util/upload/a/g;

    const-string/jumbo v3, "403 Forbidden"

    const-string/jumbo v5, "text/plain"

    const-string/jumbo v6, "FORBIDDEN: No directory listing."

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v5, v6}, Lcom/viber/voip/util/upload/a/g;-><init>(Lcom/viber/voip/util/upload/a/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v14, v4

    goto/16 :goto_2

    .line 1027
    :catch_0
    move-exception v8

    move-wide v12, v6

    goto/16 :goto_3

    .line 1043
    :cond_12
    const-wide/16 v6, 0x0

    cmp-long v4, v2, v6

    if-gez v4, :cond_16

    .line 1044
    const-wide/16 v2, 0x1

    sub-long v2, v16, v2

    move-wide v10, v2

    .line 1045
    :goto_7
    sub-long v2, v10, v12

    const-wide/16 v6, 0x1

    add-long/2addr v2, v6

    .line 1046
    const-wide/16 v6, 0x0

    cmp-long v4, v2, v6

    if-gez v4, :cond_15

    const-wide/16 v2, 0x0

    move-wide v8, v2

    .line 1049
    :goto_8
    :try_start_3
    new-instance v6, Lcom/viber/voip/util/upload/a/e;

    move-object/from16 v0, p0

    invoke-direct {v6, v0, v14, v8, v9}, Lcom/viber/voip/util/upload/a/e;-><init>(Lcom/viber/voip/util/upload/a/c;Ljava/io/File;J)V

    .line 1052
    invoke-virtual {v6, v12, v13}, Ljava/io/FileInputStream;->skip(J)J

    .line 1054
    new-instance v2, Lcom/viber/voip/util/upload/a/g;

    const-string/jumbo v4, "206 Partial Content"

    invoke-virtual {v6}, Ljava/io/FileInputStream;->available()I

    move-result v7

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/viber/voip/util/upload/a/g;-><init>(Lcom/viber/voip/util/upload/a/c;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;I)V

    .line 1055
    const-string/jumbo v3, "Content-Length"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/viber/voip/util/upload/a/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1056
    const-string/jumbo v3, "Content-Range"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "bytes "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v16

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/viber/voip/util/upload/a/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1057
    const-string/jumbo v3, "ETag"

    invoke-virtual {v2, v3, v15}, Lcom/viber/voip/util/upload/a/g;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_4

    .line 1074
    :catch_1
    move-exception v2

    .line 1076
    new-instance v2, Lcom/viber/voip/util/upload/a/g;

    const-string/jumbo v3, "403 Forbidden"

    const-string/jumbo v4, "text/plain"

    const-string/jumbo v5, "FORBIDDEN: Reading file failed."

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/viber/voip/util/upload/a/g;-><init>(Lcom/viber/voip/util/upload/a/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1062
    :cond_13
    :try_start_4
    const-string/jumbo v2, "if-none-match"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 1063
    new-instance v2, Lcom/viber/voip/util/upload/a/g;

    const-string/jumbo v3, "304 Not Modified"

    const-string/jumbo v4, ""

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v5, v4}, Lcom/viber/voip/util/upload/a/g;-><init>(Lcom/viber/voip/util/upload/a/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1066
    :cond_14
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v14}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 1067
    new-instance v2, Lcom/viber/voip/util/upload/a/g;

    const-string/jumbo v4, "200 OK"

    invoke-virtual {v6}, Ljava/io/FileInputStream;->available()I

    move-result v7

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/viber/voip/util/upload/a/g;-><init>(Lcom/viber/voip/util/upload/a/c;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;I)V

    .line 1068
    const-string/jumbo v3, "Content-Length"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v16

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/viber/voip/util/upload/a/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1069
    const-string/jumbo v3, "ETag"

    invoke-virtual {v2, v3, v15}, Lcom/viber/voip/util/upload/a/g;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_4

    :cond_15
    move-wide v8, v2

    goto/16 :goto_8

    :cond_16
    move-wide v10, v2

    goto/16 :goto_7

    :cond_17
    move-wide v12, v6

    goto/16 :goto_3

    :cond_18
    move-object v14, v4

    move-object v2, v3

    goto/16 :goto_2

    :cond_19
    move-object v3, v2

    goto/16 :goto_1

    :cond_1a
    move-object v14, v4

    goto/16 :goto_2

    :cond_1b
    move-object/from16 p1, v2

    move-object v2, v3

    goto/16 :goto_0

    :cond_1c
    move-object v2, v3

    goto/16 :goto_0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 263
    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/util/upload/a/c;->d:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V

    .line 264
    iget-object v0, p0, Lcom/viber/voip/util/upload/a/c;->e:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 268
    :goto_0
    return-void

    .line 267
    :catch_0
    move-exception v0

    goto :goto_0

    .line 266
    :catch_1
    move-exception v0

    goto :goto_0
.end method
