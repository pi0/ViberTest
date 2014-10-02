.class Lcom/viber/voip/dr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/c/f;


# instance fields
.field final synthetic a:Lcom/viber/voip/ViberApplication;


# direct methods
.method constructor <init>(Lcom/viber/voip/ViberApplication;)V
    .locals 0
    .parameter

    .prologue
    .line 1858
    iput-object p1, p0, Lcom/viber/voip/dr;->a:Lcom/viber/voip/ViberApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDexLoaded()V
    .locals 2

    .prologue
    .line 1861
    iget-object v0, p0, Lcom/viber/voip/dr;->a:Lcom/viber/voip/ViberApplication;

    invoke-static {}, Lcom/viber/voip/ViberEnv;->newCrashlyticsHelper()Lcom/viber/dexshared/CrashlyticsHelper;

    move-result-object v1

    #setter for: Lcom/viber/voip/ViberApplication;->crashlytics:Lcom/viber/dexshared/CrashlyticsHelper;
    invoke-static {v0, v1}, Lcom/viber/voip/ViberApplication;->access$402(Lcom/viber/voip/ViberApplication;Lcom/viber/dexshared/CrashlyticsHelper;)Lcom/viber/dexshared/CrashlyticsHelper;

    .line 1862
    iget-object v0, p0, Lcom/viber/voip/dr;->a:Lcom/viber/voip/ViberApplication;

    #getter for: Lcom/viber/voip/ViberApplication;->crashlytics:Lcom/viber/dexshared/CrashlyticsHelper;
    invoke-static {v0}, Lcom/viber/voip/ViberApplication;->access$400(Lcom/viber/voip/ViberApplication;)Lcom/viber/dexshared/CrashlyticsHelper;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/viber/dexshared/CrashlyticsHelper;->setDebug(Z)V

    .line 1863
    iget-object v0, p0, Lcom/viber/voip/dr;->a:Lcom/viber/voip/ViberApplication;

    #getter for: Lcom/viber/voip/ViberApplication;->crashlytics:Lcom/viber/dexshared/CrashlyticsHelper;
    invoke-static {v0}, Lcom/viber/voip/ViberApplication;->access$400(Lcom/viber/voip/ViberApplication;)Lcom/viber/dexshared/CrashlyticsHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/dr;->a:Lcom/viber/voip/ViberApplication;

    invoke-interface {v0, v1}, Lcom/viber/dexshared/CrashlyticsHelper;->start(Landroid/content/Context;)V

    .line 1864
    return-void
.end method
