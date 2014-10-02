.class Lcom/viber/voip/pixie/PixieServices$ExternalIpProvider$Result;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private ip:Ljava/lang/String;

.field private statusCode:I

.field final synthetic this$0:Lcom/viber/voip/pixie/PixieServices$ExternalIpProvider;


# direct methods
.method constructor <init>(Lcom/viber/voip/pixie/PixieServices$ExternalIpProvider;)V
    .locals 1
    .parameter

    .prologue
    .line 990
    iput-object p1, p0, Lcom/viber/voip/pixie/PixieServices$ExternalIpProvider$Result;->this$0:Lcom/viber/voip/pixie/PixieServices$ExternalIpProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 992
    const/4 v0, -0x1

    iput v0, p0, Lcom/viber/voip/pixie/PixieServices$ExternalIpProvider$Result;->statusCode:I

    return-void
.end method

.method static synthetic access$000(Lcom/viber/voip/pixie/PixieServices$ExternalIpProvider$Result;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 990
    iget-object v0, p0, Lcom/viber/voip/pixie/PixieServices$ExternalIpProvider$Result;->ip:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/viber/voip/pixie/PixieServices$ExternalIpProvider$Result;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 990
    iput-object p1, p0, Lcom/viber/voip/pixie/PixieServices$ExternalIpProvider$Result;->ip:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/viber/voip/pixie/PixieServices$ExternalIpProvider$Result;)I
    .locals 1
    .parameter

    .prologue
    .line 990
    iget v0, p0, Lcom/viber/voip/pixie/PixieServices$ExternalIpProvider$Result;->statusCode:I

    return v0
.end method

.method static synthetic access$102(Lcom/viber/voip/pixie/PixieServices$ExternalIpProvider$Result;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 990
    iput p1, p0, Lcom/viber/voip/pixie/PixieServices$ExternalIpProvider$Result;->statusCode:I

    return p1
.end method


# virtual methods
.method public getIp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 999
    iget-object v0, p0, Lcom/viber/voip/pixie/PixieServices$ExternalIpProvider$Result;->ip:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusCode()I
    .locals 1

    .prologue
    .line 995
    iget v0, p0, Lcom/viber/voip/pixie/PixieServices$ExternalIpProvider$Result;->statusCode:I

    return v0
.end method
