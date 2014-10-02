.class Lcom/viber/voip/pixie/PixieServices$ExternalIpProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static PATTERN_IP:Ljava/util/regex/Pattern; = null

.field public static final STATUS_CAN_NOT_CONNECT:I = -0x1

.field public static final STATUS_HTTP_OK:I = 0xc8


# instance fields
.field private areaLengthAfterPrefix:I

.field private prefix:Ljava/lang/String;

.field private referrer:Ljava/lang/String;

.field private urlString:Ljava/lang/String;

.field private userAgent:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 899
    const-string/jumbo v0, "(\\d{1,3}\\.\\d{1,3}\\.\\d{1,3}\\.\\d{1,3})"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/pixie/PixieServices$ExternalIpProvider;->PATTERN_IP:Ljava/util/regex/Pattern;

    return-void
.end method

.method constructor <init>(IIIII)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 919
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 920
    invoke-static {p1}, Lcom/viber/voip/pixie/StringStore;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/pixie/PixieServices$ExternalIpProvider;->urlString:Ljava/lang/String;

    .line 921
    if-gez p2, :cond_0

    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lcom/viber/voip/pixie/PixieServices$ExternalIpProvider;->prefix:Ljava/lang/String;

    .line 923
    iput p3, p0, Lcom/viber/voip/pixie/PixieServices$ExternalIpProvider;->areaLengthAfterPrefix:I

    .line 924
    if-gez p4, :cond_1

    move-object v0, v1

    :goto_1
    iput-object v0, p0, Lcom/viber/voip/pixie/PixieServices$ExternalIpProvider;->userAgent:Ljava/lang/String;

    .line 926
    if-gez p5, :cond_2

    :goto_2
    iput-object v1, p0, Lcom/viber/voip/pixie/PixieServices$ExternalIpProvider;->referrer:Ljava/lang/String;

    .line 928
    return-void

    .line 921
    :cond_0
    invoke-static {p2}, Lcom/viber/voip/pixie/StringStore;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 924
    :cond_1
    invoke-static {p4}, Lcom/viber/voip/pixie/StringStore;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 926
    :cond_2
    invoke-static {p5}, Lcom/viber/voip/pixie/StringStore;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 910
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 911
    iput-object p1, p0, Lcom/viber/voip/pixie/PixieServices$ExternalIpProvider;->urlString:Ljava/lang/String;

    .line 912
    iput-object p2, p0, Lcom/viber/voip/pixie/PixieServices$ExternalIpProvider;->prefix:Ljava/lang/String;

    .line 913
    iput p3, p0, Lcom/viber/voip/pixie/PixieServices$ExternalIpProvider;->areaLengthAfterPrefix:I

    .line 914
    iput-object p4, p0, Lcom/viber/voip/pixie/PixieServices$ExternalIpProvider;->userAgent:Ljava/lang/String;

    .line 915
    iput-object p5, p0, Lcom/viber/voip/pixie/PixieServices$ExternalIpProvider;->referrer:Ljava/lang/String;

    .line 916
    return-void
.end method

.method private static final findIPs(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 981
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 982
    sget-object v1, Lcom/viber/voip/pixie/PixieServices$ExternalIpProvider;->PATTERN_IP:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 983
    :goto_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 984
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 986
    :cond_0
    return-object v0
.end method


# virtual methods
.method getExternalIP()Lcom/viber/voip/pixie/PixieServices$ExternalIpProvider$Result;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 931
    new-instance v2, Lcom/viber/voip/pixie/PixieServices$ExternalIpProvider$Result;

    invoke-direct {v2, p0}, Lcom/viber/voip/pixie/PixieServices$ExternalIpProvider$Result;-><init>(Lcom/viber/voip/pixie/PixieServices$ExternalIpProvider;)V

    .line 933
    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v3, p0, Lcom/viber/voip/pixie/PixieServices$ExternalIpProvider;->urlString:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 934
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 935
    iget-object v3, p0, Lcom/viber/voip/pixie/PixieServices$ExternalIpProvider;->userAgent:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 936
    const/4 v3, 0x5

    invoke-static {v3}, Lcom/viber/voip/pixie/StringStore;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/viber/voip/pixie/PixieServices$ExternalIpProvider;->userAgent:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 940
    :cond_0
    iget-object v3, p0, Lcom/viber/voip/pixie/PixieServices$ExternalIpProvider;->referrer:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 941
    const/4 v3, 0x2

    invoke-static {v3}, Lcom/viber/voip/pixie/StringStore;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/viber/voip/pixie/PixieServices$ExternalIpProvider;->referrer:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 945
    :cond_1
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    #setter for: Lcom/viber/voip/pixie/PixieServices$ExternalIpProvider$Result;->statusCode:I
    invoke-static {v2, v3}, Lcom/viber/voip/pixie/PixieServices$ExternalIpProvider$Result;->access$102(Lcom/viber/voip/pixie/PixieServices$ExternalIpProvider$Result;I)I

    .line 946
    #getter for: Lcom/viber/voip/pixie/PixieServices$ExternalIpProvider$Result;->statusCode:I
    invoke-static {v2}, Lcom/viber/voip/pixie/PixieServices$ExternalIpProvider$Result;->access$100(Lcom/viber/voip/pixie/PixieServices$ExternalIpProvider$Result;)I

    move-result v3

    const/16 v4, 0xc8

    if-ne v3, v4, :cond_3

    .line 947
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 948
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 951
    :goto_0
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 952
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_2

    .line 953
    const/16 v5, 0xa

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 955
    :cond_2
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 973
    :catch_0
    move-exception v0

    .line 977
    :cond_3
    :goto_1
    return-object v2

    .line 957
    :cond_4
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 959
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 960
    iget-object v0, p0, Lcom/viber/voip/pixie/PixieServices$ExternalIpProvider;->prefix:Ljava/lang/String;

    if-nez v0, :cond_5

    move v0, v1

    .line 961
    :goto_2
    if-ltz v0, :cond_3

    .line 964
    iget v1, p0, Lcom/viber/voip/pixie/PixieServices$ExternalIpProvider;->areaLengthAfterPrefix:I

    add-int/2addr v1, v0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {v3, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 965
    invoke-static {v0}, Lcom/viber/voip/pixie/PixieServices$ExternalIpProvider;->findIPs(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 966
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_3

    .line 969
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    #setter for: Lcom/viber/voip/pixie/PixieServices$ExternalIpProvider$Result;->ip:Ljava/lang/String;
    invoke-static {v2, v0}, Lcom/viber/voip/pixie/PixieServices$ExternalIpProvider$Result;->access$002(Lcom/viber/voip/pixie/PixieServices$ExternalIpProvider$Result;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 974
    :catch_1
    move-exception v0

    goto :goto_1

    .line 960
    :cond_5
    iget-object v0, p0, Lcom/viber/voip/pixie/PixieServices$ExternalIpProvider;->prefix:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    goto :goto_2
.end method
