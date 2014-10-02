.class public Lcom/viber/voip/registration/RegistrationScrollView;
.super Landroid/widget/ScrollView;
.source "SourceFile"


# instance fields
.field private a:Lcom/viber/voip/registration/co;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    return-void
.end method


# virtual methods
.method protected onSizeChanged(IIII)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onSizeChanged(IIII)V

    .line 31
    iget-object v0, p0, Lcom/viber/voip/registration/RegistrationScrollView;->a:Lcom/viber/voip/registration/co;

    if-eqz v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/viber/voip/registration/RegistrationScrollView;->a:Lcom/viber/voip/registration/co;

    invoke-interface {v0}, Lcom/viber/voip/registration/co;->a()V

    .line 33
    :cond_0
    return-void
.end method

.method public setOnResizeViewListener(Lcom/viber/voip/registration/co;)V
    .locals 0
    .parameter

    .prologue
    .line 25
    iput-object p1, p0, Lcom/viber/voip/registration/RegistrationScrollView;->a:Lcom/viber/voip/registration/co;

    .line 26
    return-void
.end method
