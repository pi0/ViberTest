.class Lcom/viber/voip/api/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/api/x;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/viber/voip/api/y;

.field final synthetic c:Lcom/viber/voip/api/q;


# direct methods
.method constructor <init>(Lcom/viber/voip/api/q;Ljava/lang/String;Lcom/viber/voip/api/y;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 353
    iput-object p1, p0, Lcom/viber/voip/api/r;->c:Lcom/viber/voip/api/q;

    iput-object p2, p0, Lcom/viber/voip/api/r;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/viber/voip/api/r;->b:Lcom/viber/voip/api/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 356
    const/4 v0, 0x0

    .line 357
    if-eqz p1, :cond_0

    if-ne v1, p1, :cond_1

    .line 358
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "com.viber.voip.action.DIALER"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 359
    const/high16 v2, 0x400

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 360
    const-string/jumbo v2, "open_keypad_number"

    iget-object v3, p0, Lcom/viber/voip/api/r;->a:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 362
    :cond_1
    iget-object v2, p0, Lcom/viber/voip/api/r;->b:Lcom/viber/voip/api/y;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    :cond_2
    invoke-interface {v2, v1, v0}, Lcom/viber/voip/api/y;->a(ILandroid/content/Intent;)V

    .line 363
    return-void
.end method
