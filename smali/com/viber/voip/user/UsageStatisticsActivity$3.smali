.class Lcom/viber/voip/user/UsageStatisticsActivity$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/viber/voip/user/UsageStatisticsActivity;

.field final synthetic val$activity:Landroid/preference/PreferenceActivity;


# direct methods
.method constructor <init>(Lcom/viber/voip/user/UsageStatisticsActivity;Landroid/preference/PreferenceActivity;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 91
    iput-object p1, p0, Lcom/viber/voip/user/UsageStatisticsActivity$3;->this$0:Lcom/viber/voip/user/UsageStatisticsActivity;

    iput-object p2, p0, Lcom/viber/voip/user/UsageStatisticsActivity$3;->val$activity:Landroid/preference/PreferenceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 94
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 95
    iget-object v0, p0, Lcom/viber/voip/user/UsageStatisticsActivity$3;->val$activity:Landroid/preference/PreferenceActivity;

    invoke-static {v0}, Lcom/viber/voip/user/StatisticsUtil;->resetUsageStatistic(Landroid/content/Context;)V

    .line 96
    iget-object v0, p0, Lcom/viber/voip/user/UsageStatisticsActivity$3;->this$0:Lcom/viber/voip/user/UsageStatisticsActivity;

    iget-object v1, p0, Lcom/viber/voip/user/UsageStatisticsActivity$3;->val$activity:Landroid/preference/PreferenceActivity;

    iget-object v2, p0, Lcom/viber/voip/user/UsageStatisticsActivity$3;->val$activity:Landroid/preference/PreferenceActivity;

    invoke-virtual {v2}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    #calls: Lcom/viber/voip/user/UsageStatisticsActivity;->updateStatistics(Landroid/content/Context;Landroid/preference/PreferenceScreen;)V
    invoke-static {v0, v1, v2}, Lcom/viber/voip/user/UsageStatisticsActivity;->access$100(Lcom/viber/voip/user/UsageStatisticsActivity;Landroid/content/Context;Landroid/preference/PreferenceScreen;)V

    .line 97
    return-void
.end method
