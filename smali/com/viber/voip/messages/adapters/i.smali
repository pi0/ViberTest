.class Lcom/viber/voip/messages/adapters/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/messages/ui/view/i;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/ui/view/ViewPagerWithPagingEnable;

.field final synthetic b:Lcom/viber/voip/messages/adapters/h;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/adapters/h;Lcom/viber/voip/messages/ui/view/ViewPagerWithPagingEnable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, Lcom/viber/voip/messages/adapters/i;->b:Lcom/viber/voip/messages/adapters/h;

    iput-object p2, p0, Lcom/viber/voip/messages/adapters/i;->a:Lcom/viber/voip/messages/ui/view/ViewPagerWithPagingEnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/i;->b:Lcom/viber/voip/messages/adapters/h;

    invoke-static {v0}, Lcom/viber/voip/messages/adapters/h;->a(Lcom/viber/voip/messages/adapters/h;)Lcom/viber/voip/as;

    move-result-object v0

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/as;->a(FF)V

    .line 66
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/i;->a:Lcom/viber/voip/messages/ui/view/ViewPagerWithPagingEnable;

    new-instance v1, Lcom/viber/voip/messages/adapters/j;

    invoke-direct {v1, p0}, Lcom/viber/voip/messages/adapters/j;-><init>(Lcom/viber/voip/messages/adapters/i;)V

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/ui/view/ViewPagerWithPagingEnable;->post(Ljava/lang/Runnable;)Z

    .line 72
    return-void
.end method
