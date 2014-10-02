.class Lcom/viber/voip/af;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/HomeActivity;


# direct methods
.method constructor <init>(Lcom/viber/voip/HomeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 313
    iput-object p1, p0, Lcom/viber/voip/af;->a:Lcom/viber/voip/HomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v5, 0x1

    .line 316
    const-string/jumbo v0, "onServiceStateChanged state:Connecting"

    invoke-static {v0}, Lcom/viber/voip/HomeActivity;->a(Ljava/lang/String;)V

    .line 317
    iget-object v0, p0, Lcom/viber/voip/af;->a:Lcom/viber/voip/HomeActivity;

    invoke-static {v0}, Lcom/viber/voip/HomeActivity;->b(Lcom/viber/voip/HomeActivity;)Lcom/viber/voip/widget/MessageBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 318
    iget-object v0, p0, Lcom/viber/voip/af;->a:Lcom/viber/voip/HomeActivity;

    invoke-static {v0}, Lcom/viber/voip/HomeActivity;->b(Lcom/viber/voip/HomeActivity;)Lcom/viber/voip/widget/MessageBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/widget/MessageBar;->b()V

    .line 319
    iget-object v0, p0, Lcom/viber/voip/af;->a:Lcom/viber/voip/HomeActivity;

    invoke-static {v0}, Lcom/viber/voip/HomeActivity;->b(Lcom/viber/voip/HomeActivity;)Lcom/viber/voip/widget/MessageBar;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/af;->a:Lcom/viber/voip/HomeActivity;

    const v2, 0x7f0c05ee

    invoke-virtual {v1, v2}, Lcom/viber/voip/HomeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, ""

    const v3, 0x7f020172

    const v4, 0x7f02008b

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/viber/voip/widget/MessageBar;->a(Ljava/lang/String;Ljava/lang/String;IIZZ)V

    .line 322
    :cond_0
    return-void
.end method
