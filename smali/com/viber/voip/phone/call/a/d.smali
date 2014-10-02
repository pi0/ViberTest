.class public Lcom/viber/voip/phone/call/a/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Observer;


# instance fields
.field private a:Z

.field private b:Ljava/util/Observer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/viber/voip/phone/call/a/d;->a:Z

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/viber/voip/phone/call/a/d;->b:Ljava/util/Observer;

    .line 20
    return-void
.end method


# virtual methods
.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 33
    move-object v0, p2

    check-cast v0, Lcom/viber/voip/phone/call/n;

    .line 34
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "RateCallListener "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/viber/voip/phone/call/a/d;->a:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/n;->c()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/n;->x()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mWrapperdObserver="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/phone/call/a/d;->b:Ljava/util/Observer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/viber/voip/ViberApplication;->log(Ljava/lang/String;)V

    .line 36
    iget-boolean v1, p0, Lcom/viber/voip/phone/call/a/d;->a:Z

    if-nez v1, :cond_3

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/n;->c()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_3

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/n;->x()J

    move-result-wide v0

    const-wide/32 v2, 0x75300

    cmp-long v0, v0, v2

    if-ltz v0, :cond_3

    .line 37
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    .line 38
    const-string/jumbo v1, "show_rate_dialog"

    invoke-interface {v0, v1, v4}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;Z)Z

    move-result v1

    .line 39
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "RateCallListener showRatePopoup="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/viber/voip/ViberApplication;->log(Ljava/lang/String;)V

    .line 40
    if-eqz v1, :cond_2

    .line 41
    const-string/jumbo v1, "rate_dialog_shown_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;J)Lcom/viber/voip/settings/l;

    .line 43
    invoke-static {v4}, Lcom/viber/voip/phone/PhoneActivity;->c(Z)V

    .line 47
    :cond_0
    :goto_0
    iput-boolean v4, p0, Lcom/viber/voip/phone/call/a/d;->a:Z

    .line 51
    :cond_1
    :goto_1
    return-void

    .line 44
    :cond_2
    iget-object v0, p0, Lcom/viber/voip/phone/call/a/d;->b:Ljava/util/Observer;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/viber/voip/phone/call/a/d;->b:Ljava/util/Observer;

    invoke-interface {v0, p1, p2}, Ljava/util/Observer;->update(Ljava/util/Observable;Ljava/lang/Object;)V

    goto :goto_0

    .line 48
    :cond_3
    iget-object v0, p0, Lcom/viber/voip/phone/call/a/d;->b:Ljava/util/Observer;

    if-eqz v0, :cond_1

    .line 49
    iget-object v0, p0, Lcom/viber/voip/phone/call/a/d;->b:Ljava/util/Observer;

    invoke-interface {v0, p1, p2}, Ljava/util/Observer;->update(Ljava/util/Observable;Ljava/lang/Object;)V

    goto :goto_1
.end method
