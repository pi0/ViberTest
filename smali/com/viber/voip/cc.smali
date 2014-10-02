.class Lcom/viber/voip/cc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/util/ag;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/viber/voip/SystemDialogActivity;


# direct methods
.method constructor <init>(Lcom/viber/voip/SystemDialogActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 615
    iput-object p1, p0, Lcom/viber/voip/cc;->b:Lcom/viber/voip/SystemDialogActivity;

    iput-object p2, p0, Lcom/viber/voip/cc;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 618
    iget-object v0, p0, Lcom/viber/voip/cc;->b:Lcom/viber/voip/SystemDialogActivity;

    const v2, 0x7f0c0467

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p2, v3, v1

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-virtual {v0, v2, v3}, Lcom/viber/voip/SystemDialogActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 619
    new-instance v0, Lcom/viber/logger/QaLogger$QaNotificationEvent;

    const-string/jumbo v3, ""

    invoke-direct {v0, v3, v2}, Lcom/viber/logger/QaLogger$QaNotificationEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/viber/logger/QaLogger;->a(Lcom/viber/logger/QaLogger$QaEvent;)V

    .line 620
    iget-object v0, p0, Lcom/viber/voip/cc;->b:Lcom/viber/voip/SystemDialogActivity;

    new-instance v3, Lcom/viber/voip/cd;

    invoke-direct {v3, p0}, Lcom/viber/voip/cd;-><init>(Lcom/viber/voip/cc;)V

    new-instance v4, Lcom/viber/voip/ce;

    invoke-direct {v4, p0}, Lcom/viber/voip/ce;-><init>(Lcom/viber/voip/cc;)V

    const v5, 0x7f0c02ae

    move v6, v1

    invoke-static/range {v0 .. v6}, Lcom/viber/voip/util/at;->a(Landroid/content/Context;ILjava/lang/CharSequence;Lcom/viber/voip/util/az;Ljava/lang/Runnable;IZ)Landroid/content/DialogInterface;

    .line 641
    return-void
.end method
