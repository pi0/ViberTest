.class public abstract Lcom/viber/voip/gallery/animation/c;
.super Landroid/support/v4/view/PagerAdapter;
.source "SourceFile"


# instance fields
.field protected a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 12
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/gallery/animation/c;->a:Landroid/content/Context;

    .line 13
    return-void
.end method


# virtual methods
.method public a(ILandroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 28
    return-void
.end method

.method public abstract a(Landroid/view/View;IZZ)V
.end method

.method public b(ILandroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 42
    return-void
.end method

.method public c(ILandroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 56
    return-void
.end method
