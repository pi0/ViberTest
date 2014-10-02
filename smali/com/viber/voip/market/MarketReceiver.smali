.class public Lcom/viber/voip/market/MarketReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/viber/voip/market/ac;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/viber/voip/market/MarketReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/market/MarketReceiver;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static a(I)I
    .locals 1
    .parameter

    .prologue
    .line 103
    packed-switch p0, :pswitch_data_0

    .line 109
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 105
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 107
    :pswitch_2
    const/4 v0, 0x1

    goto :goto_0

    .line 103
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static a()V
    .locals 2

    .prologue
    .line 38
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/market/aa;

    invoke-direct {v1}, Lcom/viber/voip/market/aa;-><init>()V

    invoke-virtual {v0, v1}, Lcom/viber/jni/PhoneControllerWrapper;->registerDelegate(Lcom/viber/jni/PhoneControllerDelegate;)V

    .line 61
    return-void
.end method

.method static synthetic a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 14
    invoke-static {p0}, Lcom/viber/voip/market/MarketReceiver;->b(Ljava/lang/String;)V

    return-void
.end method

.method private static b(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 115
    return-void
.end method


# virtual methods
.method public a(Lcom/viber/voip/market/ac;)V
    .locals 3
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lcom/viber/voip/market/MarketReceiver;->b:Lcom/viber/voip/market/ac;

    if-nez v0, :cond_0

    .line 66
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "MarketActivityPassiveReceiverAction"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Lcom/viber/voip/ViberApplication;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 68
    :cond_0
    iput-object p1, p0, Lcom/viber/voip/market/MarketReceiver;->b:Lcom/viber/voip/market/ac;

    .line 69
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 72
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/viber/voip/ViberApplication;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/viber/voip/market/MarketReceiver;->b:Lcom/viber/voip/market/ac;

    .line 74
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const-wide/16 v5, 0x0

    const/4 v4, 0x0

    .line 78
    invoke-static {}, Lcom/viber/voip/market/ad;->values()[Lcom/viber/voip/market/ad;

    move-result-object v0

    const-string/jumbo v1, "op"

    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    aget-object v0, v0, v1

    .line 79
    sget-object v1, Lcom/viber/voip/market/ab;->a:[I

    invoke-virtual {v0}, Lcom/viber/voip/market/ad;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 99
    :cond_0
    :goto_0
    return-void

    .line 81
    :pswitch_0
    const-string/jumbo v1, "group_id"

    invoke-virtual {p2, v1, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    .line 82
    const-string/jumbo v3, "status"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 83
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onReceive, op:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, ", groupId:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, ", status:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/market/MarketReceiver;->b(Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/viber/voip/market/MarketReceiver;->b:Lcom/viber/voip/market/ac;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/viber/voip/market/MarketReceiver;->b:Lcom/viber/voip/market/ac;

    invoke-interface {v0, v1, v2, v3}, Lcom/viber/voip/market/ac;->a(JI)V

    goto :goto_0

    .line 90
    :pswitch_1
    const-string/jumbo v1, "group_id"

    invoke-virtual {p2, v1, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    .line 91
    const-string/jumbo v3, "status"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 92
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onReceive, op:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, ", groupId:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, ", status:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/market/MarketReceiver;->b(Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/viber/voip/market/MarketReceiver;->b:Lcom/viber/voip/market/ac;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/viber/voip/market/MarketReceiver;->b:Lcom/viber/voip/market/ac;

    invoke-interface {v0, v1, v2, v3}, Lcom/viber/voip/market/ac;->b(JI)V

    goto/16 :goto_0

    .line 79
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
