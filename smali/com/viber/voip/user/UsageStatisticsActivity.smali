.class public Lcom/viber/voip/user/UsageStatisticsActivity;
.super Lcom/viber/voip/app/ViberPreferenceActivity;
.source "SourceFile"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = null

.field private static final PREF_3G_DATA:Ljava/lang/String; = "3g_data"

.field private static final PREF_DATA_STATISTIC:Ljava/lang/String; = "data_statistic"

.field private static final PREF_RECEIVED_MSG:Ljava/lang/String; = "msg_received"

.field private static final PREF_SENT_MSG:Ljava/lang/String; = "msg_sent"

.field private static final PREF_WIFI_DATA:Ljava/lang/String; = "wifi_data"

.field private static final SUMMARY_COLOR:Ljava/lang/String; = "#017dc5"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/viber/voip/user/UsageStatisticsActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/user/UsageStatisticsActivity;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/viber/voip/app/ViberPreferenceActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/viber/voip/user/UsageStatisticsActivity;Landroid/preference/PreferenceActivity;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/viber/voip/user/UsageStatisticsActivity;->showResetDialog(Landroid/preference/PreferenceActivity;)V

    return-void
.end method

.method static synthetic access$100(Lcom/viber/voip/user/UsageStatisticsActivity;Landroid/content/Context;Landroid/preference/PreferenceScreen;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/viber/voip/user/UsageStatisticsActivity;->updateStatistics(Landroid/content/Context;Landroid/preference/PreferenceScreen;)V

    return-void
.end method

.method private initViews()V
    .locals 2

    .prologue
    .line 46
    const v0, 0x7f070185

    invoke-virtual {p0, v0}, Lcom/viber/voip/user/UsageStatisticsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 47
    const v1, 0x7f0c04ed

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 57
    const v0, 0x7f07036b

    invoke-virtual {p0, v0}, Lcom/viber/voip/user/UsageStatisticsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 58
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 59
    new-instance v1, Lcom/viber/voip/user/UsageStatisticsActivity$1;

    invoke-direct {v1, p0}, Lcom/viber/voip/user/UsageStatisticsActivity$1;-><init>(Lcom/viber/voip/user/UsageStatisticsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    return-void
.end method

.method private showResetDialog(Landroid/preference/PreferenceActivity;)V
    .locals 3
    .parameter

    .prologue
    .line 90
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c0475

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0476

    new-instance v2, Lcom/viber/voip/user/UsageStatisticsActivity$3;

    invoke-direct {v2, p0, p1}, Lcom/viber/voip/user/UsageStatisticsActivity$3;-><init>(Lcom/viber/voip/user/UsageStatisticsActivity;Landroid/preference/PreferenceActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c02b6

    new-instance v2, Lcom/viber/voip/user/UsageStatisticsActivity$2;

    invoke-direct {v2, p0}, Lcom/viber/voip/user/UsageStatisticsActivity$2;-><init>(Lcom/viber/voip/user/UsageStatisticsActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 105
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 106
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 107
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 108
    return-void
.end method

.method private updateStatistics(Landroid/content/Context;Landroid/preference/PreferenceScreen;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 69
    invoke-static {p1}, Lcom/viber/voip/user/StatisticsUtil;->getViberWifiStatistic(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 70
    invoke-static {p1}, Lcom/viber/voip/user/StatisticsUtil;->getViber3GStatistic(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 71
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 72
    const-string/jumbo v2, "wifi_data"

    invoke-virtual {p2, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "<font color=\"#017dc5\">"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "</font>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 73
    const-string/jumbo v0, "3g_data"

    invoke-virtual {p2, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "<font color=\"#017dc5\">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "</font>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 81
    :cond_0
    :goto_0
    invoke-static {p1}, Lcom/viber/voip/user/StatisticsUtil;->getSentMsgStatisticsCount(Landroid/content/Context;)I

    move-result v0

    .line 82
    const-string/jumbo v1, "msg_sent"

    invoke-virtual {p2, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "<font color=\"#017dc5\">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "</font>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 85
    invoke-static {p1}, Lcom/viber/voip/user/StatisticsUtil;->getRecMsgStatisticsCount(Landroid/content/Context;)I

    move-result v0

    .line 86
    const-string/jumbo v1, "msg_received"

    invoke-virtual {p2, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "<font color=\"#017dc5\">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "</font>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 87
    return-void

    .line 75
    :cond_1
    const-string/jumbo v0, "data_statistic"

    invoke-virtual {p2, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 76
    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {p2, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 38
    invoke-super {p0, p1}, Lcom/viber/voip/app/ViberPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    const v0, 0x7f030107

    invoke-virtual {p0, v0}, Lcom/viber/voip/user/UsageStatisticsActivity;->setContentView(I)V

    .line 40
    const v0, 0x7f050010

    invoke-virtual {p0, v0}, Lcom/viber/voip/user/UsageStatisticsActivity;->addPreferencesFromResource(I)V

    .line 41
    invoke-direct {p0}, Lcom/viber/voip/user/UsageStatisticsActivity;->initViews()V

    .line 42
    invoke-virtual {p0}, Lcom/viber/voip/user/UsageStatisticsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-direct {p0, p0, v0}, Lcom/viber/voip/user/UsageStatisticsActivity;->updateStatistics(Landroid/content/Context;Landroid/preference/PreferenceScreen;)V

    .line 43
    return-void
.end method
