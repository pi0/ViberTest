.class final Lcom/facebook/Settings$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$applicationContext:Landroid/content/Context;

.field final synthetic val$applicationId:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 222
    iput-object p1, p0, Lcom/facebook/Settings$2;->val$applicationContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/facebook/Settings$2;->val$applicationId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 225
    iget-object v0, p0, Lcom/facebook/Settings$2;->val$applicationContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/facebook/Settings$2;->val$applicationId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/facebook/Settings;->publishInstallAndWait(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    const/4 v0, 0x3

    const-string/jumbo v1, "Settings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "com.facebook.Settings.publishInstallAsync app id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/Settings$2;->val$applicationId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 228
    :cond_0
    return-void
.end method
