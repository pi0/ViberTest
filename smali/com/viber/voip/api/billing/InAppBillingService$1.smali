.class Lcom/viber/voip/api/billing/InAppBillingService$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/viber/voip/api/billing/InAppBillingService;


# direct methods
.method constructor <init>(Lcom/viber/voip/api/billing/InAppBillingService;)V
    .locals 0
    .parameter

    .prologue
    .line 101
    iput-object p1, p0, Lcom/viber/voip/api/billing/InAppBillingService$1;->this$0:Lcom/viber/voip/api/billing/InAppBillingService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/viber/voip/api/billing/InAppBillingService$1;->this$0:Lcom/viber/voip/api/billing/InAppBillingService;

    #calls: Lcom/viber/voip/api/billing/InAppBillingService;->unbind()V
    invoke-static {v0}, Lcom/viber/voip/api/billing/InAppBillingService;->access$000(Lcom/viber/voip/api/billing/InAppBillingService;)V

    .line 105
    return-void
.end method
