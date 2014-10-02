.class public Lcom/viber/voip/api/helper/HelperServiceAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/api/helper/IHelperService;


# static fields
.field private static mHelperServiceImpl:Lcom/viber/voip/api/helper/IHelperService;

.field private static mInstance:Lcom/viber/voip/api/helper/HelperServiceAdapter;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    sput-object p0, Lcom/viber/voip/api/helper/HelperServiceAdapter;->mInstance:Lcom/viber/voip/api/helper/HelperServiceAdapter;

    .line 10
    return-void
.end method

.method private constructor <init>(Lcom/viber/voip/api/helper/IHelperService;)V
    .locals 0
    .parameter

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/viber/voip/api/helper/HelperServiceAdapter;-><init>()V

    .line 14
    sput-object p1, Lcom/viber/voip/api/helper/HelperServiceAdapter;->mHelperServiceImpl:Lcom/viber/voip/api/helper/IHelperService;

    .line 15
    return-void
.end method

.method public static create(Lcom/viber/voip/api/helper/IHelperService;)V
    .locals 1
    .parameter

    .prologue
    .line 18
    sget-object v0, Lcom/viber/voip/api/helper/HelperServiceAdapter;->mInstance:Lcom/viber/voip/api/helper/HelperServiceAdapter;

    if-nez v0, :cond_0

    .line 19
    new-instance v0, Lcom/viber/voip/api/helper/HelperServiceAdapter;

    invoke-direct {v0, p0}, Lcom/viber/voip/api/helper/HelperServiceAdapter;-><init>(Lcom/viber/voip/api/helper/IHelperService;)V

    .line 21
    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/viber/voip/api/helper/IHelperService;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/viber/voip/api/helper/HelperServiceAdapter;->mInstance:Lcom/viber/voip/api/helper/HelperServiceAdapter;

    return-object v0
.end method


# virtual methods
.method public addTransactionItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 120
    sget-object v0, Lcom/viber/voip/api/helper/HelperServiceAdapter;->mHelperServiceImpl:Lcom/viber/voip/api/helper/IHelperService;

    if-eqz v0, :cond_0

    .line 121
    sget-object v0, Lcom/viber/voip/api/helper/HelperServiceAdapter;->mHelperServiceImpl:Lcom/viber/voip/api/helper/IHelperService;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/viber/voip/api/helper/IHelperService;->addTransactionItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    .line 123
    :cond_0
    return-void
.end method

.method public createTransaction(Ljava/lang/String;JLjava/lang/String;JJLjava/lang/String;)V
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 113
    sget-object v0, Lcom/viber/voip/api/helper/HelperServiceAdapter;->mHelperServiceImpl:Lcom/viber/voip/api/helper/IHelperService;

    if-eqz v0, :cond_0

    .line 114
    sget-object v0, Lcom/viber/voip/api/helper/HelperServiceAdapter;->mHelperServiceImpl:Lcom/viber/voip/api/helper/IHelperService;

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-wide v5, p5

    move-wide/from16 v7, p7

    move-object/from16 v9, p9

    invoke-interface/range {v0 .. v9}, Lcom/viber/voip/api/helper/IHelperService;->createTransaction(Ljava/lang/String;JLjava/lang/String;JJLjava/lang/String;)V

    .line 116
    :cond_0
    return-void
.end method

