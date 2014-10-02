.class public abstract Lcom/viber/voip/g/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/viber/voip/g/b;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method


# virtual methods
.method protected a()Lcom/viber/voip/g/b;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/viber/voip/g/a;->a:Lcom/viber/voip/g/b;

    return-object v0
.end method

.method public a(Lcom/viber/voip/g/b;)V
    .locals 0
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Lcom/viber/voip/g/a;->a:Lcom/viber/voip/g/b;

    .line 45
    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 32
    return-void
.end method

.method public abstract a(Z)V
.end method

.method protected b()Lcom/viber/voip/ViberApplication;
    .locals 1

    .prologue
    .line 21
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    return-object v0
.end method

.method protected c()Lcom/viber/voip/phone/v;
    .locals 1

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/viber/voip/g/a;->b()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getPhoneApp()Lcom/viber/voip/phone/v;

    move-result-object v0

    return-object v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    return v0
.end method
