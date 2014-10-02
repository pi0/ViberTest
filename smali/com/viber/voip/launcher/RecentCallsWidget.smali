.class public Lcom/viber/voip/launcher/RecentCallsWidget;
.super Landroid/appwidget/AppWidgetProvider;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Context;II)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateWidgets callCount:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",messagesCount:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/launcher/RecentCallsWidget;->a(Ljava/lang/String;)V

    .line 152
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/launcher/RecentCallsWidget;Landroid/content/Context;II)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcom/viber/voip/launcher/RecentCallsWidget;->a(Landroid/content/Context;II)V

    return-void
.end method

.method static synthetic a(Lcom/viber/voip/launcher/RecentCallsWidget;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/viber/voip/launcher/RecentCallsWidget;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 155
    const/4 v0, 0x3

    const-string/jumbo v1, "RecentCallsWidget"

    invoke-static {v0, v1, p1}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 156
    return-void
.end method


# virtual methods
.method public onDeleted(Landroid/content/Context;[I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 77
    const-string/jumbo v0, "onDeleted"

    invoke-direct {p0, v0}, Lcom/viber/voip/launcher/RecentCallsWidget;->a(Ljava/lang/String;)V

    .line 78
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onDeleted(Landroid/content/Context;[I)V

    .line 79
    return-void
.end method

.method public onDisabled(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    .line 66
    const-string/jumbo v0, "onDisabled"

    invoke-direct {p0, v0}, Lcom/viber/voip/launcher/RecentCallsWidget;->a(Ljava/lang/String;)V

    .line 67
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetProvider;->onDisabled(Landroid/content/Context;)V

    .line 68
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 69
    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.viber.voip"

    const-string/jumbo v3, ".RecentCallsWidget"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 73
    return-void
.end method

.method public onEnabled(Landroid/content/Context;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 34
    const-string/jumbo v0, "onEnabled"

    invoke-direct {p0, v0}, Lcom/viber/voip/launcher/RecentCallsWidget;->a(Ljava/lang/String;)V

    .line 35
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetProvider;->onEnabled(Landroid/content/Context;)V

    .line 36
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 37
    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.viber.voip"

    const-string/jumbo v3, ".RecentCallsWidget"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v4, v4}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 41
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 83
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 84
    const-string/jumbo v0, "com.viber.voip.action.UPDATE_WIDGETS"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    sget-object v0, Lcom/viber/voip/dk;->g:Lcom/viber/voip/dk;

    invoke-static {v0}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/launcher/c;

    invoke-direct {v1, p0, p2, p1}, Lcom/viber/voip/launcher/c;-><init>(Lcom/viber/voip/launcher/RecentCallsWidget;Landroid/content/Intent;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 102
    :cond_0
    return-void
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 45
    const-string/jumbo v0, "onUpdate"

    invoke-direct {p0, v0}, Lcom/viber/voip/launcher/RecentCallsWidget;->a(Ljava/lang/String;)V

    .line 46
    invoke-super {p0, p1, p2, p3}, Landroid/appwidget/AppWidgetProvider;->onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    .line 62
    return-void
.end method
