.class Lcom/viber/voip/dv;
.super Lcom/viber/voip/process/c;
.source "SourceFile"


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1915
    const-string/jumbo v0, "is_on_foreground"

    sput-object v0, Lcom/viber/voip/dv;->a:Ljava/lang/String;

    .line 1916
    const-string/jumbo v0, "class_name"

    sput-object v0, Lcom/viber/voip/dv;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1919
    invoke-direct {p0}, Lcom/viber/voip/process/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ZLjava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1922
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1923
    sget-object v1, Lcom/viber/voip/dv;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1924
    sget-object v1, Lcom/viber/voip/dv;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1925
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v1

    const-class v2, Lcom/viber/voip/dv;

    invoke-virtual {p0, v1, v2, v0}, Lcom/viber/voip/dv;->execute(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 1926
    return-void
.end method

.method public doInTargetProcess(Landroid/os/Bundle;Lcom/viber/voip/process/b;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1930
    sget-object v0, Lcom/viber/voip/dv;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 1931
    sget-object v1, Lcom/viber/voip/dv;->b:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1932
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v2

    #calls: Lcom/viber/voip/ViberApplication;->doNotifyActivityOnForeground(ZLjava/lang/String;)V
    invoke-static {v2, v0, v1}, Lcom/viber/voip/ViberApplication;->access$500(Lcom/viber/voip/ViberApplication;ZLjava/lang/String;)V

    .line 1933
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Lcom/viber/voip/process/b;->a(Landroid/os/Bundle;)V

    .line 1934
    return-void
.end method

.method public processResult(Landroid/os/Bundle;)V
    .locals 0
    .parameter

    .prologue
    .line 1938
    return-void
.end method
