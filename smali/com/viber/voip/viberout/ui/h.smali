.class Lcom/viber/voip/viberout/ui/h;
.super Lcom/viber/voip/messages/ui/du;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/ui/PositioningAwareFrameLayout;

.field final synthetic b:Lcom/viber/voip/viberout/ui/ViberOutActivity;

.field private c:Z


# direct methods
.method constructor <init>(Lcom/viber/voip/viberout/ui/ViberOutActivity;Lcom/viber/voip/messages/ui/PositioningAwareFrameLayout;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 134
    iput-object p1, p0, Lcom/viber/voip/viberout/ui/h;->b:Lcom/viber/voip/viberout/ui/ViberOutActivity;

    iput-object p2, p0, Lcom/viber/voip/viberout/ui/h;->a:Lcom/viber/voip/messages/ui/PositioningAwareFrameLayout;

    invoke-direct {p0}, Lcom/viber/voip/messages/ui/du;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/viber/voip/viberout/ui/h;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 134
    iput-boolean p1, p0, Lcom/viber/voip/viberout/ui/h;->c:Z

    return p1
.end method


# virtual methods
.method public b(Landroid/view/View;ZIIII)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 138
    iget-boolean v0, p0, Lcom/viber/voip/viberout/ui/h;->c:Z

    if-nez v0, :cond_0

    .line 139
    sub-int v0, p5, p3

    .line 140
    sget-object v1, Lcom/viber/voip/dk;->a:Lcom/viber/voip/dk;

    invoke-static {v1}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/viber/voip/viberout/ui/i;

    invoke-direct {v2, p0, v0}, Lcom/viber/voip/viberout/ui/i;-><init>(Lcom/viber/voip/viberout/ui/h;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 152
    :cond_0
    return-void
.end method
