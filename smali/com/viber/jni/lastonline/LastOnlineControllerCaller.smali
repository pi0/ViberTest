.class public Lcom/viber/jni/lastonline/LastOnlineControllerCaller;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/jni/lastonline/LastOnlineController;


# static fields
.field private static final TAG:Ljava/lang/String; = "LastOnlineControllerCaller"


# instance fields
.field private lastOnlineRequest:Lcom/viber/voip/util/bg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/viber/voip/util/bg",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mLastOnlineListener:Lcom/viber/jni/lastonline/LastOnlineListener;

.field private mPhoneController:Lcom/viber/jni/PhoneControllerHelper;


# direct methods
.method public constructor <init>(Lcom/viber/jni/PhoneControllerHelper;Lcom/viber/jni/lastonline/LastOnlineListener;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Lcom/viber/voip/util/bg;

    invoke-direct {v0}, Lcom/viber/voip/util/bg;-><init>()V

    iput-object v0, p0, Lcom/viber/jni/lastonline/LastOnlineControllerCaller;->lastOnlineRequest:Lcom/viber/voip/util/bg;

    .line 24
    iput-object p1, p0, Lcom/viber/jni/lastonline/LastOnlineControllerCaller;->mPhoneController:Lcom/viber/jni/PhoneControllerHelper;

    .line 25
    iput-object p2, p0, Lcom/viber/jni/lastonline/LastOnlineControllerCaller;->mLastOnlineListener:Lcom/viber/jni/lastonline/LastOnlineListener;

    .line 26
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 45
    const/4 v0, 0x3

    const-string/jumbo v1, "LastOnlineControllerCaller"

    invoke-static {v0, v1, p1}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 46
    return-void
.end method


# virtual methods
.method public handleGetLastOnline([Ljava/lang/String;IIJ)Z
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 31
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/viber/voip/ViberApplication;->getCachedOnlineContactInfo([Ljava/lang/String;)[Lcom/viber/jni/OnlineContactInfo;

    move-result-object v0

    .line 32
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    array-length v1, v0

    array-length v2, p1

    if-ne v1, v2, :cond_0

    .line 34
    iget-object v1, p0, Lcom/viber/jni/lastonline/LastOnlineControllerCaller;->mLastOnlineListener:Lcom/viber/jni/lastonline/LastOnlineListener;

    invoke-virtual {v1, v0, p2}, Lcom/viber/jni/lastonline/LastOnlineListener;->onLastOnlineLocal([Lcom/viber/jni/OnlineContactInfo;I)Z

    move-result v0

    .line 40
    :goto_0
    return v0

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/viber/jni/lastonline/LastOnlineControllerCaller;->lastOnlineRequest:Lcom/viber/voip/util/bg;

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/util/bg;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/util/ft;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 36
    iget-object v0, p0, Lcom/viber/jni/lastonline/LastOnlineControllerCaller;->lastOnlineRequest:Lcom/viber/voip/util/bg;

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/util/bg;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    iget-object v0, p0, Lcom/viber/jni/lastonline/LastOnlineControllerCaller;->mPhoneController:Lcom/viber/jni/PhoneControllerHelper;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/viber/jni/PhoneControllerHelper;->handleGetLastOnline([Ljava/lang/String;IIJ)Z

    move-result v0

    goto :goto_0

    .line 39
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "handleGetLastOnline number:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " - to much requests ignore!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/jni/lastonline/LastOnlineControllerCaller;->log(Ljava/lang/String;)V

    .line 40
    const/4 v0, 0x0

    goto :goto_0
.end method
