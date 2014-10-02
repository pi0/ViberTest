.class public Lcom/viber/voip/user/UserDataFileKeeper;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 24
    invoke-static {p0}, Lcom/viber/voip/user/UserDataFileKeeper;->log(Ljava/lang/String;)V

    return-void
.end method

.method public static clearUserInfoDataInFile()V
    .locals 3

    .prologue
    .line 107
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/viber/voip/w;->n:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    .line 108
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "clearUserInfoDataInFile result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/user/UserDataFileKeeper;->log(Ljava/lang/String;)V

    .line 109
    return-void
.end method

.method public static getJSONWithUserData(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 112
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 113
    const-string/jumbo v1, "canonized_number"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 114
    const-string/jumbo v1, "user_name"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 115
    const-string/jumbo v1, "photo_uri"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 116
    const-string/jumbo v1, "download_id"

    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 117
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 28
    return-void
.end method

.method public static obtainLocalUserInfo(Lcom/viber/voip/user/UserDataFileKeeper$RecoverReply;)V
    .locals 2
    .parameter

    .prologue
    .line 66
    sget-object v0, Lcom/viber/voip/dk;->h:Lcom/viber/voip/dk;

    invoke-static {v0}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/user/UserDataFileKeeper$2;

    invoke-direct {v1, p0}, Lcom/viber/voip/user/UserDataFileKeeper$2;-><init>(Lcom/viber/voip/user/UserDataFileKeeper$RecoverReply;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 104
    return-void
.end method

.method public static parseUserData(Ljava/lang/String;Lcom/viber/voip/user/UserDataFileKeeper$RecoverReply;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "parseUserData jsonString = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/user/UserDataFileKeeper;->log(Ljava/lang/String;)V

    .line 122
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 123
    const-string/jumbo v0, "canonized_number"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 124
    const-string/jumbo v0, "user_name"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 125
    const-string/jumbo v0, "photo_uri"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "photo_uri"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 126
    :goto_0
    const-string/jumbo v4, "download_id"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string/jumbo v4, "download_id"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 127
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onRecoverReply number = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", name = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", uriStr = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", downloadId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/viber/voip/user/UserDataFileKeeper;->log(Ljava/lang/String;)V

    .line 128
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v0, 0x0

    :goto_2
    invoke-interface {p1, v2, v3, v0, v1}, Lcom/viber/voip/user/UserDataFileKeeper$RecoverReply;->onRecoverReply(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    .line 129
    return-void

    .line 125
    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0

    .line 126
    :cond_1
    const-string/jumbo v1, ""

    goto :goto_1

    .line 128
    :cond_2
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_2
.end method

.method public static saveUserInfoToFile(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 37
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/viber/voip/user/UserDataFileKeeper;->saveUserInfoToFile(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 38
    return-void
.end method

.method public static saveUserInfoToFile(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 41
    sget-object v0, Lcom/viber/voip/dk;->h:Lcom/viber/voip/dk;

    invoke-static {v0}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v6

    new-instance v0, Lcom/viber/voip/user/UserDataFileKeeper$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/user/UserDataFileKeeper$1;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 63
    return-void
.end method
