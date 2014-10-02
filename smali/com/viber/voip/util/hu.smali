.class public Lcom/viber/voip/util/hu;
.super Landroid/text/method/LinkMovementMethod;
.source "SourceFile"


# static fields
.field private static a:Lcom/viber/voip/util/hu;


# instance fields
.field private b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 576
    invoke-direct {p0}, Landroid/text/method/LinkMovementMethod;-><init>()V

    .line 580
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/viber/voip/util/hu;->b:Z

    return-void
.end method

.method public static a()Lcom/viber/voip/util/hu;
    .locals 1

    .prologue
    .line 583
    sget-object v0, Lcom/viber/voip/util/hu;->a:Lcom/viber/voip/util/hu;

    if-nez v0, :cond_0

    .line 584
    new-instance v0, Lcom/viber/voip/util/hu;

    invoke-direct {v0}, Lcom/viber/voip/util/hu;-><init>()V

    sput-object v0, Lcom/viber/voip/util/hu;->a:Lcom/viber/voip/util/hu;

    .line 586
    :cond_0
    sget-object v0, Lcom/viber/voip/util/hu;->a:Lcom/viber/voip/util/hu;

    return-object v0
.end method


# virtual methods
.method public a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 595
    iput-boolean p1, p0, Lcom/viber/voip/util/hu;->b:Z

    .line 596
    return-void
.end method

.method public canSelectArbitrarily()Z
    .locals 1

    .prologue
    .line 600
    invoke-static {}, Lcom/viber/voip/util/gl;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 601
    const/4 v0, 0x1

    .line 603
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/text/method/LinkMovementMethod;->canSelectArbitrarily()Z

    move-result v0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 591
    iget-boolean v0, p0, Lcom/viber/voip/util/hu;->b:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Landroid/text/method/LinkMovementMethod;->onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
