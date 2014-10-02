.class public abstract Lcom/viber/voip/phone/b/ah;
.super Lcom/viber/voip/phone/ab;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private c:Z

.field protected d:Lcom/viber/voip/phone/CallCard;

.field protected e:Lcom/viber/voip/phone/call/k;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/viber/voip/phone/PhoneActivity;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/viber/voip/phone/ab;-><init>(Landroid/view/View;Lcom/viber/voip/phone/PhoneActivity;)V

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/viber/voip/phone/b/ah;->c:Z

    .line 31
    const v0, 0x7f070082

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/phone/CallCard;

    iput-object v0, p0, Lcom/viber/voip/phone/b/ah;->d:Lcom/viber/voip/phone/CallCard;

    .line 32
    return-void
.end method


# virtual methods
.method public a(Lcom/viber/jni/PhoneControllerWrapper;)V
    .locals 1
    .parameter

    .prologue
    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/viber/voip/phone/b/ah;->c:Z

    .line 60
    return-void
.end method

.method public a(Lcom/viber/voip/phone/call/k;)V
    .locals 2
    .parameter

    .prologue
    .line 36
    iput-object p1, p0, Lcom/viber/voip/phone/b/ah;->e:Lcom/viber/voip/phone/call/k;

    .line 37
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/viber/voip/phone/call/k;->d()Lcom/viber/voip/phone/call/n;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 39
    iget-object v0, p0, Lcom/viber/voip/phone/b/ah;->d:Lcom/viber/voip/phone/CallCard;

    invoke-virtual {v0, p1}, Lcom/viber/voip/phone/CallCard;->a(Lcom/viber/voip/phone/call/k;)V

    .line 40
    invoke-virtual {p1}, Lcom/viber/voip/phone/call/k;->d()Lcom/viber/voip/phone/call/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/n;->a()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/viber/voip/phone/call/k;->d()Lcom/viber/voip/phone/call/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/n;->C()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/phone/b/ah;->d:Lcom/viber/voip/phone/CallCard;

    const v1, 0x7f0c0412

    invoke-virtual {v0, v1}, Lcom/viber/voip/phone/CallCard;->setChronometerText(I)V

    .line 52
    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    .line 53
    iget-object v0, p0, Lcom/viber/voip/phone/b/ah;->d:Lcom/viber/voip/phone/CallCard;

    invoke-virtual {p1}, Lcom/viber/voip/phone/call/k;->f()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/phone/CallCard;->a(Z)V

    .line 55
    :cond_2
    return-void

    .line 42
    :cond_3
    invoke-virtual {p1}, Lcom/viber/voip/phone/call/k;->d()Lcom/viber/voip/phone/call/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/n;->n()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 43
    iget-object v0, p0, Lcom/viber/voip/phone/b/ah;->d:Lcom/viber/voip/phone/CallCard;

    const v1, 0x7f0c0413

    invoke-virtual {v0, v1}, Lcom/viber/voip/phone/CallCard;->setChronometerText(I)V

    goto :goto_0

    .line 45
    :cond_4
    iget-object v0, p0, Lcom/viber/voip/phone/b/ah;->d:Lcom/viber/voip/phone/CallCard;

    invoke-virtual {v0}, Lcom/viber/voip/phone/CallCard;->a()V

    goto :goto_0
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/viber/voip/phone/b/ah;->c:Z

    return v0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/viber/voip/phone/b/ah;->c:Z

    .line 70
    return-void
.end method