.method public initTracker(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 36
    sget-object v0, Lcom/viber/voip/api/helper/HelperServiceAdapter;->mHelperServiceImpl:Lcom/viber/voip/api/helper/IHelperService;

    if-eqz v0, :cond_0

    .line 37
    sget-object v0, Lcom/viber/voip/api/helper/HelperServiceAdapter;->mHelperServiceImpl:Lcom/viber/voip/api/helper/IHelperService;

    invoke-interface {v0, p1}, Lcom/viber/voip/api/helper/IHelperService;->initTracker(Ljava/lang/String;)V

    .line 39
    :cond_0
    return-void
.end method

.method public log(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 29
    sget-object v0, Lcom/viber/voip/api/helper/HelperServiceAdapter;->mHelperServiceImpl:Lcom/viber/voip/api/helper/IHelperService;

    if-eqz v0, :cond_0

    .line 30
    sget-object v0, Lcom/viber/voip/api/helper/HelperServiceAdapter;->mHelperServiceImpl:Lcom/viber/voip/api/helper/IHelperService;

    invoke-interface {v0, p1, p2, p3}, Lcom/viber/voip/api/helper/IHelperService;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 32
    :cond_0
    return-void
.end method

.method public sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 106
    sget-object v0, Lcom/viber/voip/api/helper/HelperServiceAdapter;->mHelperServiceImpl:Lcom/viber/voip/api/helper/IHelperService;

    if-eqz v0, :cond_0

    .line 107
    sget-object v0, Lcom/viber/voip/api/helper/HelperServiceAdapter;->mHelperServiceImpl:Lcom/viber/voip/api/helper/IHelperService;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/viber/voip/api/helper/IHelperService;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 109
    :cond_0
    return-void
.end method

.method public sendSocial(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 78
    sget-object v0, Lcom/viber/voip/api/helper/HelperServiceAdapter;->mHelperServiceImpl:Lcom/viber/voip/api/helper/IHelperService;

    if-eqz v0, :cond_0

    .line 79
    sget-object v0, Lcom/viber/voip/api/helper/HelperServiceAdapter;->mHelperServiceImpl:Lcom/viber/voip/api/helper/IHelperService;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/viber/voip/api/helper/IHelperService;->sendSocial(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    :cond_0
    return-void
.end method

.method public sendTransaction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 127
    sget-object v0, Lcom/viber/voip/api/helper/HelperServiceAdapter;->mHelperServiceImpl:Lcom/viber/voip/api/helper/IHelperService;

    if-eqz v0, :cond_0

    .line 128
    sget-object v0, Lcom/viber/voip/api/helper/HelperServiceAdapter;->mHelperServiceImpl:Lcom/viber/voip/api/helper/IHelperService;

    invoke-interface {v0, p1, p2}, Lcom/viber/voip/api/helper/IHelperService;->sendTransaction(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    :cond_0
    return-void
.end method

.method public sendView(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 85
    sget-object v0, Lcom/viber/voip/api/helper/HelperServiceAdapter;->mHelperServiceImpl:Lcom/viber/voip/api/helper/IHelperService;

    if-eqz v0, :cond_0

    .line 86
    sget-object v0, Lcom/viber/voip/api/helper/HelperServiceAdapter;->mHelperServiceImpl:Lcom/viber/voip/api/helper/IHelperService;

    invoke-interface {v0, p1, p2}, Lcom/viber/voip/api/helper/IHelperService;->sendView(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    :cond_0
    return-void
.end method

.method public setCustomDimension(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 64
    sget-object v0, Lcom/viber/voip/api/helper/HelperServiceAdapter;->mHelperServiceImpl:Lcom/viber/voip/api/helper/IHelperService;

    if-eqz v0, :cond_0

    .line 65
    sget-object v0, Lcom/viber/voip/api/helper/HelperServiceAdapter;->mHelperServiceImpl:Lcom/viber/voip/api/helper/IHelperService;

    invoke-interface {v0, p1, p2, p3}, Lcom/viber/voip/api/helper/IHelperService;->setCustomDimension(Ljava/lang/String;ILjava/lang/String;)V

    .line 67
    :cond_0
    return-void
.end method

.method public setCustomMetric(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 71
    sget-object v0, Lcom/viber/voip/api/helper/HelperServiceAdapter;->mHelperServiceImpl:Lcom/viber/voip/api/helper/IHelperService;

    if-eqz v0, :cond_0

    .line 72
    sget-object v0, Lcom/viber/voip/api/helper/HelperServiceAdapter;->mHelperServiceImpl:Lcom/viber/voip/api/helper/IHelperService;

    invoke-interface {v0, p1, p2, p3}, Lcom/viber/voip/api/helper/IHelperService;->setCustomMetric(Ljava/lang/String;ILjava/lang/String;)V

    .line 74
    :cond_0
    return-void
.end method

.method public setSampleRate(Ljava/lang/String;D)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 43
    sget-object v0, Lcom/viber/voip/api/helper/HelperServiceAdapter;->mHelperServiceImpl:Lcom/viber/voip/api/helper/IHelperService;

    if-eqz v0, :cond_0

    .line 44
    sget-object v0, Lcom/viber/voip/api/helper/HelperServiceAdapter;->mHelperServiceImpl:Lcom/viber/voip/api/helper/IHelperService;

    invoke-interface {v0, p1, p2, p3}, Lcom/viber/voip/api/helper/IHelperService;->setSampleRate(Ljava/lang/String;D)V

    .line 46
    :cond_0
    return-void
.end method

.method public setStartSession(Ljava/lang/String;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 99
    sget-object v0, Lcom/viber/voip/api/helper/HelperServiceAdapter;->mHelperServiceImpl:Lcom/viber/voip/api/helper/IHelperService;

    if-eqz v0, :cond_0

    .line 100
    sget-object v0, Lcom/viber/voip/api/helper/HelperServiceAdapter;->mHelperServiceImpl:Lcom/viber/voip/api/helper/IHelperService;

    invoke-interface {v0, p1, p2}, Lcom/viber/voip/api/helper/IHelperService;->setStartSession(Ljava/lang/String;Z)V

    .line 102
    :cond_0
    return-void
.end method

.method public trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 57
    sget-object v0, Lcom/viber/voip/api/helper/HelperServiceAdapter;->mHelperServiceImpl:Lcom/viber/voip/api/helper/IHelperService;

    if-eqz v0, :cond_0

    .line 58
    sget-object v0, Lcom/viber/voip/api/helper/HelperServiceAdapter;->mHelperServiceImpl:Lcom/viber/voip/api/helper/IHelperService;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/viber/voip/api/helper/IHelperService;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 60
    :cond_0
    return-void
.end method

.method public trackTiming(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 92
    sget-object v0, Lcom/viber/voip/api/helper/HelperServiceAdapter;->mHelperServiceImpl:Lcom/viber/voip/api/helper/IHelperService;

    if-eqz v0, :cond_0

    .line 93
    sget-object v0, Lcom/viber/voip/api/helper/HelperServiceAdapter;->mHelperServiceImpl:Lcom/viber/voip/api/helper/IHelperService;

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/viber/voip/api/helper/IHelperService;->trackTiming(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    .line 95
    :cond_0
    return-void
.end method

.method public trackView(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 50
    sget-object v0, Lcom/viber/voip/api/helper/HelperServiceAdapter;->mHelperServiceImpl:Lcom/viber/voip/api/helper/IHelperService;

    if-eqz v0, :cond_0

    .line 51
    sget-object v0, Lcom/viber/voip/api/helper/HelperServiceAdapter;->mHelperServiceImpl:Lcom/viber/voip/api/helper/IHelperService;

    invoke-interface {v0, p1, p2}, Lcom/viber/voip/api/helper/IHelperService;->trackView(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    :cond_0
    return-void
.end method
