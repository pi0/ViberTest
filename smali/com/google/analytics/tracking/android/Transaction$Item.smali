.class public final Lcom/google/analytics/tracking/android/Transaction$Item;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mCategory:Ljava/lang/String;

.field private final mName:Ljava/lang/String;

.field private final mPriceInMicros:J

.field private final mQuantity:J

.field private final mSKU:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/google/analytics/tracking/android/Transaction$Item$Builder;)V
    .locals 2
    .parameter

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    #getter for: Lcom/google/analytics/tracking/android/Transaction$Item$Builder;->mSKU:Ljava/lang/String;
    invoke-static {p1}, Lcom/google/analytics/tracking/android/Transaction$Item$Builder;->access$600(Lcom/google/analytics/tracking/android/Transaction$Item$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/tracking/android/Transaction$Item;->mSKU:Ljava/lang/String;

    .line 72
    #getter for: Lcom/google/analytics/tracking/android/Transaction$Item$Builder;->mPriceInMicros:J
    invoke-static {p1}, Lcom/google/analytics/tracking/android/Transaction$Item$Builder;->access$700(Lcom/google/analytics/tracking/android/Transaction$Item$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/analytics/tracking/android/Transaction$Item;->mPriceInMicros:J

    .line 73
    #getter for: Lcom/google/analytics/tracking/android/Transaction$Item$Builder;->mQuantity:J
    invoke-static {p1}, Lcom/google/analytics/tracking/android/Transaction$Item$Builder;->access$800(Lcom/google/analytics/tracking/android/Transaction$Item$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/analytics/tracking/android/Transaction$Item;->mQuantity:J

    .line 74
    #getter for: Lcom/google/analytics/tracking/android/Transaction$Item$Builder;->mName:Ljava/lang/String;
    invoke-static {p1}, Lcom/google/analytics/tracking/android/Transaction$Item$Builder;->access$900(Lcom/google/analytics/tracking/android/Transaction$Item$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/tracking/android/Transaction$Item;->mName:Ljava/lang/String;

    .line 75
    #getter for: Lcom/google/analytics/tracking/android/Transaction$Item$Builder;->mCategory:Ljava/lang/String;
    invoke-static {p1}, Lcom/google/analytics/tracking/android/Transaction$Item$Builder;->access$1000(Lcom/google/analytics/tracking/android/Transaction$Item$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/tracking/android/Transaction$Item;->mCategory:Ljava/lang/String;

    .line 76
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/analytics/tracking/android/Transaction$Item$Builder;Lcom/google/analytics/tracking/android/Transaction$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/google/analytics/tracking/android/Transaction$Item;-><init>(Lcom/google/analytics/tracking/android/Transaction$Item$Builder;)V

    return-void
.end method


# virtual methods
.method public getCategory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/analytics/tracking/android/Transaction$Item;->mCategory:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/analytics/tracking/android/Transaction$Item;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPriceInMicros()J
    .locals 2

    .prologue
    .line 91
    iget-wide v0, p0, Lcom/google/analytics/tracking/android/Transaction$Item;->mPriceInMicros:J

    return-wide v0
.end method

.method public getQuantity()J
    .locals 2

    .prologue
    .line 95
    iget-wide v0, p0, Lcom/google/analytics/tracking/android/Transaction$Item;->mQuantity:J

    return-wide v0
.end method

.method public getSKU()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/google/analytics/tracking/android/Transaction$Item;->mSKU:Ljava/lang/String;

    return-object v0
.end method
