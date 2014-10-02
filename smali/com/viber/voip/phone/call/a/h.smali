.class Lcom/viber/voip/phone/call/a/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/phone/call/a/f;

.field private b:Lcom/viber/voip/util/fr;


# direct methods
.method private constructor <init>(Lcom/viber/voip/phone/call/a/f;)V
    .locals 4
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Lcom/viber/voip/phone/call/a/h;->a:Lcom/viber/voip/phone/call/a/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    new-instance v0, Lcom/viber/voip/util/fr;

    sget-object v1, Lcom/viber/voip/dk;->f:Lcom/viber/voip/dk;

    invoke-static {v1}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-direct {v0, v1, p0, v2, v3}, Lcom/viber/voip/util/fr;-><init>(Landroid/os/Handler;Ljava/lang/Runnable;J)V

    iput-object v0, p0, Lcom/viber/voip/phone/call/a/h;->b:Lcom/viber/voip/util/fr;

    return-void
.end method

.method synthetic constructor <init>(Lcom/viber/voip/phone/call/a/f;Lcom/viber/voip/phone/call/a/g;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/viber/voip/phone/call/a/h;-><init>(Lcom/viber/voip/phone/call/a/f;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/viber/voip/phone/call/a/h;->b:Lcom/viber/voip/util/fr;

    invoke-virtual {v0}, Lcom/viber/voip/util/fr;->a()V

    .line 110
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/viber/voip/phone/call/a/h;->b:Lcom/viber/voip/util/fr;

    invoke-virtual {v0}, Lcom/viber/voip/util/fr;->b()V

    .line 114
    return-void
.end method

.method public c()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 117
    .line 118
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getActivityManager()Landroid/app/ActivityManager;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    .line 119
    if-eqz v0, :cond_0

    .line 120
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 122
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 123
    if-eqz v0, :cond_0

    .line 124
    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 125
    const-class v1, Lcom/viber/voip/phone/PhoneActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 129
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public run()V
    .locals 1

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/viber/voip/phone/call/a/h;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/viber/voip/phone/call/a/h;->a:Lcom/viber/voip/phone/call/a/f;

    invoke-static {v0}, Lcom/viber/voip/phone/call/a/f;->a(Lcom/viber/voip/phone/call/a/f;)V

    .line 106
    :cond_0
    return-void
.end method
