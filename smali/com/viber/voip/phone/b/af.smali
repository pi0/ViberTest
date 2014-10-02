.class public Lcom/viber/voip/phone/b/af;
.super Lcom/viber/voip/phone/b/k;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private f:Lcom/viber/voip/phone/b/o;

.field private g:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/viber/voip/phone/PhoneActivity;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/viber/voip/phone/b/k;-><init>(Landroid/view/View;Lcom/viber/voip/phone/PhoneActivity;)V

    .line 30
    const v0, 0x7f0701ad

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/phone/b/af;->g:Landroid/view/View;

    .line 31
    new-instance v0, Lcom/viber/voip/phone/b/o;

    const v1, 0x7f07008a

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/viber/voip/phone/b/o;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/viber/voip/phone/b/af;->f:Lcom/viber/voip/phone/b/o;

    .line 32
    return-void
.end method


# virtual methods
.method public a(Lcom/viber/jni/PhoneControllerWrapper;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 36
    invoke-super {p0, p1}, Lcom/viber/voip/phone/b/k;->a(Lcom/viber/jni/PhoneControllerWrapper;)V

    .line 37
    iget-object v0, p0, Lcom/viber/voip/phone/b/af;->g:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 38
    iget-object v0, p0, Lcom/viber/voip/phone/b/af;->f:Lcom/viber/voip/phone/b/o;

    iget-object v0, v0, Lcom/viber/voip/phone/b/o;->e:Lcom/viber/voip/phone/h;

    invoke-virtual {v0, v2}, Lcom/viber/voip/phone/h;->setEnabled(Z)V

    .line 39
    iget-object v0, p0, Lcom/viber/voip/phone/b/af;->f:Lcom/viber/voip/phone/b/o;

    iget-object v0, v0, Lcom/viber/voip/phone/b/o;->c:Lcom/viber/voip/phone/h;

    invoke-virtual {v0, v2}, Lcom/viber/voip/phone/h;->setEnabled(Z)V

    .line 40
    iget-object v0, p0, Lcom/viber/voip/phone/b/af;->f:Lcom/viber/voip/phone/b/o;

    iget-object v0, v0, Lcom/viber/voip/phone/b/o;->g:Lcom/viber/voip/phone/h;

    invoke-virtual {v0, v2}, Lcom/viber/voip/phone/h;->setEnabled(Z)V

    .line 41
    return-void
.end method

.method public a(Lcom/viber/voip/phone/call/k;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 45
    invoke-super {p0, p1}, Lcom/viber/voip/phone/b/k;->a(Lcom/viber/voip/phone/call/k;)V

    .line 46
    iget-object v0, p0, Lcom/viber/voip/phone/b/af;->f:Lcom/viber/voip/phone/b/o;

    iget-object v0, v0, Lcom/viber/voip/phone/b/o;->e:Lcom/viber/voip/phone/h;

    invoke-virtual {v0, v1}, Lcom/viber/voip/phone/h;->setEnabled(Z)V

    .line 47
    iget-object v0, p0, Lcom/viber/voip/phone/b/af;->f:Lcom/viber/voip/phone/b/o;

    iget-object v0, v0, Lcom/viber/voip/phone/b/o;->c:Lcom/viber/voip/phone/h;

    invoke-virtual {v0, v1}, Lcom/viber/voip/phone/h;->setEnabled(Z)V

    .line 48
    iget-object v0, p0, Lcom/viber/voip/phone/b/af;->f:Lcom/viber/voip/phone/b/o;

    iget-object v0, v0, Lcom/viber/voip/phone/b/o;->g:Lcom/viber/voip/phone/h;

    invoke-virtual {v0, v1}, Lcom/viber/voip/phone/h;->setEnabled(Z)V

    .line 49
    return-void
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    return v0
.end method
