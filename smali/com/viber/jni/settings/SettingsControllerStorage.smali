.class public Lcom/viber/jni/settings/SettingsControllerStorage;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/jni/connection/ConnectionDelegate;
.implements Lcom/viber/jni/settings/SettingsController;
.implements Lcom/viber/jni/settings/SettingsControllerDelegate;


# static fields
.field private static final TAG:Ljava/lang/String; = "SettingsControllerStorage"


# instance fields
.field private mController:Lcom/viber/jni/settings/SettingsController;

.field private mStorage:Lcom/viber/voip/settings/l;


# direct methods
.method public constructor <init>(Lcom/viber/jni/settings/SettingsController;Lcom/viber/voip/settings/l;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/viber/jni/settings/SettingsControllerStorage;->mController:Lcom/viber/jni/settings/SettingsController;

    .line 30
    iput-object p2, p0, Lcom/viber/jni/settings/SettingsControllerStorage;->mStorage:Lcom/viber/voip/settings/l;

    .line 31
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 96
    const/4 v0, 0x3

    const-string/jumbo v1, "SettingsControllerStorage"

    invoke-static {v0, v1, p1}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 97
    return-void
.end method


# virtual methods
.method public handleChangeLastOnlineSettings(I)Z
    .locals 2
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/viber/jni/settings/SettingsControllerStorage;->mStorage:Lcom/viber/voip/settings/l;

    const-string/jumbo v1, "last_online_dirty"

    invoke-interface {v0, v1, p1}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;I)Lcom/viber/voip/settings/l;

    .line 61
    iget-object v0, p0, Lcom/viber/jni/settings/SettingsControllerStorage;->mController:Lcom/viber/jni/settings/SettingsController;

    invoke-interface {v0, p1}, Lcom/viber/jni/settings/SettingsController;->handleChangeLastOnlineSettings(I)Z

    move-result v0

    return v0
.end method

.method public handleChangeReadNotificationsSettings(I)Z
    .locals 2
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Lcom/viber/jni/settings/SettingsControllerStorage;->mStorage:Lcom/viber/voip/settings/l;

    const-string/jumbo v1, "read_state_dirty"

    invoke-interface {v0, v1, p1}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;I)Lcom/viber/voip/settings/l;

    .line 70
    iget-object v0, p0, Lcom/viber/jni/settings/SettingsControllerStorage;->mController:Lcom/viber/jni/settings/SettingsController;

    invoke-interface {v0, p1}, Lcom/viber/jni/settings/SettingsController;->handleChangeReadNotificationsSettings(I)Z

    move-result v0

    return v0
.end method

.method public onChangeLastOnlineSettingsReply(II)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onReply LAST_ONLINE: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/jni/settings/SettingsControllerStorage;->log(Ljava/lang/String;)V

    .line 39
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/viber/jni/settings/SettingsControllerStorage;->mStorage:Lcom/viber/voip/settings/l;

    const-string/jumbo v1, "last_online_dirty"

    invoke-interface {v0, v1}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;)Lcom/viber/voip/settings/l;

    .line 42
    :cond_0
    return-void
.end method

.method public onChangeReadNotificationsSettingsReply(II)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onReply READ_STATE: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/jni/settings/SettingsControllerStorage;->log(Ljava/lang/String;)V

    .line 50
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/viber/jni/settings/SettingsControllerStorage;->mStorage:Lcom/viber/voip/settings/l;

    const-string/jumbo v1, "read_state_dirty"

    invoke-interface {v0, v1}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;)Lcom/viber/voip/settings/l;

    .line 53
    :cond_0
    return-void
.end method

.method public onConnect()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 75
    iget-object v0, p0, Lcom/viber/jni/settings/SettingsControllerStorage;->mStorage:Lcom/viber/voip/settings/l;

    const-string/jumbo v3, "last_online_dirty"

    invoke-interface {v0, v3}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    iget-object v3, p0, Lcom/viber/jni/settings/SettingsControllerStorage;->mStorage:Lcom/viber/voip/settings/l;

    const-string/jumbo v4, "last_online_dirty"

    invoke-static {}, Lcom/viber/voip/settings/j;->Z()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    invoke-interface {v3, v4, v0}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;I)I

    move-result v0

    .line 78
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onConnect LAST_ONLINE: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/viber/jni/settings/SettingsControllerStorage;->log(Ljava/lang/String;)V

    .line 79
    iget-object v3, p0, Lcom/viber/jni/settings/SettingsControllerStorage;->mController:Lcom/viber/jni/settings/SettingsController;

    invoke-interface {v3, v0}, Lcom/viber/jni/settings/SettingsController;->handleChangeLastOnlineSettings(I)Z

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/viber/jni/settings/SettingsControllerStorage;->mStorage:Lcom/viber/voip/settings/l;

    const-string/jumbo v3, "read_state_dirty"

    invoke-interface {v0, v3}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 83
    iget-object v0, p0, Lcom/viber/jni/settings/SettingsControllerStorage;->mStorage:Lcom/viber/voip/settings/l;

    const-string/jumbo v3, "read_state_dirty"

    invoke-static {}, Lcom/viber/voip/settings/j;->ab()Z

    move-result v4

    if-eqz v4, :cond_3

    :goto_1
    invoke-interface {v0, v3, v1}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;I)I

    move-result v0

    .line 85
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onConnect READ_STATE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/viber/jni/settings/SettingsControllerStorage;->log(Ljava/lang/String;)V

    .line 86
    iget-object v1, p0, Lcom/viber/jni/settings/SettingsControllerStorage;->mController:Lcom/viber/jni/settings/SettingsController;

    invoke-interface {v1, v0}, Lcom/viber/jni/settings/SettingsController;->handleChangeReadNotificationsSettings(I)Z

    .line 88
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 76
    goto :goto_0

    :cond_3
    move v1, v2

    .line 83
    goto :goto_1
.end method

.method public onConnectionStateChange(I)V
    .locals 0
    .parameter

    .prologue
    .line 93
    return-void
.end method
