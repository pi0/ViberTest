.class Lcom/viber/voip/user/UsageStatisticsActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/viber/voip/user/UsageStatisticsActivity;


# direct methods
.method constructor <init>(Lcom/viber/voip/user/UsageStatisticsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lcom/viber/voip/user/UsageStatisticsActivity$1;->this$0:Lcom/viber/voip/user/UsageStatisticsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/viber/voip/user/UsageStatisticsActivity$1;->this$0:Lcom/viber/voip/user/UsageStatisticsActivity;

    iget-object v1, p0, Lcom/viber/voip/user/UsageStatisticsActivity$1;->this$0:Lcom/viber/voip/user/UsageStatisticsActivity;

    #calls: Lcom/viber/voip/user/UsageStatisticsActivity;->showResetDialog(Landroid/preference/PreferenceActivity;)V
    invoke-static {v0, v1}, Lcom/viber/voip/user/UsageStatisticsActivity;->access$000(Lcom/viber/voip/user/UsageStatisticsActivity;Landroid/preference/PreferenceActivity;)V

    .line 63
    return-void
.end method
