.class public Lcom/viber/voip/phone/call/a/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/jni/dialer/DialerControllerDelegate$DialerLocalCallState;
.implements Lcom/viber/voip/phone/call/i;


# instance fields
.field private a:Lcom/viber/voip/phone/call/k;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallEnded(JZLjava/lang/String;II)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v5, 0x0

    .line 24
    iget-object v2, p0, Lcom/viber/voip/phone/call/a/a;->a:Lcom/viber/voip/phone/call/k;

    .line 26
    if-nez v2, :cond_1

    .line 49
    :cond_0
    :goto_0
    return-void

    .line 30
    :cond_1
    invoke-virtual {v2}, Lcom/viber/voip/phone/call/k;->d()Lcom/viber/voip/phone/call/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/n;->x()J

    move-result-wide v0

    const-wide/16 v3, 0x3e8

    div-long v3, v0, v3

    .line 31
    cmp-long v0, v3, v5

    if-nez v0, :cond_3

    invoke-virtual {v2}, Lcom/viber/voip/phone/call/k;->b()Lcom/viber/voip/phone/call/l;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/phone/call/l;->a:Lcom/viber/voip/phone/call/l;

    if-ne v0, v1, :cond_3

    const/16 v0, 0xa

    if-eq p5, v0, :cond_3

    const/4 v0, 0x1

    .line 42
    :goto_1
    const/16 v1, 0xe

    if-eq p5, v1, :cond_2

    invoke-virtual {v2}, Lcom/viber/voip/phone/call/k;->f()Z

    move-result v1

    if-eqz v1, :cond_2

    cmp-long v1, v3, v5

    if-lez v1, :cond_2

    .line 43
    const-wide/16 v5, 0x2

    add-long/2addr v3, v5

    .line 46
    :cond_2
    if-nez v0, :cond_0

    .line 47
    const/4 v5, 0x0

    move-wide v0, p1

    invoke-static/range {v0 .. v5}, Lcom/viber/voip/util/q;->a(JLcom/viber/voip/phone/call/k;JLcom/viber/voip/calls/w;)V

    goto :goto_0

    .line 31
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onCallInfoReady(Lcom/viber/voip/phone/call/k;)V
    .locals 0
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lcom/viber/voip/phone/call/a/a;->a:Lcom/viber/voip/phone/call/k;

    .line 61
    return-void
.end method

.method public onCallStarted(Z)V
    .locals 0
    .parameter

    .prologue
    .line 18
    return-void
.end method

.method public onHangup()V
    .locals 0

    .prologue
    .line 56
    return-void
.end method
