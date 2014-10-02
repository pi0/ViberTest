.class Lcom/viber/voip/ad;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/ac;


# direct methods
.method constructor <init>(Lcom/viber/voip/ac;)V
    .locals 0
    .parameter

    .prologue
    .line 281
    iput-object p1, p0, Lcom/viber/voip/ad;->a:Lcom/viber/voip/ac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v5, 0x1

    .line 284
    iget-object v0, p0, Lcom/viber/voip/ad;->a:Lcom/viber/voip/ac;

    iget-object v0, v0, Lcom/viber/voip/ac;->a:Lcom/viber/voip/HomeActivity;

    invoke-static {v0}, Lcom/viber/voip/HomeActivity;->b(Lcom/viber/voip/HomeActivity;)Lcom/viber/voip/widget/MessageBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/widget/MessageBar;->b()V

    .line 285
    iget-object v0, p0, Lcom/viber/voip/ad;->a:Lcom/viber/voip/ac;

    iget-object v0, v0, Lcom/viber/voip/ac;->a:Lcom/viber/voip/HomeActivity;

    invoke-static {v0}, Lcom/viber/voip/HomeActivity;->b(Lcom/viber/voip/HomeActivity;)Lcom/viber/voip/widget/MessageBar;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/ad;->a:Lcom/viber/voip/ac;

    iget-object v1, v1, Lcom/viber/voip/ac;->a:Lcom/viber/voip/HomeActivity;

    const v2, 0x7f0c05ec

    invoke-virtual {v1, v2}, Lcom/viber/voip/HomeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/ad;->a:Lcom/viber/voip/ac;

    iget-object v2, v2, Lcom/viber/voip/ac;->a:Lcom/viber/voip/HomeActivity;

    const v3, 0x7f0c05ed

    invoke-virtual {v2, v3}, Lcom/viber/voip/HomeActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f020172

    const/4 v4, 0x0

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/viber/voip/widget/MessageBar;->a(Ljava/lang/String;Ljava/lang/String;IIZZ)V

    .line 287
    return-void
.end method
