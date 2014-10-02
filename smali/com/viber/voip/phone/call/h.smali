.class Lcom/viber/voip/phone/call/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/calls/w;


# instance fields
.field final synthetic a:[J

.field final synthetic b:I

.field final synthetic c:Lcom/viber/jni/CMissedCall;

.field final synthetic d:Lcom/viber/voip/phone/call/f;


# direct methods
.method constructor <init>(Lcom/viber/voip/phone/call/f;[JILcom/viber/jni/CMissedCall;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 438
    iput-object p1, p0, Lcom/viber/voip/phone/call/h;->d:Lcom/viber/voip/phone/call/f;

    iput-object p2, p0, Lcom/viber/voip/phone/call/h;->a:[J

    iput p3, p0, Lcom/viber/voip/phone/call/h;->b:I

    iput-object p4, p0, Lcom/viber/voip/phone/call/h;->c:Lcom/viber/jni/CMissedCall;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/viber/voip/calls/entities/CallEntity;)V
    .locals 7
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 442
    iget-object v1, p0, Lcom/viber/voip/phone/call/h;->a:[J

    iget v3, p0, Lcom/viber/voip/phone/call/h;->b:I

    iget-object v4, p0, Lcom/viber/voip/phone/call/h;->c:Lcom/viber/jni/CMissedCall;

    invoke-virtual {v4}, Lcom/viber/jni/CMissedCall;->getToken()J

    move-result-wide v4

    aput-wide v4, v1, v3

    move v1, v0

    .line 444
    :goto_0
    iget-object v3, p0, Lcom/viber/voip/phone/call/h;->a:[J

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 445
    iget-object v3, p0, Lcom/viber/voip/phone/call/h;->a:[J

    aget-wide v3, v3, v0

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    move v1, v2

    .line 444
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 447
    :cond_1
    if-nez v1, :cond_2

    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/phone/call/h;->a:[J

    invoke-virtual {v0, v1}, Lcom/viber/jni/PhoneControllerWrapper;->handleSendMissedCallsAck([J)Z

    .line 448
    :cond_2
    return-void
.end method
