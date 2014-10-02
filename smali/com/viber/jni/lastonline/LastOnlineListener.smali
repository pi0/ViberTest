.class public Lcom/viber/jni/lastonline/LastOnlineListener;
.super Lcom/viber/jni/controller/ControllerListener;
.source "SourceFile"

# interfaces
.implements Lcom/viber/jni/lastonline/LastOnlineDelegate;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/viber/jni/controller/ControllerListener",
        "<",
        "Lcom/viber/jni/lastonline/LastOnlineDelegate;",
        ">;",
        "Lcom/viber/jni/lastonline/LastOnlineDelegate;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LastOnlineListener"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/viber/jni/controller/ControllerListener;-><init>()V

    return-void
.end method

.method private logout(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 46
    const/4 v0, 0x4

    const-string/jumbo v1, "LastOnlineListener"

    invoke-static {v0, v1, p1}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 47
    return-void
.end method


# virtual methods
.method public onLastOnline([Lcom/viber/jni/OnlineContactInfo;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onLastOnline onlineContactInfo:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " seq:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/jni/lastonline/LastOnlineListener;->logout(Ljava/lang/String;)V

    .line 21
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/viber/voip/ViberApplication;->setCachedOnlineContactInfo([Lcom/viber/jni/OnlineContactInfo;)V

    .line 23
    new-instance v0, Lcom/viber/jni/lastonline/LastOnlineListener$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/viber/jni/lastonline/LastOnlineListener$1;-><init>(Lcom/viber/jni/lastonline/LastOnlineListener;[Lcom/viber/jni/OnlineContactInfo;I)V

    invoke-virtual {p0, v0}, Lcom/viber/jni/lastonline/LastOnlineListener;->notifyListeners(Lcom/viber/jni/controller/ControllerListener$ControllerListenerAction;)V

    .line 30
    return-void
.end method

.method public onLastOnlineLocal([Lcom/viber/jni/OnlineContactInfo;I)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onLastOnlineLocal onlineContactInfo:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " seq:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/jni/lastonline/LastOnlineListener;->logout(Ljava/lang/String;)V

    .line 35
    new-instance v0, Lcom/viber/jni/lastonline/LastOnlineListener$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/viber/jni/lastonline/LastOnlineListener$2;-><init>(Lcom/viber/jni/lastonline/LastOnlineListener;[Lcom/viber/jni/OnlineContactInfo;I)V

    invoke-virtual {p0, v0}, Lcom/viber/jni/lastonline/LastOnlineListener;->notifyListeners(Lcom/viber/jni/controller/ControllerListener$ControllerListenerAction;)V

    .line 42
    const/4 v0, 0x1

    return v0
.end method
