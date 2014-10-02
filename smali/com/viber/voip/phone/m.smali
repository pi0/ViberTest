.class Lcom/viber/voip/phone/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/phone/i;


# direct methods
.method private constructor <init>(Lcom/viber/voip/phone/i;)V
    .locals 0
    .parameter

    .prologue
    .line 266
    iput-object p1, p0, Lcom/viber/voip/phone/m;->a:Lcom/viber/voip/phone/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/viber/voip/phone/i;Lcom/viber/voip/phone/j;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 266
    invoke-direct {p0, p1}, Lcom/viber/voip/phone/m;-><init>(Lcom/viber/voip/phone/i;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 283
    sget-object v0, Lcom/viber/voip/dk;->a:Lcom/viber/voip/dk;

    invoke-static {v0}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 284
    return-void
.end method

.method public run()V
    .locals 3

    .prologue
    .line 269
    iget-object v0, p0, Lcom/viber/voip/phone/m;->a:Lcom/viber/voip/phone/i;

    invoke-static {v0}, Lcom/viber/voip/phone/i;->i(Lcom/viber/voip/phone/i;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 270
    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/phone/m;->a:Lcom/viber/voip/phone/i;

    invoke-static {v0}, Lcom/viber/voip/phone/i;->j(Lcom/viber/voip/phone/i;)Landroid/app/ActivityManager;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 271
    const-class v2, Lcom/viber/voip/phone/PhoneActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-class v2, Lcom/viber/voip/phone/PhoneFragmentActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "com.viber.voip.phone.PhoneActivityFromBackground"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 274
    const-class v2, Lcom/viber/voip/phone/VideoCallActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/viber/voip/phone/m;->a:Lcom/viber/voip/phone/i;

    invoke-static {v0}, Lcom/viber/voip/phone/i;->k(Lcom/viber/voip/phone/i;)V

    .line 277
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/phone/m;->a:Lcom/viber/voip/phone/i;

    invoke-static {v0}, Lcom/viber/voip/phone/i;->l(Lcom/viber/voip/phone/i;)Lcom/viber/voip/g/a;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/viber/voip/g/a;->a(Z)V

    .line 279
    :cond_1
    monitor-exit v1

    .line 280
    return-void

    .line 279
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
